.class public Lcom/sun/org/apache/xml/internal/utils/res/XResources_zh_CN;
.super Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 5

    const/16 p0, 0xe

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ui_language"

    const-string v1, "zh"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const-string v0, "help_language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p0, v3

    const-string v0, "language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    const/16 v1, 0x1a

    new-array v4, v1, [C

    fill-array-data v4, :array_0

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v4, "alphabet"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, p0, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "tradAlphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "orientation"

    const-string v1, "LeftToRight"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "numbering"

    const-string v4, "multiplicative-additive"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, p0, v4

    const-string v0, "multiplierOrder"

    const-string v4, "follows"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, p0, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v4, "numberGroups"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, p0, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v3, v3, [C

    const v4, 0x96f6

    aput-char v4, v3, v2

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v2, "zero"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, p0, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v3, "multiplier"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, p0, v3

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "multiplierChar"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v2, [C

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "digits"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, p0, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    const-string v1, "tables"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    return-object p0

    nop

    :array_0
    .array-data 2
        -0xdfs
        -0xdes
        -0xdds
        -0xdcs
        -0xdbs
        -0xdas
        -0xd9s
        -0xd8s
        -0xd7s
        -0xd6s
        -0xd5s
        -0xd4s
        -0xd3s
        -0xd2s
        -0xd1s
        -0xd0s
        -0xcfs
        -0xces
        -0xcds
        -0xccs
        -0xcbs
        -0xcas
        -0xc9s
        -0xc8s
        -0xc7s
        -0xc6s
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_2
    .array-data 8
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_3
    .array-data 2
        0x4ebfs
        0x4e07s
        0x5343s
        0x767es
        0x5341s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x4e00s
        0x4e8cs
        0x4e09s
        0x56dbs
        0x4e94s
        0x516ds
        0x4e03s
        0x516bs
        0x4e5ds
    .end array-data
.end method
