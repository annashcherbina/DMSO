#!/bin/bash -e

cd '/srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls'

# SYS command. line 131

 if [[ -f $(which conda) && $(conda env list | grep bds_atac | wc -l) != "0" ]]; then source activate bds_atac; fi;  export PATH=/home/annashch/bds_atac/.:/home/annashch/bds_atac/modules:/home/annashch/bds_atac/utils:${PATH}:/bin:/usr/bin:/usr/local/bin:${HOME}/.bds; set -o pipefail; STARTTIME=$(date +%s); renice -n 0 $$

# SYS command. line 133

 cutadapt -m 5 -e 0.20 -a CTGTCTCTTATA -A CTGTCTCTTATA -o /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep1/H9_Fucci_earlyG1_R2_C1_S35_L005_R1_001.trim.fastq -p /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep1/H9_Fucci_earlyG1_R2_C1_S35_L005_R2_001.trim.fastq /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/H9_Fucci_earlyG1_R2_C1_S35_L005_R1_001.fastq.gz /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/H9_Fucci_earlyG1_R2_C1_S35_L005_R2_001.fastq.gz

# SYS command. line 135

 gzip -f /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep1/H9_Fucci_earlyG1_R2_C1_S35_L005_R1_001.trim.fastq

# SYS command. line 136

 gzip -f /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep1/H9_Fucci_earlyG1_R2_C1_S35_L005_R2_001.trim.fastq

# SYS command. line 138

 TASKTIME=$[$(date +%s)-${STARTTIME}]; if [ ${TASKTIME} -lt 60 ]; then echo "Waiting for $[60-${TASKTIME}] seconds."; sleep $[60-${TASKTIME}]; fi
