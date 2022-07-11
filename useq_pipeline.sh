### Paths to necessary files for USEQ Analysis

# Path to base directory where you want your USEQ files to be created. Don't forget to add a "/" at the end as we want the files to be created inside this directory.
base_dir="/Volumes/Research_Data/USEQ_Analyses/Neurons_vs_Glia/"

# Path to Control Beta values (Make sure it is a .csv file CG's are in the rows and sample names are in the columns)
# control_betas="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Low_Income_vs_High_Income_FASZT/under_40k_betas.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and sample names are in the columns)
# treatment_betas="/Volumes/Research_Data/USEQ_Analyses/Completed_Studies/Low_Income_vs_High_Income_FASZT/over_100k_betas.csv"

# Path to Treatment Beta values (Make sure it is a .csv file and that CG's are in the rows and that CHR and START are in the columns)
# illumina_annotation="/Volumes/Research_Data/My_Github/USEQ-Pipeline/Annotation_Files/EPIC_array_annotation.csv"

# Path to useq_prep_r.R script (This file can be downloaded from this github link: )
# sgr_script="/Volumes/Research_Data/My_Github/USEQ-Pipeline/R_Script.R"

# Path to Sgr2Bar program
Sgr2Bar="/Volumes/Research_Data/My_Github/USEQ-Pipeline/USeq_9.3.3/Apps/Sgr2Bar"

# Path to MethylationArrayScanner program
MethylationArrayScanner="/Volumes/Research_Data/My_Github/USEQ-Pipeline/USeq_9.3.3/Apps/MethylationArrayScanner"

# Path to EnrichedRegionMaker program
EnrichedRegionMaker="/Volumes/Research_Data/My_Github/USEQ-Pipeline/USeq_9.3.3/Apps/EnrichedRegionMaker"

# Path to Control group names (Must be comma delimited with no spaces)
Control_Samples=GSM2808885_8918692108_R06C02,GSM2808893_8221932039_R04C01,GSM2808895_8221932039_R06C01,GSM2808897_8221932039_R02C02,GSM2808899_8221932039_R04C02,GSM2808901_8221932039_R06C02,GSM2808903_9297953052_R03C01,GSM2808905_9247377057_R05C02,GSM2808907_9247377057_R06C02,GSM2808909_3998919115_R01C02,GSM2808915_3998919115_R04C02,GSM2808917_3998919115_R05C02,GSM2808919_3998919116_R02C02,GSM2808921_3998919116_R03C02,GSM2808923_3998920130_R01C02,GSM2808925_3998920130_R02C02

# Path to Testing group names (Must be comma delimited with no spaces)
Treatment_Samples=GSM2589156_7786915003_R05C01,GSM2589157_6229068023_R03C02,GSM2589158_7507875069_R04C01,GSM2589159_7786915003_R02C01,GSM2589160_7786915003_R03C01,GSM2589161_7507875069_R01C02,GSM2589162_7507875069_R02C02,GSM2589163_7786915003_R04C01,GSM2589164_7507875069_R04C02,GSM2589165_7507875069_R02C01,GSM2589166_7786915003_R06C01,GSM2589167_7786915003_R01C02,GSM2589168_6229068023_R02C01,GSM2589169_6229068023_R03C01,GSM2589170_6229068023_R04C01,GSM2589171_6229068023_R05C01,GSM2589172_6229068023_R06C01,GSM2589173_7786915003_R02C02,GSM2589174_6229068023_R02C02,GSM2589175_7507875069_R03C01,GSM2589176_6229068023_R04C02,GSM2589177_7786915003_R03C02,GSM2589178_6229068023_R06C02,GSM2589179_6229041055_R01C01,GSM2589180_6229041055_R02C01,GSM2589181_6229041055_R03C01,GSM2589182_6229041055_R04C01,GSM2589183_6229041055_R05C01,GSM2589184_7786915003_R04C02,GSM2589185_6229041055_R01C02,GSM2589186_6229041055_R02C02,GSM2589187_6229041055_R03C02,GSM2589188_6229041055_R04C02,GSM2589189_6229041055_R05C02,GSM2589190_7786915003_R05C02,GSM2589191_6190781080_R01C01,GSM2589192_6190781080_R02C01,GSM2589193_6190781080_R03C01,GSM2589194_7786915003_R06C02,GSM2589195_6190781080_R05C01,GSM2589196_7786915111_R01C01,GSM2589197_6190781080_R01C02,GSM2589198_7786915111_R02C01,GSM2589199_6190781080_R03C02,GSM2589200_7786915111_R03C01,GSM2589201_6190781080_R05C02,GSM2589202_7786915111_R04C01,GSM2589203_6190781066_R01C01,GSM2589204_6190781066_R02C01,GSM2589205_6190781066_R03C01,GSM2589206_6190781066_R04C01,GSM2589207_6190781066_R05C01,GSM2589208_6190781066_R06C01,GSM2589209_6190781066_R01C02,GSM2589210_6190781066_R02C02,GSM2589211_6190781066_R03C02,GSM2589212_6190781066_R04C02,GSM2589213_6190781066_R05C02,GSM2589214_6190781066_R06C02,GSM2589215_7786915111_R05C01,GSM2589216_7786915111_R06C01,GSM2589217_6229068015_R03C01,GSM2589218_6229068015_R04C01,GSM2589219_7786915111_R01C02,GSM2589220_7786915111_R02C02,GSM2589221_6229068015_R01C02,GSM2589222_7786915111_R03C02,GSM2589223_7786915111_R04C02,GSM2589224_6229068015_R04C02,GSM2589225_7786915111_R05C02,GSM2589226_7786915111_R06C02,GSM2589227_6190781063_R01C01,GSM2589228_6190781063_R02C01,GSM2589229_6190781063_R03C01,GSM2589230_6190781063_R04C01,GSM2589231_6190781063_R05C01,GSM2589232_6190781063_R06C01,GSM2589233_6190781063_R01C02,GSM2589234_6190781063_R02C02,GSM2589235_6190781063_R03C02,GSM2589236_6190781063_R04C02,GSM2589237_6190781063_R05C02,GSM2589238_6190781063_R06C02,GSM2589239_6190781062_R01C01,GSM2589240_6190781062_R02C01,GSM2589241_6190781062_R03C01,GSM2589242_6190781062_R04C01,GSM2589243_6190781062_R06C01



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

# Rscript $sgr_script --base_dir $base_dir --control_betas $control_betas --treatment_betas $treatment_betas --illumina_annotation $illumina_annotation --USEQ_Prep $USEQ_Prep

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
java -jar $MethylationArrayScanner -s ../USEQ_Results_Forward -d $USEQ_Prep -c $Control_Samples -t $Treatment_Samples -n

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

java -jar $MethylationArrayScanner -s ../USEQ_Results_Reverse -d $USEQ_Prep -t $Control_Samples -c $Treatment_Samples -n


###########
## Creating Output Using Enriched Region Maker App ##
###########
echo ""
echo "**** Creating Reverse Output Using Enriched Region Maker App ****"
echo ""

#Creating output using enriched region maker app
java -jar $EnrichedRegionMaker -f ../USEQ_Results_Reverse/windowData1000bp0.2MinPse.swi -i 0,1 -s 0.2,10
echo "Finished!"