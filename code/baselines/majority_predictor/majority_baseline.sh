#!/bin/bash

data_root=../../../data
subfolder=real

task=sns

event_prefix=event
time_prefix=time

echo 'predicting ' $task
echo '============= event =============='
python event_majority_baseline.py $data_root/$subfolder/$task/$event_prefix
echo '============= end of event =============='
echo '============= time =============='
python time_mean_baseline.py $data_root/$subfolder/$task/$time_prefix 0.00001
echo '============= end of time =============='
