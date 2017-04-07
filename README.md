# NnuStuAutoLogin
用于自动登录南师大校园网的 Chrome 插件和自动重连 nnu_stu 的脚本，适用于需要在晚上下载文件的同学。

## Chrome 插件的使用方法

1. 以 GBK 编码方式打开 AutoLoginChromeExtension/js/injected.js 文件，在图中加框部分分别加入你的校园网用户名和密码。

![Capture1](/images/Capture1.jpg)

2. 在 Chrome 的“扩展程序”页面（chrome://extensions/）打开“开发者模式”。

3. 单击“打包扩展程序”，根目录选择 AutoLoginChromeExtension 这个目录，私钥留空，然后打包。

![Capture2](/images/Capture2.jpg)

4. 打包完成后可以在 NnuStuAutoLogin 目录下发现打包后的2个文件，将其中的 AutoLoginChromeExtension.crx 文件拖入 Chrome 的扩展程序页面，在提示框中单击“添加扩展程序”。

5. 解决非应用商店的 Chrome 扩展程序强制停用问题，参考这贴：http://tieba.baidu.com/p/3091171066  
注：该方法使用了本地组策略编辑器，该组件并不包含在 Windows10 家庭版中。

## 为 NnuStuAutoReconnect.bat 添加任务计划

由于目前 nnu_stu 大概在凌晨 2:13 左右断开，所以我们添加一个 2:20 的计划。

打开“任务计划管理程序”，按以下步骤添加一个任务计划。

在“触发器”选项卡添加一个触发器： 

![Capture3](/images/Capture3.jpg)

在“动作”选项卡添加要执行的脚本 NnuStuAutoReconnect.bat： 

![Capture4](/images/Capture4.jpg)

![Capture5](/images/Capture5.jpg)

“条件”选项卡取消勾选“仅连接交流电源时运行任务”：

![Capture6](/images/Capture6.jpg)

“设置”选项卡：

![Capture7](/images/Capture7.jpg)
