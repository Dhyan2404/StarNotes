.class public Lcom/sunia/commonv2/util/HWRModelPredictionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_CHEM:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_GENERIC:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_VERTICAL_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final MATH_ZH:Lcom/sunia/commonv2/bean/ConfigBean;

.field private static final TAG:Ljava/lang/String; = "HWRModelPredictionUtil"

.field public static final ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

.field public static final en_us:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final math_calculator:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final math_chem:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final math_generic:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final math_vertical:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final math_zh:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sBufferSize:I = 0x80000

.field private static sMathSymbol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final zh_cn:Lcom/sunia/commonv2/bean/ConfigBean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "zh_CN.conf"

    const-string v2, "zh_CN"

    const-string v3, "recognize/conf/zh_CN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->zh_cn:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "en_US.conf"

    const-string v2, "en_US"

    const-string v3, "recognize/conf/en_US"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->en_us:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_calculator.conf"

    const-string v2, "math_calculator"

    const-string v3, "math/conf/math_calculator"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->math_calculator:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_chem.conf"

    const-string v2, "math_chem"

    const-string v3, "math/conf/math_chem"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CHEM:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->math_chem:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_zh.conf"

    const-string v2, "math_zh"

    const-string v3, "math/conf/math_zh"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_ZH:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->math_zh:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_generic.conf"

    const-string v2, "math_generic"

    const-string v3, "math/conf/math_generic"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_GENERIC:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->math_generic:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_vertical.conf"

    const-string v2, "math_vertical"

    const-string v3, "math/conf/math_vertical"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->math_vertical:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "math_vertical_calculator.conf"

    const-string v2, "math_vertical_calculator"

    const-string v3, "math/conf/math_vertical_calculator"

    invoke-direct {v0, v3, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->sMathSymbol:Ljava/util/List;

    const-string v1, "\\"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->sMathSymbol:Ljava/util/List;

    const-string v1, "_{"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->sMathSymbol:Ljava/util/List;

    const-string v1, "^{"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Ljava/lang/String;)Lcom/sunia/commonv2/bean/ConfigBean;
    .locals 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isEnUS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMathCalculator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMathVertical(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMathChem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CHEM:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMathZH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_ZH:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMathGeneric(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_GENERIC:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_6
    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0

    :cond_7
    :goto_0
    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    return-object p0
.end method

.method public static getConfigBean(Ljava/lang/String;)Lcom/sunia/commonv2/bean/ConfigBean;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\t"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->check(Ljava/lang/String;)Lcom/sunia/commonv2/bean/ConfigBean;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigBean,targetResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",configBean="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HWRModelPredictionUtil"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isChineseCharacter(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isChineseCharacter(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isEnUS(Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    aget-char v5, p0, v2

    aput v5, v0, v2

    const/16 v7, 0x61

    if-lt v5, v7, :cond_0

    const/16 v7, 0x7a

    if-le v5, v7, :cond_1

    :cond_0
    const/16 v7, 0x41

    if-lt v5, v7, :cond_2

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_2

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v7, ":;*&%$#@,\'.?!()"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v5, "0123456789"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    return v1

    :cond_6
    return v6
.end method

.method private static isMath(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->sMathSymbol:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isMathCalculator(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-char v3, p0, v2

    aput v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0123456789().+-="

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isMathChem(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMath(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "\\mathop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    move p0, v2

    move v1, p0

    :goto_0
    array-length v3, v0

    if-ge p0, v3, :cond_4

    aget-char v3, v0, p0

    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isChineseCharacter(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    aget-char v1, v0, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u4f53\u50ac\u5149\u51b7\u5242\u52a0\u5316\u56fa\u5c11\u5f3a\u6c14\u6d53\u6db2\u6eb6\u70b9\u70ed\u7167\u7194\u71c3\u7535\u7a00\u878d\u89e3\u8db3\u8fc7\u901a\u91cf\u9ad8\u6e29\u653e\u7eaf\u6c27\u9176"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method private static isMathGeneric(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMath(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isMathVertical(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\begin{array}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\hline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMathZH(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isMath(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isSuperscript(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    return v2

    :cond_1
    move p0, v3

    :goto_0
    array-length v4, v0

    if-ge p0, v4, :cond_4

    aget-char v4, v0, p0

    aput v4, v1, p0

    invoke-static {v4}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    aget v4, v1, p0

    invoke-static {v4}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->isSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private static isSuperscript(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\dot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isSymbol(I)Z
    .locals 1

    const/16 v0, 0x2460

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2469

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readAssertsFileToString(Ljava/io/InputStream;)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/BufferedInputStream;

    const/high16 v2, 0x80000

    invoke-direct {v1, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    new-array p0, v2, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, p0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    throw p0
.end method

.method public static test(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "bbk_data.txt"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->readAssertsFileToString(Ljava/io/InputStream;)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "HWRModelPredictionUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "split.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->getConfigBean(Ljava/lang/String;)Lcom/sunia/commonv2/bean/ConfigBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
