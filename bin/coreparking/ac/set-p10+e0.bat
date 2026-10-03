set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% CPConcurrency 0
%call_powercfg% CPHeadRoom 0

%call_powercfg% CPMinCores 0
%call_powercfg% CPMinCores1 10
%call_powercfg% LatencyHintUnpark 0
%call_powercfg% LatencyHintUnpark1 50

powercfg -SetActive Scheme_Current
