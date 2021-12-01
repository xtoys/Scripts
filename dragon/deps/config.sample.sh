#------ Version: 2021.11.30 ------#

## 青龙环境变量

## 在运行 ql repo 命令时，是否自动删除失效的脚本与定时任务
AutoDelCron="true"
## 在运行 ql repo 命令时，是否自动增加新的本地定时任务
AutoAddCron="true"
## 拉取脚本时默认的定时规则，当匹配不到定时规则时使用，例如: 0 9 * * *
DefaultCronRule="22 0 * * *"
## ql repo命令拉取脚本时需要拉取的文件后缀，直接写文件后缀名即可
RepoFileExtensions="js py sh ts"
## 由于github仓库拉取较慢，所以会默认添加代理前缀，如不需要请移除
GithubProxyUrl="https://ghproxy.com/"
## 设置定时任务执行的超时时间，默认1h，后缀"s"代表秒(默认值), "m"代表分, "h"代表小时, "d"代表天
CommandTimeoutTime="1h"
## 设置批量执行任务时的并发数，默认同时执行5个任务
MaxConcurrentNum="9"
## 在运行 task 命令时，随机延迟启动任务的最大延迟时间
## 默认给javascript任务加随机延迟，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行，取消延迟赋值为空
RandomDelay="20"
## 如果你自己会写shell脚本，并且希望在每次运行 ql update 命令时，额外运行你的 shell 脚本，请赋值为 "true"，默认为true
EnableExtraShell="true"
## 是否自动启动bot，默认不启动，设置为true时自动启动，目前需要自行克隆bot仓库所需代码，存到ql/repo目录下，文件夹命名为dockerbot
AutoStartBot=""
## 安装bot依赖时指定pip源，默认使用清华源，如不需要源，设置此参数为空
PipMirror="https://pypi.tuna.tsinghua.edu.cn/simple"




## 通知环境变量

## 1. 企业微信应用
## 参考文档：http://note.youdao.com/s/HMiudGkb
## 下方填写素材库图片id（corpid,corpsecret,touser,agentid），素材库图片填0为图文消息, 填1为纯文本消息
export QYWX_AM=""

## 2. Push Plus
## 官方网站：http://www.pushplus.plus
## 下方填写您的Token，微信扫码登录后一对一推送或一对多推送下面的token，只填 PUSH_PLUS_TOKEN 默认为一对一推送
export PUSH_PLUS_TOKEN=""
## 一对一多推送（选填）
## 下方填写您的一对多推送的 "群组编码" ，（一对多推送下面->您的群组(如无则新建)->群组编码）
## 1. 需订阅者扫描二维码 2、如果您是创建群组所属人，也需点击“查看二维码”扫描绑定，否则不能接受群组消息推送
export PUSH_PLUS_USER=""


## 其他需要的变量，脚本中需要的变量使用 export 变量名= 声明即可

# 定义每日签到的通知形式
## js脚本每日签到提供3种通知方式，分别为：关闭通知 0 / 简洁通知 1 / 原始通知 2（默认）
NotifyBeanSign="0"
# 定义每日签到每个接口间的延迟时间
## 默认每个签到接口并发无延迟，如需要依次进行每个接口，请自定义延迟时间，单位为毫秒，延迟作用于每个签到接口, 如填入延迟则切换顺序签到(耗时较长)
export JD_BEAN_STOP="9"

# 脚本推送控制类环境变量

