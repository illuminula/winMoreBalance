set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ShortSchedPolicy 1
%call_powercfg% SchedPolicy 1
%call_powercfg% ShortThreadRuntimeThreshold 34000

powercfg -SetActive Scheme_Current
