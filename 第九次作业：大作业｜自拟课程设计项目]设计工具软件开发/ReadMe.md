### 设计工具计划书
# 声音泡泡机  Bubbles of your Voice

### 程序简介
> “声音可视化”是一个经典的研究主题。不同的声音拥有不同节奏、不同音量、不同情感色彩。
> 
> 试想，如果给声音附加一套公式，让它来帮我们完成某种规则下的图样设计，将会是什么样的？
> 
> 本程序通过识别一段声音的动态振幅（表现在操作中就是声音的响度），将声音振幅的数值映射至图形的饱和度/数量/形态上，形成随音乐动态变化的效果。


### Prototype
> 程序的主体是按照一定规律生成和排列的波点，
> 
> 这些波点的位置坐标呈“斐波那契螺旋线”关系，
> 
> 振幅属于（0，1）区间的声音从小到大分别对应了1-20代曲线图样，如下图：

> No1:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729612-02698eb5-a44c-469a-91c3-838a50064429.png">

> No2:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729640-18d8db41-b16b-496a-aa57-8580557ad2d6.png">

> No3:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729650-5a3f7e85-9f83-497f-8088-9806f9dad3cb.png">

> No4:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729661-45833d1a-47d3-4b54-9278-74d5e232fe10.png">

> No5:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729670-15d6bf63-90b1-4f0b-9c43-772c43e4615d.png">

> No6:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729680-83b531f4-dbd3-454f-a750-39c31be6eb67.png">

> No7:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729688-428d8ddb-58e1-4b5a-bd0c-694f1ebcf38b.png">

> No8:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729714-c8a06b99-46a1-46a5-8a2e-ff7cd1b93a0c.png">

> No9:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729723-b1ab116c-ff97-437f-b761-8733d1e0d0fc.png">

> No10:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729735-45772191-2bc1-45d6-ab69-f8e7167f7964.png">

> No11:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729755-98db9cc6-d44a-48f0-ba07-b7a630fae1ad.png">

> No12:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729773-59c2f048-20fa-4632-9c97-81a55f5f288f.png">

> No13:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729793-bdfc2d20-c67d-41b3-96e3-a01d2ed37718.png">

> No14:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729803-78ec0383-4d43-47e6-b4a2-de1de6cb1158.png">

> No15:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729810-5f11e14f-704e-4621-a358-09fc32a9fb21.png">

> No16:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729816-80e6b4bd-230c-464a-b7fd-dc01ef45e814.png">

> No17:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729820-5e052ec1-082f-4fc0-9e3b-7a85da4e7061.png">

> No18:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729829-e1b817db-bc27-4ca2-860a-858c886dc09e.png">

> No19:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729837-b876d529-4b0e-46da-8673-869b3b15df3a.png">

> No20:
> 
> <img width="800" alt="image" src="https://user-images.githubusercontent.com/90922511/142729842-cc5036ad-a3f4-41d8-a0e7-e2b7543e80ed.png">

## 实现效果

> 每一幅“斐波那契螺旋“中波点的颜色、数量和透明度都会随音量的变化而变化：
> 
> 音乐较轻柔时，画面中波点呈蓝紫色，也较为透明；
> 
> 音乐较激昂时，画面中波点呈红色，数量也较多；
> 
> 音乐处于中间响度时，画面中波点呈中性的白色。
> 
> 不同样态的斐波那契螺旋叠加在一起，加之以渐消的视觉效果，诞生出一片由波点组成的梦幻星海————有如音乐带给人之温柔力量。


## 交互方式

> 用户对麦克风进行声音的输入（说话/朗读/唱歌/播放音乐......），程序将会根据此输入的声音呈现动态的画面，得到音乐的可视化。
> 
> 同时，在软件运行过程中点击鼠标左键，将会保存程序截图。

## 输入与输出

> 输入：任意声音。
> 
> 输出：动态图像与图像捕捉。