## 1、京东多合一签到脚本关闭运行结果推送，默认推送，填true表示不推送
export JD_BEAN_SIGN_STOP_NOTIFY="true"
## 2、京东多合一签到脚本推送简单结果，默认推送完整版结果，填true表示启用简单推送
export JD_BEAN_SIGN_NOTIFY_SIMPLE="true"
## 3、东东萌宠关闭推送。填写false为不关闭推送，true为关闭推送
export PET_NOTIFY_CONTROL="true"
## 4、京东农场关闭推送。填写false为不关闭推送，true为关闭推送
export FRUIT_NOTIFY_CONTROL="true"
## 5、京东领现金关闭推送。填写false为不关闭推送，true为关闭推送
export CASH_NOTIFY_CONTROL="true"
## 6、京东摇钱树关闭推送。填写false为不关闭推送，true为关闭推送
export MONEYTREE_NOTIFY_CONTROL="true"
## 7、京东点点券关闭推送。填写false为不关闭推送，true为关闭推送
export DDQ_NOTIFY_CONTROL="true"
## 8、京东京东赚赚小程序关闭推送。填写false为不关闭推送，true为关闭推送
export JDZZ_NOTIFY_CONTROL="true"
## 9、宠汪汪兑换京豆关闭推送。填写false为不关闭推送，true为关闭推送
export JD_JOY_REWARD_NOTIFY="true"
## 10、宠汪汪赛跑获胜后是否推送通知。填false为不推送通知消息,true为推送通知消息
export JOY_RUN_NOTIFY="true"
## 11、东东超市兑换奖品是否关闭推送通知。填false为不关闭推送,true为关闭推送
export MARKET_REWARD_NOTIFY="true"
## 12、京喜财富岛控制是否运行脚本后通知。输入true为通知,不填则为不通知
export CFD_NOTIFY_CONTROL=""
## 13、京喜农场岛控制是否运行脚本后通知。0=只通知成熟;1=本次获得水滴>0;2=任务执行;3=任务执行+未种植种子
export JXNC_NOTIFY_LEVEL="0"

# 功能配置类环境变量

## 1、京东领现金红包兑换京豆开关。false为不换,true为换(花费2元红包兑换200京豆，一周可换四次)，默认为false
export CASH_EXCHANGE="false"
## 2、宠汪汪喂食数量。可以填的数字0,10,20,40,80,其他数字不可
export JOY_FEED_COUNT="20"
## 3、宠汪汪帮好友喂食。默认 "false" 不会自动给好友的汪汪喂食，如想自动喂食，请修改为 "true"
export JOY_HELP_FEED="true"
## 4、宠汪汪是否赛跑(默认参加双人赛跑)。false为不跑,true为跑
export JOY_RUN_FLAG="true"
## 5、宠汪汪参加什么级别的赛跑。可选数字为2,10,50，
## 当JOY_RUN_FLAG不设置或设置为 "true" 时生效
## 可选值：2,10,50，其他值不可以。其中2代表参加双人PK赛，10代表参加10人突围赛，50代表参加50人挑战赛，不填时默认为2
## 各个账号间请使用 & 分隔，比如：JOY_TEAM_LEVEL="2&2&50&10"
## 如果您有5个账号但只写了四个数字，那么第5个账号将默认参加2人赛，账号如果更多，与此类似
export JOY_TEAM_LEVEL="2&2&50&10"
## 6、宠汪汪赛跑自己账号内部互助。输入true为开启内部互助
export JOY_RUN_HELP_MYSELF="true"
## 7、宠汪汪积分兑换多少京豆。目前可填值为20或者500,脚本默认0,0表示不兑换京豆
export JD_JOY_REWARD_NAME="500"
## 8、东东超市兑换京豆数量。目前可输入值为20或者1000，或者其他商品的名称,例如碧浪洗衣凝珠
export MARKET_COIN_TO_BEANS="超值京豆包"
## 9、东东超市是否参加pk。true表示参加,false表示不参加
export JOIN_PK_TEAM="true"
## 10、东东超市是否用金币抽奖。true表示抽奖,false表示不抽奖
export SUPERMARKET_LOTTERY="true"
## 11、东东农场是否使用水滴换豆卡。true表示换,false表示不换
export FRUIT_BEAN_CARD="false"
## 12、是否取关商品。环境变量内容的意思依次是是否取关全部商品(0表示一个都不),是否取关全部店铺数(0表示一个都不),遇到此商品不再进行取关,遇到此店铺不再进行取关
export UN_SUBSCRIBES="300,300,,"
##  jd_unsubscribe这个任务是用来取关每天做任务关注的商品和店铺，默认在每次运行时取关20个商品和20个店铺
### 如果取关数量不够，可以根据情况增加，还可以设置 jdUnsubscribeStopGoods 和 jdUnsubscribeStopShop 
### 商品取关数量
export goodPageSize="30"
### 店铺取关数量
export shopPageSize="60"
### 遇到此商品不再取关此商品以及它后面的商品，需去商品详情页长按拷贝商品信息
export jdUnsubscribeStopGoods=""
### 遇到此店铺不再取关此店铺以及它后面的店铺，请从头开始输入店铺名称
export jdUnsubscribeStopShop=""
## 13、疯狂的JOY循环助力开关。true表示循环助力,false表示不循环助力，默认不开启循环助力
export JDJOY_HELPSELF="true"
## 14、疯狂的JOY京豆兑换。0表示不换,其他按可兑换数填写。目前最小2000
export JDJOY_APPLYJDBEAN="2000"
## 15、疯狂的JOY购买joy等级。如需要使用请自行解除注释，可购买等级为 "1~30"
export BUY_JOY_LEVEL=""
## 16、摇钱树是否卖出金果。true卖出，false不卖出，默认false
export MONEY_TREE_SELL_FRUIT="true"
## 17、东东工厂心仪商品。
export FACTORAY_WANTPRODUCT_NAME=""
## 18、东东工厂控制哪个京东账号不运行此脚本。多个使用&连接
export JDFACTORY_FORBID_ACCOUNT=""
## 19、京喜工厂控制哪个京东账号不运行此脚本。多个使用&连接
export DREAMFACTORY_FORBID_ACCOUNT=""
## 20、lxk0301脚本是否加购。如加设置true
export PURCHASE_SHOPS="true"
## 21、京喜工厂拼团瓜分电力活动的activeId（当前需抓包替换或去群里求别人分享）
export TUAN_ACTIVEID=""
## 22、京东UA。点点券脚本运行环境变量
export JD_USER_AGENT=""

