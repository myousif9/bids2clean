#!/bin/bash

gradcorr=$1
synthstrip=$2
fmriprep_in=$3
subj=$4



if [ ! -d "$fmriprep_in" ]
then 
    mkdir $fmriprep_in
    echo "fmriprep_in directory created"
fi

mkdir $fmriprep_in/sub-$subj/
mkdir $fmriprep_in/sub-$subj/anat/
mkdir $fmriprep_in/sub-$subj/func/
mkdir $fmriprep_in/sub-$subj/fmap/
mkdir $fmriprep_in/sub-$subj/perf/

ln -rs $gradcorr/*.json $fmriprep_in
ln -rs $gradcorr/*.tsv $fmriprep_in
ln -rs $gradcorr/sub-$subj/*.tsv $fmriprep_in/sub-$subj/

ln -rs $gradcorr/sub-$subj/anat/* $fmriprep_in/sub-$subj/anat/
ln -rs $gradcorr/sub-$subj/func/* $fmriprep_in/sub-$subj/func/
ln -rs $gradcorr/sub-$subj/fmap/* $fmriprep_in/sub-$subj/func/
ln -rs $gradcorr/sub-$subj/perf/* $fmriprep_in/sub-$subj/func/

ln -rs $synthstrip $fmriprep_in/sub-$subj/anat/

