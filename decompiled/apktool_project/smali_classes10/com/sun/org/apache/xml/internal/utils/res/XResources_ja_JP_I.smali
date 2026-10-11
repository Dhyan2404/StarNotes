.class public Lcom/sun/org/apache/xml/internal/utils/res/XResources_ja_JP_I;
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
    .locals 4

    const/16 p0, 0xe

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ui_language"

    const-string v1, "ja"

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

    const/16 v1, 0x2f

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

    const-string v1, "multiplicative-additive"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "multiplierOrder"

    const-string v1, "follows"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;-><init>([I)V

    const-string v3, "numberGroups"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, p0, v3

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;-><init>([J)V

    const-string v3, "multiplier"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, p0, v3

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "multiplierChar"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v2, [C

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v1, "zero"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;

    new-array v1, v3, [C

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
        0x30a4s
        0x30eds
        0x30cfs
        0x30cbs
        0x30dbs
        0x30d8s
        0x30c8s
        0x30c1s
        0x30eas
        0x30ccs
        0x30ebs
        0x30f2s
        0x30efs
        0x30abs
        0x30e8s
        0x30bfs
        0x30ecs
        0x30bds
        0x30c4s
        0x30cds
        0x30cas
        0x30e9s
        0x30e0s
        0x30a6s
        0x30f0s
        0x30ces
        0x30aas
        0x30afs
        0x30e4s
        0x30des
        0x30b1s
        0x30d5s
        0x30b3s
        0x30a8s
        0x30c6s
        0x30a2s
        0x30b5s
        0x30ads
        0x30e6s
        0x30e1s
        0x30dfs
        0x30b7s
        0x30f1s
        0x30d2s
        0x30e2s
        0x30bbs
        0x30b9s
    .end array-data

    nop

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
        0x7fffffffffffffffL
        0x7fffffffffffffffL
        0x5f5e100
        0x2710
        0x3e8
        0x64
        0xa
    .end array-data

    :array_3
    .array-data 2
        0x4eacs
        0x5146s
        0x5104s
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