# ccwav 环境变量
## [1] jd_CheckCK.js
### 当有自动禁用或自动启用事件发生才会发送通知，如果要每次都通知则需设定变量
### 自动检测账号是否正常，不正常的自动禁用，正常的如果是禁用状态则自动启用
export SHOWSUCCESSCK="false" ##显示正常CK，true为显示
export CKALWAYSNOTIFY="false" ##通知CK状态，true为永远通知 
export CKAUTOENABLE="true" ##自动启用CK，false为停用
export CKREMARK="true" ##显示CK备注，false为不显示
export CKNOWARNERROR="true" ##服务器空数据等错误不触发通知，false为通知
## [2] jd_bean_change.js
### 自用的京东资产变动查询加强版
export BEANCHANGE_PERSENT="10" ##10合1
### 将临期京豆兑换成喜豆
export BEANCHANGE_ExJxBeans="true"
## [3] sendNotify.js
### 1. 通知黑名单
### 如果通知标题在此变量里面存在（&隔开），则用屏蔽不发送通知，继承Ninja。例：export NOTIFY_SKIP_LIST="京东CK检测&京东资产变动"
export NOTIFY_SKIP_NAMETYPELIST=""
### 2. 多套通知。NOTIFY_GROUP2_LIST NOTIFY_GROUP3_LIST NOTIFY_GROUP4_LIST NOTIFY_GROUP5_LIST NOTIFY_GROUP6_LIST
### 如果通知标题在此变量里面存在(&隔开),则用第2/3/4/5/6套推送变量进行配置.
##分组2推送
## export PUSH_PLUS_TOKEN_hxtrip2=""
## export PUSH_PLUS_USER_hxtrip2=""
export PUSH_PLUS_TOKEN2=""
export PUSH_PLUS_USER2=""
export TG_BOT_TOKEN2=""
export TG_USER_ID2=""
### export NOTIFY_GROUP2_LIST="京东白嫖榜&京东月资产变动&省钱大赢家之翻翻乐&京东CK检测&京喜工厂&金融养猪"
### 3. NOTIFY_SHOWNAMETYPE
### 例：账号名:ccwav  别名:ccwav的别名  Remark:代码玩家
#export NOTIFY_SHOWNAMETYPE="1"    ##效果: 账号名称：代码玩家
export NOTIFY_SHOWNAMETYPE="2"     ##效果: 账号名称：ccwav的别名(代码玩家)
#export NOTIFY_SHOWNAMETYPE="3"    ##不做处理，效果: 账号名称：ccwav   
#export NOTIFY_SHOWNAMETYPE="4"    ##不做处理，效果: 账号名称：ccwav(代码玩家)
### 4. NOTIFY_SKIP_NAMETYPELIST
### 单独指定某些脚本不做NOTIFY_SHOWNAMETYPE变量处理。例：export NOTIFY_SKIP_NAMETYPELIST="东东农场&东东工厂"
export NOTIFY_SKIP_NAMETYPELIST=""
### 5. NOTIFY_NOREMIND
### 对 东东农场领取 东东萌宠领取 京喜工厂领取 汪汪乐园养joy领取 脚本任务更新的通知进行屏蔽,可自行删减.
### export NOTIFY_NOREMIND="京喜工厂&汪汪乐园养joy"
### 6. 屏蔽ck失效通知
### 执行所有脚本时，如果有单独推送CK失效的请求也不会推送失效通知
export NOTIFY_NOCKFALSE="true"
### 7. NOTIFY_AUTHOR
### 通知底部显示：本通知 By 测试人
export NOTIFY_AUTHOR="青龙"
### 8. NOTIFY_NOLOGINSUCCESS
### 屏蔽青龙登陆成功通知，登陆失败不屏蔽(新版貌似可以直接设定了)
export NOTIFY_NOLOGINSUCCESS="true"
### 9. NOTIFY_CUSTOMNOTIFY
### 强大的自定义通知，格式为 脚本名称&推送组别&推送类型 (推送组别总共5组)
### 推送类型: Server酱&pushplus&Bark&TG机器人&钉钉&企业微信机器人&企业微信应用消息&iGotNotify&gobotNotify
### export NOTIFY_CUSTOMNOTIFY=["京东资产变动&组1&Server酱&Bark&企业微信应用消息&TG机器人&iGotNotify","京东白嫖榜&组1&TG机器人&pushplus&iGotNotify","京东CK检测&组1&TG机器人&pushplus&iGotNotify"]
export NOTIFY_CUSTOMNOTIFY=""
### 10. PUSH_PLUS_TOKEN_hxtrip 和 PUSH_PLUS_USER_hxtrip
### 增加pushplus.hxtrip.com的推送加接口，貌似更稳定,普通用法和NOTIFY_CUSTOMNOTIFY用法同PUSH_PLUS.
export PUSH_PLUS_TOKEN_hxtrip=""
export PUSH_PLUS_USER_hxtrip=""
### 11. jd_joy_reward_Mod.js 宠汪汪积分兑换有就换版
export JOY_GET20WHEN16="true"  ##控制16点才触发20京豆兑换.
### 12. CK失效时执行脚本
export NOTIFY_CKTASK="jd_CheckCK.js"
### 13. 开启月结资产推送
export BEANCHANGE_ENABLEMONTH="true"

