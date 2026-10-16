set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% CPConcurrency 0
%call_powercfg% CPHeadRoom 100

powercfg -SetActive Scheme_Current
