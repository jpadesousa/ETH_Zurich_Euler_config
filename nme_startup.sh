## Define location of user modules
export MODULEPATH=/cluster/work/nme/software/modules:$MODULEPATH

## Define variables to quick access NME folders
export WORK=/cluster/work/nme
export PUBLIC=/nfs/nas12.ethz.ch/fs1201/green_groups_nme_public
export LABRADOR=/nfs/green-nme.ethz.ch/data/labrador
export GENOMES=/cluster/work/nme/genomes
export NF_PIPELINES=/cluster/work/nme/software/apps/nextflow/nf_pipelines

## LMOD variables
export LMOD_IGNORE_CACHE=1

## Singularity cache
export SINGULARITY_CACHEDIR=/cluster/work/nme/tmp/.singularity_cache

## Change default startup modules
module purge
module load StdEnv gcc/6.3.0

## Setting default permissions
umask 0007

## Copy NME SeqMonk preferences to the home folder
if [ ! -f $HOME/seqmonk_prefs.txt ]; then ln -s /cluster/work/nme/software/config/seqmonk_prefs.txt $HOME/seqmonk_prefs.txt; fi

## Create R preferences file in the home folder
if [ ! -f $HOME/.Renviron ]; then touch $HOME/.Renviron; fi
grep -qF "http_proxy" .Renviron || echo http_proxy=${http_proxy-'http://proxy.ethz.ch:3128'} >> $HOME/.Renviron
grep -qF "https_proxy" .Renviron || echo https_proxy=${https_proxy-'http://proxy.ethz.ch:3128'} >> $HOME/.Renviron
grep -qF "R_HISTSIZE" .Renviron || echo R_HISTSIZE=100000 >> $HOME/.Renviron
grep -qF "R_LIBS_USER" .Renviron || echo R_LIBS_USER='/cluster/work/nme/software/libraries/R/4.1.3' >> $HOME/.Renviron