# curtinlv 环境变量
## 1、赚京豆
### 助力账号，填写pt_pin或用户名的值，如 zlzh = ['aaaa','xxxx','yyyy'] ，支持ENV
### export zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;" | awk 'BEGIN{for(i=0;i<10;i++)hex[i]=i;hex["A"]=hex["a"]=10;hex["B"]=hex["b"]=11;hex["C"]=hex["c"]=12;hex["D"]=hex["d"]=13;hex["E"]=hex["e"]=14;hex["F"]=hex["f"]=15;}{gsub(/\+/," ");i=$0;while(match(i,/%../)){;if(RSTART>1);printf"%s",substr(i,1,RSTART-1);printf"%c",hex[substr(i,RSTART+1,1)]*16+hex[substr(i,RSTART+2,1)];i=substr(i,RSTART+RLENGTH);}print i;}')"  ## 支持中文用户名
export zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;")"
## 2、全民抢京豆
### export qjd_zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;" | awk 'BEGIN{for(i=0;i<10;i++)hex[i]=i;hex["A"]=hex["a"]=10;hex["B"]=hex["b"]=11;hex["C"]=hex["c"]=12;hex["D"]=hex["d"]=13;hex["E"]=hex["e"]=14;hex["F"]=hex["f"]=15;}{gsub(/\+/," ");i=$0;while(match(i,/%../)){;if(RSTART>1);printf"%s",substr(i,1,RSTART-1);printf"%c",hex[substr(i,RSTART+1,1)]*16+hex[substr(i,RSTART+2,1)];i=substr(i,RSTART+RLENGTH);}print i;}')"  ## 支持中文用户名
export qjd_zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;")"
## 3、签到领现金助力
### export cash_zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;" | awk 'BEGIN{for(i=0;i<10;i++)hex[i]=i;hex["A"]=hex["a"]=10;hex["B"]=hex["b"]=11;hex["C"]=hex["c"]=12;hex["D"]=hex["d"]=13;hex["E"]=hex["e"]=14;hex["F"]=hex["f"]=15;}{gsub(/\+/," ");i=$0;while(match(i,/%../)){;if(RSTART>1);printf"%s",substr(i,1,RSTART-1);printf"%c",hex[substr(i,RSTART+1,1)]*16+hex[substr(i,RSTART+2,1)];i=substr(i,RSTART+RLENGTH);}print i;}')"  ## 支持中文用户名
export cash_zlzh="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\'\1\',/g; s/^/[/; s/$\|,$/]/;")"
## 4、京喜工厂开团助力 for Python
### 支持指定账号开团，跑1次脚本默认开3次团，如未指定账号默认给账号一开团。
### 变量ENV 指定开团账号。可填用户名 或 pt_pin 的值。示例：export jxgc_kaituan="用户1&用户2"
export jxgc_kaituan="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\)\S*;/\1/g; s/ /\&/g;" | awk 'BEGIN{for(i=0;i<10;i++)hex[i]=i;hex["A"]=hex["a"]=10;hex["B"]=hex["b"]=11;hex["C"]=hex["c"]=12;hex["D"]=hex["d"]=13;hex["E"]=hex["e"]=14;hex["F"]=hex["f"]=15;}{gsub(/\+/," ");i=$0;while(match(i,/%../)){;if(RSTART>1);printf"%s",substr(i,1,RSTART-1);printf"%c",hex[substr(i,RSTART+1,1)]*16+hex[substr(i,RSTART+2,1)];i=substr(i,RSTART+RLENGTH);}print i;}')"  ## 支持中文用户名
## 5、入会开卡
### int，入会送豆满足此值，否则不入会
export openCardBean="30"
### 布尔值，是否记录符合条件的shopid(默认True)
export record="true"
### 布尔值， True:仅记录，不入会(默认False)
export onlyrecord="false"
### 布尔值，开启记忆功能，接力上一次异常中断位置继续。(默认yes)
export memory="false"
### 布尔值，True：只打印部分日志 False:打印所有日志
export printlog="true"
### Float，限制速度，单位秒，如果请求过快报错适当调整0.5秒以上
export sleepNum="0.5"
### 布尔值，True:使用作者远程仓库更新的id，False：使用本地shopid.txt的id
export isRemoteSid="true"
## 6、东东超市商品兑换
### 填写商品名字，兼容模糊关键词
export coinToBeans='京豆包'
### 多账号并发，默认开启 True，关闭 False
export blueCoin_Cc='True'
### 轮次
export startMaxNum="30"
### 多线程并发，相当于每秒点击兑换次数...适当调整，手机会发烫
export dd_thread="30"
### 开始抢兑时间
export starttime="23:59:59.00000000"
### 结束时间
export endtime="00:00:30.00000000"

