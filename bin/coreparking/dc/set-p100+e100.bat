set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% CPConcurrency 0
%call_powercfg% CPHeadRoom 0

%call_powercfg% CPMinCores 100
%call_powercfg% CPMinCores1 100
%call_powercfg% LatencyHintUnpark 100
%call_powercfg% LatencyHintUnpark1 100

powercfg -SetActive Scheme_Current
