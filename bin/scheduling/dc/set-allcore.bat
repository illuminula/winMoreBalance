set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ShortSchedPolicy 0
%call_powercfg% SchedPolicy 0
%call_powercfg% ShortThreadRuntimeThreshold 34000

powercfg -SetActive Scheme_Current