# smiek2221 环境变量
## 1、京东签到图形验证修改火爆问题
### 如果 read ECONNRESET 错误 可以试试
### 环境变量 JOY_HOST 修改域名 https://jdjoy.jd.com 可以改成ip https://49.7.27.236
### 如果上面ip不行就自己去ping下域名对应的ip cmd窗口输入—>ping jdjoy.jd.com 再改
### 不要频繁请求 请过个半小时 1小时在执行
export JOY_HOST=""
## 2、图形验证文件 JDJRValidator_Pure.js 验证次数
### 新增验证次数上限 默认25次 验证可能无法成功
export JDJR_validator_Count="25"
## 3、财富大陆热气球接客次数
### 新增热气球接客 默认每次运行执行10次
export gua_wealth_island_serviceNum="500"
## 4、修复点点券
### 新增显示有多少个非法请求 可以开通知 
export DDQ_NOTIFY_CONTROL="" ##不填或false为通知，true为不通知
## 5、24 及之后的开卡变量
export guaopencard_All="true"
export guaopencard_addSku_All="true"
export guaopencardRun_All="true"
export guaopencard_draw="true"
export guaunknownTask_addSku_All="true"
export guaunknownTask_card_All="true"
export gua_carnivalcity_draw="true"
export guaopenwait_All="true"
export guaopencard_draw45="3"
for ((s=0; s<=100; s++)); do
    export guaopencard$s="3"
    export guaopencard_draw$s="3"
    export guaopencard_addSku$s="true"
