#install_dir=/srv/scratch/annashch/DP_GP_cluster
#DP_GP_cluster.py -i all_differential_genes.dpgp.input.tsv -o dpgp_diff_genes -p png  --plot
DP_GP_cluster.py -i fold_change_cpm_genes.dpgp.input.tsv -o dpgp_diff_genes_fold/ -p pdf  --plot
