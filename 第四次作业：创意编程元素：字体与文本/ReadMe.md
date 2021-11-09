### 作业要求
#### 1.选择一段文本，根据你的创意进行演绎规则的设计，实现对文本内容的图形化呈现。
#### 2.通过网站检索文本可视化项目，从中找出你所喜欢的作品，形式不限，可以是海报、动画、交互媒体和装置。归纳一些应用文字创作图形作品的方法和思路，并进行案例整理，具体包括：

- 项目名称
- 作者/艺术家名称
- 来源/出处（URL等）
- 概要描述（文字描述）
- 截图/视频素材

✏️简单描述你的创意内容，将程序运行结果附在这里。


## 作业一：【文本内容图形化】evaliu_noticing
### 作业思路
在主程序中建立一个字符“类”，逐个生成“降温了，记得多穿衣！”字符串中的字符。

规定其字体为YaHei Consolas Hybrid，颜色为黑色，位置在画布的竖直中心，水平排列。

在对象文件中规定每个字符的运动，分为“抖动”的“归位”两步骤：

通过改变字符的横纵坐标，达到“抖动”的效果；

通过差值运算函数，使得字符在规定时间内“归位”。

### 实现效果
运行程序，各字符旋转归位，初始状态为

<img width="600" alt="image" src="https://user-images.githubusercontent.com/90922511/140857901-ae53116f-303d-4a28-b154-c2be1c252a83.png">

按住鼠标左键，文字开始抖动：

<img width="600" alt="image" src="https://user-images.githubusercontent.com/90922511/140857960-665e9a8d-1d81-48e9-a041-5a8d73ba536c.png">

松开鼠标左键，文字归位：

<img width="600" alt="image" src="https://user-images.githubusercontent.com/90922511/140858093-898f4196-d830-4d14-b9b3-deca04e562bf.png">


## 作业二：案例整理

### 案例一：Particle Clock

项目名称：Particle Clock

作者/艺术家名称：Fabian Kober

来源/出处（URL等）：https://zhuanlan.zhihu.com/p/225291598

概要描述（文字描述）：
通过粒子系统组合成文字、数字、符号等，来进行艺术性表达。Particle Clock用粒子系统表示时钟，当鼠标滑过，粒子会散开再重新进行组合。

截图/视频素材：
![](https://pic2.zhimg.com/v2-f8f1d96d077908ceb149cf2c14630a65_b.webp)

### 案例二：Plagiairc

项目名称：Plagiairc

作者/艺术家名称：Nicolas Boillot

来源/出处（URL等）：https://www.fluate.net/en/travaux/plagiairc

概要描述（文字描述）：Plagiairc is designed as a chat software that uses the Facebook network or Google Talk (jabber). It allows you to communicate with your Facebook / Google contacts privately. To emit a new sentence via the Plagiairc interface, the speaker will not be able to write freely through a conventional keyboard. He will be forced to use the words of "others", the semantics of textual chat room users. It will be able to draw from a database of 40,000 "public" French or English sentences recorded on the Internet Relay Chat (I.R.C.), an instant text communication protocol used mainly for group discussions.


截图/视频素材：
https://player.vimeo.com/video/41232552?h=34f7a81ef1

### 案例三：WDCE

项目名称：WDCE, words don't come easy

作者/艺术家名称：Christoph Köhler

来源/出处（URL等）：http://generative-typografie.de/generativetypografie/wdce/

概要描述（文字描述）：一种完全从渐变形成的字体。改变角度和片段、旋转、镜像和叠加总是会创造新的效果。

截图/视频素材：![](http://generative-typografie.de/files/gimgs/3_wdceckoehler01.jpg)

### 案例四：WWDC 2014 海报

项目名称：WWDC 2014 海报

作者/艺术家名称：未知

来源/出处（URL等）：https://www.zhihu.com/question/23962915/answer/26393634

概要描述（文字描述）：
Logo图片导入后，先用滤镜里的THRESHOLD分成黑白两色，视情况看是否需要用INVERT进行反色；然后运用滤镜里的BLUR使得logo的边缘变成渐变的灰色。
在得到的这张图上按照圆角矩形的间距均匀取点，得到各点的颜色，由颜色的亮度值brightness()决定绘制在该点上的圆角矩形的大小，所有圆角矩形的颜色都由所在点的水平位置决定，就是通过map()把横坐标投射到hue()色相带上得到相应的值。

截图/视频素材：
![](https://pic4.zhimg.com/17057590884a6dfc7f7615997b695753_r.jpg)
