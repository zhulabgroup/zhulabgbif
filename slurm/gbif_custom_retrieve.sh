#!/bin/bash
#SBATCH --job-name=gbif_custom            # Job name
#SBATCH --account=[]                   # Account name
#SBATCH --partition=standard                # Partition name
#SBATCH --time=24:00:00                     # Time limit
#SBATCH --tasks-per-node=1                  # Run a single task
#SBATCH --cpus-per-task=1                   # Number of CPU cores per task
#SBATCH --mem=32gb                          # Job memory request
#SBATCH --output=temp/gbif_custom_%j.log  # Standard output log with job ID
#SBATCH --error=temp/ggbif_custom_%j.err   # Standard error log with job ID
#SBATCH --mail-user=[]        # Where to send mail
#SBATCH --mail-type=BEGIN,END               # Mail notifications at the start and end of the job

module load Rgeospatial/4.2.0-2022-08-18
Rscript R/gbif-custom.R
