.class public Lorg/apache/poi/util/ChineseNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DI_ZHI:[Ljava/lang/String;

.field public static final HIGH_LEGAL:[Ljava/lang/String;

.field public static final HIGH_ZH:[Ljava/lang/String;

.field public static final LOWER_LEGAL:[Ljava/lang/String;

.field public static final LOWER_ZH:[Ljava/lang/String;

.field public static final MID_LEGAL:[Ljava/lang/String;

.field public static final MID_ZH:[Ljava/lang/String;

.field public static final TIAN_GAN:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->LOWER_ZH:[Ljava/lang/String;

    const-string v0, "\u5343"

    const-string v1, "\u767e"

    const-string v2, "\u5341"

    const-string v3, ""

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->MID_ZH:[Ljava/lang/String;

    const-string v4, ""

    const-string v5, "\u4e07"

    const-string v6, "\u4ebf"

    const-string v7, "\u5146"

    const-string v8, "\u4eac"

    const-string v9, "\u5793"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->HIGH_ZH:[Ljava/lang/String;

    const-string v4, "\u96f6"

    const-string v5, "\u58f9"

    const-string v6, "\u8cb3"

    const-string v7, "\u53c1"

    const-string v8, "\u8086"

    const-string v9, "\u4f0d"

    const-string v10, "\u9646"

    const-string v11, "\u67d2"

    const-string v12, "\u634c"

    const-string v13, "\u7396"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->LOWER_LEGAL:[Ljava/lang/String;

    const-string v0, "\u4f70"

    const-string v1, "\u62fe"

    const-string v2, "\u4edf"

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->MID_LEGAL:[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "\u842c"

    const-string v3, "\u4ebf"

    const-string v4, "\u5146"

    const-string v5, "\u4eac"

    const-string v6, "\u5793"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->HIGH_LEGAL:[Ljava/lang/String;

    const-string v1, "\u7532"

    const-string v2, "\u4e59"

    const-string v3, "\u4e19"

    const-string v4, "\u4e01"

    const-string v5, "\u620a"

    const-string v6, "\u5df1"

    const-string v7, "\u5e9a"

    const-string v8, "\u8f9b"

    const-string v9, "\u58ec"

    const-string v10, "\u7678"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->TIAN_GAN:[Ljava/lang/String;

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ChineseNumber;->DI_ZHI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Ljava/lang/StringBuilder;IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    sget-object v0, Lorg/apache/poi/util/ChineseNumber;->HIGH_LEGAL:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/util/ChineseNumber;->HIGH_ZH:[Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_1

    sget-object v1, Lorg/apache/poi/util/ChineseNumber;->LOWER_LEGAL:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/util/ChineseNumber;->LOWER_ZH:[Ljava/lang/String;

    :goto_1
    rem-int/lit16 v2, p1, 0x2710

    const/4 v3, 0x0

    if-lez v2, :cond_2

    aget-object v0, v0, p2

    invoke-virtual {p0, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2, p3}, Lorg/apache/poi/util/ChineseNumber;->convertLowerNumber(Ljava/lang/StringBuilder;IZ)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    const/16 v2, 0x2710

    if-le p1, v2, :cond_4

    if-ltz v0, :cond_3

    aget-object v0, v1, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    div-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/util/ChineseNumber;->convert(Ljava/lang/StringBuilder;IIZ)V

    :cond_4
    return-void
.end method

.method private static convertLowerNumber(Ljava/lang/StringBuilder;IZ)I
    .locals 7

    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/poi/util/ChineseNumber;->MID_LEGAL:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/util/ChineseNumber;->MID_ZH:[Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/poi/util/ChineseNumber;->LOWER_LEGAL:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/poi/util/ChineseNumber;->LOWER_ZH:[Ljava/lang/String;

    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_2
    if-lez p1, :cond_5

    rem-int/lit8 v5, p1, 0xa

    if-lez v5, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p2, v5

    invoke-virtual {v4, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    if-ge v3, v1, :cond_3

    aget-object v4, p2, v2

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    if-nez v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    return v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const p0, 0x35fce240

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChinese(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toChinese = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/poi/util/ChineseNumber;->toChineseLegal(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toChineseLegal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static toChinese(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Lorg/apache/poi/util/ChineseNumber;->convert(Ljava/lang/StringBuilder;IIZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toChineseLegal(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lorg/apache/poi/util/ChineseNumber;->convert(Ljava/lang/StringBuilder;IIZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toDiZhi(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v1, Lorg/apache/poi/util/ChineseNumber;->DI_ZHI:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_0

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTianGan(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v1, Lorg/apache/poi/util/ChineseNumber;->TIAN_GAN:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_0

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
