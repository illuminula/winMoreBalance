set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ShortSchedPolicy 4
%call_powercfg% SchedPolicy 2
%call_powercfg% ShortThreadRuntimeThreshold 34000

powercfg -SetActive Scheme_Current
