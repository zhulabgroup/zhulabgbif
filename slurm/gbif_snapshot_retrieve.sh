#!/bin/bash
#SBATCH --job-name=gbif_snapshot_retrieve   # Job name
#SBATCH --account=[]                   # Account name
#SBATCH --partition=largemem                # Partition name
#SBATCH --time=24:00:00                     # Time limit
#SBATCH --tasks-per-node=1                  # Run a single task
#SBATCH --cpus-per-task=1                   # Number of CPU cores per task
#SBATCH --mem=128gb                         # Job memory request
#SBATCH --output=temp/gbif_retrieve_%j.log  # Standard output log with job ID
#SBATCH --error=temp/gbif_retrieve_%j.err   # Standard error log with job ID
#SBATCH --mail-user=[]       # Where to send mail
#SBATCH --mail-type=BEGIN,END               # Mail notifications at the start and end of the job

module load Rgeospatial/4.2.0-2023-04-25
Rscript R/gbif-snapshot.R retrieve
