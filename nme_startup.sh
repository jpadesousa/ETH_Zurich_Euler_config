## Define location of user modules
export MODULEPATH=/cluster/work/nme/software/modules:$MODULEPATH

## Define Variables to quick access NME folders
export WORK=/cluster/work/nme
export PUBLIC=/nfs/nas12.ethz.ch/fs1201/green_groups_nme_public
export LABRADOR=/nfs/green-nme.ethz.ch/data/labrador
export GENOMES=/cluster/work/nme/genomes

## LMOD variables
export LMOD_IGNORE_CACHE=1

## Singularity cache
export SINGULARITY_CACHEDIR=/cluster/work/nme/tmp/.singularity_cache
