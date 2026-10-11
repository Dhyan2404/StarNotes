.class public Lcom/sun/org/apache/xml/internal/utils/res/XResources_ko;
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

    const-string v1, "ko"

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

    const/16 v1, 0x18

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "alphabet"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    const/16 v1, 0x1a

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

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v3, "numberGroups"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, p0, v3

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v2, v2, [C

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

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

    :array_0
    .array-data 2
        0x3131s
        0x3134s
        0x3137s
        0x3139s
        0x3141s
        0x3142s
        0x3145s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
        0x314fs
        0x3151s
        0x3153s
        0x3155s
        0x3157s
        0x315bs
        0x315cs
        0x3160s
        0x3161s
        0x3163s
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
        -0x3a4bs
        -0x4634s
        -0x3364s
        -0x43cfs
        -0x3d13s
    .end array-data

    nop

    :array_4
    .array-data 2
        -0x3884s
        -0x388cs
        -0x3f44s
        -0x3f54s
        -0x39dcs
        -0x38dfs
        -0x31a0s
        -0x2cecs
        -0x5294s
    .end array-data
.end method
