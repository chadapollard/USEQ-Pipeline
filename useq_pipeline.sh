### Paths to necessary files for USEQ Analysis

# Path to base directory where you want your USEQ files to be created. Don't forget to add a "/" at the end as we want the files to be created inside this directory.
base_dir="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Blood_vs_Neurons/Orbital_Frontal_Cortex_vs_Blood/"

# Path to Control Beta values (Make sure it is a .csv file CG's are in the rows and sample names are in the columns)
control_betas="/Volumes/Research_Data/Renew_Diagnostics/Alzheimers_Study/Micro_Array_Data/450k_Data/Neurons/Orbitofrontal_Cortex/control_neuron_betas.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and sample names are in the columns)
treatment_betas="/Volumes/Research_Data/Renew_Diagnostics/Alzheimers_Study/Micro_Array_Data/450k_Data/Whole_Blood/peripheral_blood_betas.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and that CHR and START are in the columns)
illumina_annotation="/Volumes/Research_Data/USEQ_Analyses/Annotation_Files/450k_annotation.csv"

# Path to useq_prep_r.R script (This file can be downloaded from this github link: )
sgr_script="/Volumes/Research_Data/USEQ_Analyses/useq_prep_r.R"

# Path to Sgr2Bar program
Sgr2Bar="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/Sgr2Bar"

# Path to MethylationArrayScanner program
MethylationArrayScanner="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/MethylationArrayScanner"

# Path to EnrichedRegionMaker program
EnrichedRegionMaker="/Volumes/Research_Data/USEQ_Analyses/USeq_9.3.3/Apps/EnrichedRegionMaker"

# Path to Control group names (Must be comma delimited with no spaces)
Control_Samples=GSM2589158_7507875069_R04C01,GSM2589159_7786915003_R02C01,GSM2589160_7786915003_R03C01,GSM2589162_7507875069_R02C02,GSM2589163_7786915003_R04C01,GSM2589164_7507875069_R04C02,GSM2589168_6229068023_R02C01,GSM2589175_7507875069_R03C01,GSM2589181_6229041055_R03C01,GSM2589185_6229041055_R01C02,GSM2589189_6229041055_R05C02,GSM2589191_6190781080_R01C01,GSM2589194_7786915003_R06C02,GSM2589200_7786915111_R03C01,GSM2589204_6190781066_R02C01,GSM2589206_6190781066_R04C01,GSM2589213_6190781066_R05C02,GSM2589218_6229068015_R04C01,GSM2589219_7786915111_R01C02,GSM2589221_6229068015_R01C02,GSM2589223_7786915111_R04C02,GSM2589224_6229068015_R04C02,GSM2589225_7786915111_R05C02,GSM2589227_6190781063_R01C01,GSM2589230_6190781063_R04C01,GSM2589236_6190781063_R04C02,GSM2589237_6190781063_R05C02,GSM2589238_6190781063_R06C02,GSM2589239_6190781062_R01C01

# Path to Testing group names (Must be comma delimited with no spaces)
Testing_Samples=GSM4749846_3999431158_R01C02,GSM4749847_3999431144_R06C01,GSM4749848_3999442091_R05C01,GSM4749849_3999423019_R03C02,GSM4749850_3999431144_R04C02,GSM4749851_3999431158_R03C01,GSM4749852_3999423013_R03C01,GSM4749853_3999423013_R06C02,GSM4749854_3999431134_R03C02,GSM4749855_101103430136_R01C02,GSM4749856_3999431144_R01C01,GSM4749857_3999442091_R03C02,GSM4749858_3999431113_R06C01,GSM4749859_101130760157_R04C02,GSM4749860_3999442091_R04C01,GSM4749861_101103430136_R03C01,GSM4749862_101032560049_R04C02,GSM4749863_101032560017_R04C02,GSM4749864_9989540017_R01C02,GSM4749865_101130760168_R03C02,GSM4749866_101130760168_R05C02,GSM4749867_101103430136_R04C02,GSM4749868_3999423013_R01C02,GSM4749869_3999308179_R04C01,GSM4749870_3999308179_R06C01,GSM4749871_101103430069_R04C02,GSM4749872_3999308179_R01C02,GSM4749873_3999308179_R03C02,GSM4749874_100946200106_R02C01,GSM4749875_100946200104_R02C02,GSM4749876_100946200085_R05C02,GSM4749877_3998426019_R04C02,GSM4749878_101130760168_R01C01,GSM4749879_100946200106_R03C02,GSM4749880_3998426116_R05C01,GSM4749881_100946200104_R05C02,GSM4749882_100946200106_R03C01,GSM4749883_100946200106_R01C02,GSM4749884_100946200104_R04C02,GSM4749885_100946200085_R03C01,GSM4749886_101130760168_R02C02,GSM4749887_100946200085_R04C01,GSM4749888_101032560017_R04C01,GSM4749889_3998426048_R06C02,GSM4749890_3998426115_R02C01,GSM4749891_3998426019_R01C01,GSM4749892_3998426019_R06C02,GSM4749893_3998426116_R03C02,GSM4749894_100946200100_R04C02,GSM4749895_100946200085_R06C01



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
java -jar $MethylationArrayScanner -s ../USEQ_Results_Forward -d $USEQ_Prep -c $Control_Samples -t $Testing_Samples -n

###########
## Creating Output Using Enriched Region Maker App ##
###########
echo ""
echo "**** Creating Forward Output Using Enriched Region Maker App ****"
echo ""

#Creating output using enriched region maker app
java -jar $EnrichedRegionMaker -f ../USEQ_Results_Forward/windowData1000bp0.2MinPse.swi -i 0,1 -s 0.2,10


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