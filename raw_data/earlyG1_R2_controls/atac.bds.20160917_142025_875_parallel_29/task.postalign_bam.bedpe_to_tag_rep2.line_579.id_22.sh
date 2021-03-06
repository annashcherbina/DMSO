#!/bin/bash -e

cd '/srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls'

# SYS command. line 581

 if [[ -f $(which conda) && $(conda env list | grep bds_atac | wc -l) != "0" ]]; then source activate bds_atac; fi;  export PATH=/home/annashch/bds_atac/.:/home/annashch/bds_atac/modules:/home/annashch/bds_atac/utils:${PATH}:/bin:/usr/bin:/usr/local/bin:${HOME}/.bds; set -o pipefail; STARTTIME=$(date +%s); renice -n 0 $$

# SYS command. line 583

 zcat /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.bedpe.gz | awk 'BEGIN{OFS="\t"}{printf "%s\t%s\t%s\tN\t1000\t%s\n%s\t%s\t%s\tN\t1000\t%s\n",$1,$2,$3,$9,$4,$5,$6,$10}' | \
			gzip -c > /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.tagAlign.gz

# SYS command. line 586

 zcat /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.tagAlign.gz | grep -P -v 'chrM' | gzip -c > /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.rm_chr.tmp.gz; mv /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.rm_chr.tmp.gz /srv/gsfs0/projects/kundaje/users/annashch/dmso/earlyG1_R2_controls/out/align/rep2/H9_Fucci_earlyG1_R2_C2_S36_L005_R1_001.trim.PE2SE.nodup.tagAlign.gz

# SYS command. line 588

 TASKTIME=$[$(date +%s)-${STARTTIME}]; if [ ${TASKTIME} -lt 60 ]; then echo "Waiting for $[60-${TASKTIME}] seconds."; sleep $[60-${TASKTIME}]; fi
