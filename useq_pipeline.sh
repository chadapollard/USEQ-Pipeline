### Paths to necessary files for USEQ Analysis

# Path to base directory where you want your USEQ files to be created. Don't forget to add a "/" at the end as we want the files to be created inside this directory.
base_dir="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Endometrial_Tissue_vs_Blood/"

# Path to Control Beta values (Make sure it is a .csv file CG's are in the rows and sample names are in the columns)
control_betas="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Endometrial_Tissue_vs_Blood/blood_betas.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and sample names are in the columns)
treatment_betas="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Endometrial_Tissue_vs_Blood/Letourneau_MethylationEPIC_20201007_beta_values.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and that CHR and START are in the columns)
illumina_annotation="/Volumes/Research_Data/USEQ_Analyses/Annotation_Files/EPIC_array_annotation.csv"

# Path to useq_prep_r.R script (This file can be downloaded from this github link: )
sgr_script="/Volumes/Research_Data/USEQ_Analyses/useq_prep_r.R"

# Path to Sgr2Bar program
Sgr2Bar="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/Sgr2Bar"

# Path to MethylationArrayScanner program
MethylationArrayScanner="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/MethylationArrayScanner"

# Path to EnrichedRegionMaker program
EnrichedRegionMaker="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/EnrichedRegionMaker"

# Path to Control group names (Must be comma delimited with no spaces)
Control_Samples=203219670028_R01C01,203219670028_R02C01,203219670028_R03C01,203219670028_R04C01,203219670028_R05C01,203219670028_R06C01,203219670028_R08C01,203219670145_R01C01,203219670145_R02C01,203219670145_R03C01,203219670145_R04C01,203219670145_R05C01,203219670145_R06C01,203219670145_R07C01,203219670145_R08C01,203219670153_R01C01,203219670153_R02C01,203219670153_R04C01,203219670153_R05C01,203219670153_R06C01,203219670153_R07C01,203219670153_R08C01,203219670191_R01C01,203219670191_R02C01,203219670191_R03C01,203219670191_R04C01,203219670191_R05C01,203219670191_R06C01,203219670191_R07C01,203219670191_R08C01,203219670204_R01C01,203219670204_R02C01,203219720030_R01C01,203219720030_R02C01,203219730092_R01C01,203219730092_R02C01,203219730092_R06C01,203219730092_R07C01,203219730092_R08C01,203219750033_R03C01,203219750033_R04C01,203220070080_R01C01,203220070080_R02C01,203220070080_R03C01,203220070080_R04C01,203220070080_R05C01,203220070080_R06C01,203220070080_R08C01,203220070153_R01C01,203220070153_R02C01,203220070153_R03C01,203220070153_R04C01,203225140050_R01C01,203225140050_R02C01,203225140050_R03C01,203225140050_R04C01,203225140050_R06C01,203225140082_R01C01,203225140082_R02C01,203225140082_R03C01,203225140082_R04C01,203225140082_R07C01,203225140082_R08C01,203225140170_R01C01,203225140170_R02C01,203225140170_R03C01,203225140170_R04C01,203225140170_R07C01,203225140170_R08C01,203225140175_R05C01,203225140175_R06C01

# Path to Testing group names (Must be comma delimited with no spaces)
Testing_Samples=204668830012_R01C01,204668830012_R02C01,204668830012_R03C01,204668830012_R04C01,204668830012_R05C01,204668830012_R06C01,204668830012_R07C01,204668830012_R08C01,204848060031_R01C01,204848060031_R02C01,204848060031_R03C01,204848060031_R04C01,204848060031_R05C01,204848060031_R06C01,204848060031_R07C01,204848060031_R08C01,204848060060_R01C01,204848060060_R02C01,204848060060_R03C01,204848060060_R04C01,204848060060_R05C01,204848060060_R06C01,204848060060_R07C01,204848060060_R08C01



###########
## Creating USEQ Directories ##
###########
echo ""
echo "**** Creating USEQ Directories ****"
echo ""

# Change to USEQ_prep directory
cd $base_dir
mkdir USEQ_Prep
mkdir USEQ_Results_Forward
mkdir USEQ_Results_Reverse
USEQ_Prep="${base_dir}/USEQ_Prep/"
cd $USEQ_Prep

###########
## Creating SGR Files ##
###########
echo ""
echo "**** Running R-Script and Creating SGR Files ****"
echo ""

Rscript $sgr_script --base_dir $base_dir --control_betas $control_betas --treatment_betas $treatment_betas --illumina_annotation $illumina_annotation --USEQ_Prep $USEQ_Prep

###########
## Converting SGR Files to Bar Files ##
###########
echo ""
echo "**** Converting SGR Files to Bar Files ****"
echo ""

# Convert .sgr files to .bar files
for d in ./*/ ; do (java -jar $Sgr2Bar -f $USEQ_Prep${d} -v H_Sapiens_Feb_2009); done

###########
## Removing SGR files ##
###########
echo ""
echo "**** Removing SGR files ****"
echo ""

# Remove .sgr files
for d in ./*/ ; do (cd "$d" && rm *.sgr); done


###########
## Removing Leftover Subdirectories ##
###########
echo ""
echo "**** Removing Leftover Subdirectories ****"
echo ""

# Move any file in the sub directory and place it into the working directory
for d in ./*/ ; do (cd "$d" && find . -mindepth 2 -type f -print -exec mv {} . \;); done

# Remove subdirectories
for d in ./*/ ; do (cd "$d" && rm -R -- */); done


###########
## Running Sliding Window Analysis Forward ##
###########
echo ""
echo "**** Running Sliding Window Analysis Forward ****"
echo ""

#Sliding Window Analysis
# java -jar $MethylationArrayScanner -s ../USEQ_Results_Forward -d $USEQ_Prep -c $Control_Samples -t $Testing_Samples -n

###########
## Creating Output Using Enriched Region Maker App ##
###########
echo ""
echo "**** Creating Forward Output Using Enriched Region Maker App ****"
echo ""

#Creating output using enriched region maker app
# java -jar $EnrichedRegionMaker -f ../USEQ_Results_Forward/windowData1000bp0.2MinPse.swi -i 0,1 -s 0.2,10


###########
## Running Sliding Window Analysis Reverse ##
###########
echo ""
echo "**** Running Sliding Window Analysis Reverse ****"
echo ""

java -jar $MethylationArrayScanner -s ../USEQ_Results_Reverse -d $USEQ_Prep -t $Control_Samples -c $Testing_Samples -n


###########
## Creating Output Using Enriched Region Maker App ##
###########
echo ""
echo "**** Creating Reverse Output Using Enriched Region Maker App ****"
echo ""

#Creating output using enriched region maker app
java -jar $EnrichedRegionMaker -f ../USEQ_Results_Reverse/windowData1000bp0.2MinPse.swi -i 0,1 -s 0.2,10
echo "Finished!"