done
## 6、城城领现金自动抽奖
export jdJxdExchange="true"
export JD_CITY_HELPSHARE="false" # false 优先内部助力 | true 优先助力池

# cdle 环境变量
## 1、签到领现金兑换
### 填写 pt_pin@金额，pt_pin为用户名，可以在 COOKIES 中提取；金额为 2 或 10，例如 LiLei@2 或 HanMeimei@10。多值用 & 连接，例如 LiLei@2&HanMeimei@10
### export exchangeAccounts="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1@10/g; s/\n/\&/g;")"  ##兑10元现金，比较难兑
export exchangeAccounts="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\1@2/g; s/ /&/g;")"           ##兑2元现金
## 2、愤怒的现金
### 极速助力，打击黑产盗取现金的犯罪行为。默认向前助力9个账号，若要指定被助力账号，需cashHelpPins环境变量中填入需要助力的pt_pin，有多个请用@符号连接。
export cashHelpPins="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/\n/@/g;")"
## 3、愤怒的锦鲤
### 助力账号，填写pt_pin或用户名的值。多个 pt_pin 值用 @ 连接
export kois="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/\n/@/g;")"
## 4、发财大赢家助力
### 需要设置环境变量dyjHelpPins来指定要助力的账号
export dyjHelpPins="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/\n/@/g;")"
## 5、早起赢现金
### 入口：京东汽车-瓜分万元
### 备注：支付一元才能参与活动，填写环境变量morningScPins给指定账号打卡
export morningScPins="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/\n/@/g;")"
## 6、赚30元
### 备注：赚30元每日签到红包、天降红包助力，在earn30Pins环境变量中填入需要签到和接受助力的账号。
### 技巧：每月可以提现100元，但需要邀请一个新人下首单。可以用已注册手机号重新注册为新人账号，切换ip可以提高成功率。
export earn30Pins="$(echo $JD_COOKIE | sed "s/&/\n/g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/\n/@/g;")"
## 7、真·抢京豆
### 高速并发抢京豆，专治偷助力。设置环境变量angryBeanPins为指定账号助力，默认不助力。
### 环境变量angryBeanMode可选值priority或speed或smart，默认smart模式。
### 默认推送通知，如要屏蔽通知需将环境变量enableAngryBeanNotify的值设为false。
export angryBeanPins="$(echo $JD_COOKIE | sed "s/&/ /g; s/\S*pt_pin=\([^;]\+\);\S*/\1/g; s/ /@/g;")"
export angryBeanMode="priority"
export enableAngryBeanNotify="true"

# star261 环境变量
## 1、京喜工厂开团
### 默认第一个CK开团，例：若OPEN_DREAMFACTORY_TUAN="2,3"，则第2，第3个CK开团，其他账号参加第2，第3个CK开的团。每执行一次，会领取上一次成团的奖励和新开一次团，每天执行4次能开完3次团和领取3次团的奖励。一个账号能参团一次，一个账号一天能开三次团，请根据自己的情况设置需要开团的CK，一般至少5个CK能成团
### 助力规则：开团账号开团，其他账号自动参团。 例：有A,B,C账号，A，B账号开团，则B，C会参加A的团，A会参加B的团。账号内互助之后，开团账号若有剩下参团次数，会尝试加入作者团
### 成团条件：成团所需人数根据活动所需人数变化，一般为5-7人，若5人成团，则5个CK能成团一次，9个CK能成团两次，13个CK能成团三次
export OPEN_DREAMFACTORY_TUAN=""

# JDHelloWorld 环境变量
## 1、宠汪汪二代目
### 默认80，10、20、40、80可选
export feedNum="40"
### 默认双人跑
export JD_JOY_teamLevel="2"
## 2、新版京喜财富岛提现
### 提现金额，可选0.1 0.5 1 2 10
export CFD_CASHOUT_MONEY=10
### token，顺序、数量必须与cookie一致。抓包地址：https://m.jingxi.com/jxbfd/user/ExchangePrize
### export CFD_CASH_TOKEN='[{"strPgtimestamp":"你的值","strPhoneID":"你的值","strPgUUNum":"你的值"},{"strPgtimestamp":"你的值","strPhoneID":"你的值","strPgUUNum":"你的值"}]'
# export CFD_CASH_TOKEN='[{"strPgtimestamp":"1626623544085","strPhoneID":"878e21db65d2d606","strPgUUNum":"56eaaf98f7d7a69c59e50c6bb40e79c1"}]'
## 3、宠汪汪等提示预存验证码数量不足
export validate_num="" ##你需要的数值

