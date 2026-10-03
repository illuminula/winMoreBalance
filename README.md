重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，并实现更多用途  
台式和笔记本通用  

## CPU调频修改
| 预设          | 表现                       | 响应性   | 待机电压 |
| :------------ | :------------------------- | :------- | :------- |
| ConstantMax   | 恒定最高频率               | 极致     | 最高     |
| ConstantBase  | 恒定基本频率               | 能效优先 | 高       |
| LowLatency    | 按需激进提频(下限100%基频) | 超高     | 高       |
| Balance       | 按需积极提频               | 中等     | 低       |
| Balance-50    | 按需积极提频(下限50%基频)  | 高       | 低       |
| Balance-75    | 按需积极提频(下限75%基频)  | 高       | 中等     |
| Balance-100   | 按需积极提频(下限100%基频) | 超高     | 高       |
| Passivity     | 按需被动提频               | 低       | 低       |
| Passivity-50  | 按需被动提频(下限50%基频)  | 低       | 低       |
| Passivity-75  | 按需被动提频(下限75%基频)  | 中等     | 中等     |
| Passivity-100 | 按需被动提频(下限100%基频) | 高       | 高       |

- [.bat路径](./bin/freq/)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## CPU大小核调度分配修改
| 预设    | 表现                                     |
| :------ | :--------------------------------------- |
| AllCore | 所有负载`随机堆放任何核心`               |
| POnly   | 所有负载`只使用P核`                      |
| PCombo  | 所有负载`优先用P核`，P核`占满后用E核`    |
| PMixed  | 短时负载`优先用P核`，长时负载`优先用E核` |
| EOnly   | 所有负载`只使用E核`                      |
| ECombo  | 所有负载`优先用E核`，E核`占满后用P核`    |
| EMixed  | 短时负载`优先用E核`，长时负载`优先用P核` |

- [.bat路径](./bin/scheduling/)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 核心休眠修改
| 预设      | 表现                                         | 适用CPU             |
| :-------- | :------------------------------------------- | :------------------ |
| P0+E10    | P核`全部休眠`，E核`常驻开启10%核心`          | `大小核`            |
| P0+E100   | P核`全部休眠`，E核`常驻开启全部核心`         | `大小核`            |
| P10+E0    | P核`常驻开启10%核心`，E核`全部休眠`          | `大小核`            |
| P10+E100  | P核`常驻开启10%核心`，E核`常驻开启全部核心`  | `大小核`            |
| P100+E0   | P核`常驻开启全部核心`，E核`全部休眠`         | `大小核`            |
| P100+E100 | P核`常驻开启全部核心`，E核`常驻开启全部核心` | `大小核` & `纯大核` |
| P50+E50   | P核`常驻开启50%核心`，E核`常驻开启50%核心`   | `大小核` & `纯大核` |

- [.bat路径](./bin/coreparking/)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## CPU C-State修改
这里额外提供控制C-State，可以实现服务器模式/极客定制  

- 限制AC C-State最深为C1: [set-maxc1.bat](./bin/cstate/ac/set-maxc1.bat)
- 重置AC C-State: [reset-default.bat](./bin/cstate/ac/reset-default.bat)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 重置所有修改
运行 [reset-default.bat](../bin/reset-default.bat)

> [!NOTE]  
> 也会重置`关屏` `睡眠` `休眠`的时间  

## Credits
- https://learn.microsoft.com/windows-hardware/customize/power-settings/static-configuration-options-for-the-performance-state-engine
- https://www.kernel.org/doc/Documentation/cpu-freq/governors.txt

## Acknowledgements
- [testufo.com/animation-time-graph](https://testufo.com/animation-time-graph#scale=0.5&measure=rendering)
