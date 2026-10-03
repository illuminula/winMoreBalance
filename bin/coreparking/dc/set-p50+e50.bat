set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% CPConcurrency 0
%call_powercfg% CPHeadRoom 0

%call_powercfg% CPMinCores 50
%call_powercfg% CPMinCores1 50
%call_powercfg% LatencyHintUnpark 50
%call_powercfg% LatencyHintUnpark1 50

powercfg -SetActive Scheme_Current
