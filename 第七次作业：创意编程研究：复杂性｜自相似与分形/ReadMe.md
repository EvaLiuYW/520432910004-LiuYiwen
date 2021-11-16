程序说明：
-------

### 设计意图：

  > 本程序是“分形几何结构”的逐步迭代与生成的直观演示。
  > 
  >从一段竖直线段出发，每个高处的端点生长出6段【长度为上一代线段的5/12】，【方向和竖直角度分别成+-20度，+-80度，+-140度夹角的】子代线段。
  >
  >每个线段的粗细程度和其线段长度成正比。即：线段越长，线段越粗。
  


### 程序逻辑：
 >运用动态数组进行迭代运算，实现通过键盘上按键的控制，逐步生成分形子代的过程。
 >
 >通过向量确定线段起始点位和终止点位，以此控制线段长度和方向的变化。



### 实现效果：
 
  > 按“g”键画面发生一次迭代，表现形式为雪花树的一次生长。
  > 
  > 初始状态：
  > 
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940408-96c0f0f4-2145-402f-bd5f-dfe7f14c48d7.png">
  > 
  > 一次生长：
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940541-a018ca27-04b2-43f1-8cd8-efc9a3c84abc.png">
  > 二次生长：
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940576-0ed54d06-1d85-4dda-981f-9d3d29407707.png">
  > 三次生长：
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940556-abd81022-90df-4004-afb3-aec66e84216f.png">
  > ......
  > 
  > n次生长：
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940631-593b54f7-a695-4709-98f7-0580c79ebcec.png">

  > 按“c”键重置画面。
  > <img width="1000" alt="image" src="https://user-images.githubusercontent.com/90922511/141940730-df3ee8d7-f15d-45a3-a6b3-5ff5d262514b.png">


### 演示视频:

https://github.com/EvaLiuYW/520432910004-LiuYiwen/blob/main/第七次作业：创意编程研究：复杂性｜自相似与分形/SnowTree.mp4

