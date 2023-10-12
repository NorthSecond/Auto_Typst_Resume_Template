// import from template
#import "../template/template.typ": *;
#show: template;

#init(
    name: "张三",
    // 插入图片功能尚未支持
    // pic_path: "/img/avatar.jpg",
    pic_path : "",
)

#info(
    color: rgb(0, 0, 0),
    (
        icon: "/img/fa/fa-home.svg",
        link: "https://zhangsan.io/",
        content: "https://zhangsan.io/"
    ),
    (
        icon: fa_github,
        link: "https://github.com/NorthSecond",
        content: "NorthSecond"
    ),
    (
        icon: fa_email,
        link: "mailto:San%20Zhang<me@zahangsan.io>",
        content: "me@zhangsan.io",
    ),
    (
        icon: fa_phone,
        link: "tel:+86 133 3333 3333",
        content: "+86 133 3333 3333",
    ),
)

#resume_section("教育经历")

#resume_item(
  "家里蹲大学·计算机学院",
  "硕士生 | 计算机技术",
  "泵饶叙史掷陋谣邪苦豫锣旧技贸刃蛭！天绳顺。",
  "2024.09 -- 2027.06（预计）"
)

#resume_item(
  "家里蹲大学·软件工程学院",
  "软件工程",
  "普闯昨制动辞诬爸磨警据知示蝶这界解聪柔甚驳机禽赵。",
  "2020.09 -- 2024.06"
)

#resume_section([实践经历])

#resume_item(
  "某大厂",
  "实习生",
  "宇宙中心曹县",
  "2021.11 -- 至今"
)
#resume_desc("工作职责", "泵饶叙史掷陋谣邪苦豫锣旧技贸刃蛭！天绳顺。普闯昨制动辞诬爸磨警据知示蝶这界解聪柔甚驳机禽赵，郎吻骑藏池莲汰炫换布牌墓吐匹儡持涤贤奉访脂拱牺慧来患赞角混越美吓凑尸涉籼！背饥砂兄着农撑棒扑，虑蹄蒲管")
#resume_desc("工作成果", "获得了某大厂的认可")

#resume_section("发表论文")

- [XXXX 2023]*You*, #lorem(5), and #lorem(1). "#lorem(10)" Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition. 2023.

#resume_section([项目经历])

#resume_item(
  "一种基于深度学习的摸鱼方法",
  "项目负责人，主要完成人",
  [家里蹲大学·大创项目],
  "2021.11 -- 2022.11"
)
#resume_desc(
  "项目简介",
  "叠川卸瞬怨细祥锐萨弗宝，箭粘畏疯秘粮才箭痛队短铡堰姑则鳄绪，必慈看述米糖怀第坪定掌铭渔云；抵陷子苍熹话茫乎扯殉酯差述喜喊襄龙翼俄胞摘嫌幕。"
)
#resume_desc(
  "承担工作",
  [统筹安排小组计划，文献调研，算法设计与一部分实验，结论总结与报告编写。园厉搏尺枣段，彭覆般，家资颌寨偷迟色庭很大松锈虽堕纯烤？砧煮？]
)
#resume_desc(
  "项目成果",
  "环械深韦寨予助链削睛宴育症更碑矿火将任洁涤堆玲。"
)

#resume_section([竞赛经历与所获表彰])

#resume_desc(
  "专业技能竞赛",
  [肺己阐择萧精拜纱茎、掺圈剪绒鲢碧捞使永扩、逸螟株捆穿虽危熔烫行锄厉戒凹册嗨茄、王暗脉炮深竖政、怕蠢批割万柳休胁助黎嘲壤缓廷急烟顷寇；]
)
#resume_desc(
  "数学建模竞赛",
  [妹赋替茫竟督。祁澜条淘褶知溃牺谨挣霞逆梯墙免扫惯士梭栋陆理，案侨斋相巍阴狂煽川弧轮围惨畦素苷瓷总贾醛晒靳斥纤奶锡欲吭颁天总岁、罚。]
)
#resume_desc(
  "程序设计竞赛",
  [秀咂剧图硷辩股乳、陵粹垫绝展践服耘挡、谴妥烯峪莫宪闹怀、是牲假妈岘框联好望缩碧掀；]
)
#resume_desc(
  "奖学金",
  [楔株酿津。宋扩镗盼瞬催什斧菌潘谱昭逝迫申将酸保舰戒惊蕴鞘哩爬；]
)
#resume_desc(
  "其他表彰",
  [死途腋跳锻垒带抱滥狱肾杰丸蚕莎细宣逸祥时夜！绥活浦踏肥麦山银呀缚揭嘲值凹允穆表斤格略署。]
)

#resume_section([专业技能])

#resume_desc(
  "编程语言",
  [悬圭班，弄艘街胃海代遭颤淮，曝一帅典龟贝枕示耙灶婶挡叠师倾锦起苗待荡纪致旁报、泪哇衫截缺其爬制]
)
#resume_desc(
  "开发工具",
  [由讽涝稼曹涨拣，抖，壁汹役崎垒是牲供饮啉文熏灵压肆欺警巨育俞殖局说骑曾跗劲轻团舰直双品屁锐池雏趣笼久袖煤技艰哑密钠赌葱隙恋衫枝历陋拴访待禁吾、下赵釉轻禾。谴延来码灼逃。]
)
#resume_desc(
  "知识领域",
  [坎姜醋摄威昼仇恋棋赫侦殖烙每绥弃本蓟抑液亡抹蔑介属，拨波汰肥碰紧痰狂弯把鼎榆淤砧救搞。]
)
#resume_desc(
  "外语能力",
  [CET-6 666分、雅思 9.0。]
)