# Aaron-lv 环境变量
## 1、京东健康社区京豆兑换
export JD_HEALTH_REWARD_NAME="20" ##只能兑换京豆，填写纯数字20 10 5 3

# 不知名大佬环境变量
## 1、清空购物车
### 将需要跳过清理的账号(cookie中的pt_pin)放到变量CleanUsers中，多个用@隔开
export CleanUsers=""

# X1a0He 环境变量
## 1、简化版京东日资产变动通知
### 支持环境变量控制每次发送的账号个数，默认为2
export JD_BEAN_CHANGE_SENDNUM="10"
## 2、清空购物车
### 使用前请认真看对应注释：https://raw.githubusercontent.com/X1a0He/jd_scripts_fixed/main/jd_cart_remove.js
### 当环境变量中存在JD_CART并设置为true时才会执行删除购物车
export JD_CART="true"
### 运行一次取消多全部已关注的商品。数字0表示不取关任何商品，默认20
export JD_CART_REMOVESIZE="20"
### 是否清空，如果为false，则上面设置了多少就只删除多少条
export JD_CART_REMOVEALL="true"
### 关键词，用@分隔
export JD_CART_KEYWORDS=""
## 3、京东试用
### 由ZCY01二次修改：脚本默认不运行，由X1a0He修复：依然保持脚本默认不运行。true为运行
### 使用前请认真看对应注释：https://raw.githubusercontent.com/X1a0He/jd_scripts_fixed/main/jd_try_xh.js
export JD_TRY="true"
export JD_TRY_PRICE="0"
export JD_TRY_TABID="1@2@3@4@5@6@7@8@9@10"
export JD_TRY_TITLEFILTERS="保护套@擦杯布@打底裤@档案袋@电商@吊带@俄语@儿童@辅导@妇女@肛门@钢化膜@钢圈@宫颈@狗@和田玉@黑丝@狐臭@互动课@脚气@教程@解酒@戒烟@卷尺@课@老太太@流量卡@六级@美少女@糜烂@棉签@女纯棉@女孩@女内裤@女内衣@女性内裤@女性内衣@培训@培训@屏风底座@驱蚊@祛痘@软件@三角裤@少女@少女内衣@生殖器@手机壳@手机膜@刷头@私处@四级@四六级@童装@娃娃@玩具@网课@网络课程@网校@卫生巾@卫生条@文胸@小靓美@卸妆@胸罩@癣@洋娃娃@衣架@益智@阴道@阴道炎@英语@英语@婴儿@幼儿@鱼@孕妇@在线@在线网络@纸尿裤@中年@种子"
export JD_TRY_TRIALPRICE="0"
export JD_TRY_MINSUPPLYNUM="1"
export JD_TRY_APPLYNUMFILTER="10000"
export JD_TRY_APPLYINTERVAL="5000"
export JD_TRY_MAXLENGTH="100"
export JD_TRY_PASSZC="true"
export JD_TRY_PLOG="true"
export JD_TRY_WHITELIST="false"
export JD_TRY_WHITELISTKEYWORDS=""
## 4、批量取关店铺和商品
### 是否执行取消关注，默认true
### 使用前请认真看对应注释：https://raw.githubusercontent.com/X1a0He/jd_scripts_fixed/main/jd_unsubscribe_xh.js
export JD_UNSUB="true"
export JD_UNSEB_NOTIFY="false"
export JD_UNSUB_GPAGESIZE="20"
export JD_UNSUB_SPAGESIZE="20"
export JD_UNSUB_GKEYWORDS=""
export JD_UNSUB_SKEYWORDS=""
export JD_UNSUB_INTERVAL="3000"
export JD_UNSUB_PLOG="true"

# jiulan 环境变量
export JOYPARK_JOY_START="120"     # 只做前几个CK
export JOY_COIN_MAXIMIZE="1"       # 最大化硬币收益，如果合成后全部挖土后还有空位，则开启此模式（默认关闭） 0关闭 1开启

# ddo
export JD_CITY_HELPPOOL="true"

