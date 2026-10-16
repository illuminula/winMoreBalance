set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% CPConcurrency 99
%call_powercfg% CPHeadRoom 100

powercfg -SetActive Scheme_Current
