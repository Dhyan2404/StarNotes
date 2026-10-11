.class public Lcom/u/u$AnimatedDashedBorderLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedDashedBorderLayout"
.end annotation


# static fields
.field private static final short:[S


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private cornerRadius:F

.field private dashGap:F

.field private dashLength:F

.field private path:Landroid/graphics/Path;

.field private phase:F

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fputphase(Lcom/u/u$AnimatedDashedBorderLayout;F)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "\u06e7\u06e8\u06e2"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v1, :cond_5

    :goto_1
    const-string v1, "\u06e7\u06e4"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :sswitch_1
    iput p1, p0, Lcom/u/u$AnimatedDashedBorderLayout;->phase:F

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v2, v2, -0x20fe

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v1, "\u06e6\u06e4\u06e5"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v1, v2

    const v2, -0x1ab02e

    xor-int/2addr v1, v2

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v1, :cond_1

    const/16 v1, 0x58

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e4\u06e4\u06e3"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    mul-int/2addr v1, v2

    const v2, 0x146e2c

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :sswitch_3
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v1, :cond_3

    const/16 v1, 0x18

    sput v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v1, "\u06e3\u06e3\u06e7"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    or-int/2addr v1, v2

    const v2, 0x1abdd1

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_2

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v1, :cond_4

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    :cond_4
    const-string v1, "\u06e5\u06e7\u06e5"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_5
    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/2addr v1, v2

    const v2, -0x1ab976

    xor-int/2addr v1, v2

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "6y9"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۧۥۡۧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->decode(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0xdcdd -> :sswitch_0
        0x1aa6ff -> :sswitch_2
        0x1ab340 -> :sswitch_4
        0x1abdcc -> :sswitch_6
        0x1abe83 -> :sswitch_5
        0x1ac1e7 -> :sswitch_3
        0x1ac621 -> :sswitch_1
    .end sparse-switch
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/u/u$AnimatedDashedBorderLayout;->short:[S

    return-void

    :array_0
    .array-data 2
        0x93as
        0x921s
        0x929s
        0x92bs
        0x95as
        0x92bs
        0x95as
        0x92bs
        0x95as
        0xca0s
        0xcbbs
        0xcb3s
        0xcc5s
        0xcc5s
        0xcc5s
        0xcc5s
        0xcc5s
        0xcc5s
        0x1c4s
        0x1d2s
        0x1d7s
        0x1d2s
        0x1d7s
        0x1d2s
        0x1d7s
        0x6b4s
        0x6d4s
        0x6d6s
        0x6d3s
        0x6a3s
        0x6d2s
        0x6a6s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "\u06e8\u06e3\u06e2"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v0

    :goto_0
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "\u06e0\u06e7\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/u/u$AnimatedDashedBorderLayout;->phase:F

    const-string v0, "\u06e7\u06e7\u06e3"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "EW"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۧۥۡۧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/2addr v1, v2

    const v2, 0x1ac18a

    xor-int/2addr v2, v1

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u06e6\u06e3\u06df"

    :goto_2
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    :sswitch_4
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x42

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e2\u06df\u06e4"

    goto :goto_2

    :cond_1
    const-string v0, "\u06e6\u06e3\u06df"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :sswitch_5
    invoke-static {p0, p1}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۢۡۡۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v2, v2, 0x1480

    rem-int/2addr v0, v2

    if-ltz v0, :cond_2

    const-string v0, "\u06e2\u06e2\u06df"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/2addr v0, v2

    const v2, 0x1aacd2

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "\u06e7\u06e0\u06e2"

    goto :goto_1

    :cond_3
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/2addr v0, v2

    const v2, 0x1ac9c0

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1aab5f -> :sswitch_0
        0x1aabbf -> :sswitch_2
        0x1aaea2 -> :sswitch_4
        0x1ab29f -> :sswitch_6
        0x1ac189 -> :sswitch_3
        0x1ac1c2 -> :sswitch_7
        0x1ac603 -> :sswitch_5
        0x1ac947 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    const-string v1, "\u06e1\u06e6"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v0

    :goto_0
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/u/u$AnimatedDashedBorderLayout;->phase:F

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "\u06e2\u06e3\u06e3"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    :sswitch_1
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "\u06e8\u06e5"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e4\u06e6\u06e7"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "8IHTzWB9CtJjts53"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->۟ۥ۠۠ۨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v1, v2

    const v2, 0x1c76c3

    add-int/2addr v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06df\u06e6\u06e2"

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_0

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v2

    const v2, 0x1b1e26

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/lit16 v2, v2, -0xe8e

    add-int/2addr v0, v2

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    const-string v0, "\u06e8\u06e7\u06df"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sub-int/2addr v0, v2

    const v2, 0xdc25

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :sswitch_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    rem-int/2addr v0, v2

    const v2, 0x1ababf

    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p0, p1}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۢۡۡۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    :cond_4
    const-string v0, "\u06e1\u06e2\u06e3"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc25 -> :sswitch_0
        0x1aa7db -> :sswitch_6
        0x1aab24 -> :sswitch_4
        0x1aaee2 -> :sswitch_3
        0x1ab2c2 -> :sswitch_2
        0x1abaa5 -> :sswitch_7
        0x1abe27 -> :sswitch_1
        0x1ac9a7 -> :sswitch_5
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    const-string v1, "\u06e0\u06df\u06e6"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/u/u$AnimatedDashedBorderLayout;->phase:F

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v1, :cond_4

    const/16 v1, 0x50

    sput v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v1, "\u06e3\u06e7\u06e8"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    :sswitch_1
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v1, "\u06e6\u06df\u06e6"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    mul-int/2addr v1, v2

    const v2, 0x16ed63

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v2, v2, -0x23a9

    add-int/2addr v1, v2

    if-ltz v1, :cond_2

    const/16 v1, 0x30

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e1\u06df\u06e6"

    :goto_1
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "\u06e0\u06df\u06e6"

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v1, "\u06e4\u06e5\u06e1"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_3
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v1, v2

    const v2, 0x1abd63

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_4
    invoke-static {p0, p1}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۢۡۡۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v1, v2

    const v2, 0x1b816c

    add-int/2addr v1, v2

    goto :goto_0

    :sswitch_5
    const-string v0, "VH0LHSb1nmp57OOY"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->۟ۥ۠۠ۨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->decode(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "\u06e3\u06e7\u06e8"

    goto :goto_1

    :cond_4
    const-string v1, "\u06e3\u06e0\u06e6"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto/16 :goto_0

    :sswitch_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v2, v2, -0x1716

    or-int/2addr v1, v2

    if-ltz v1, :cond_5

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v1, "\u06e4\u06e4\u06e3"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/2addr v1, v2

    const v2, 0x1aba48

    add-int/2addr v1, v2

    goto/16 :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1aaac7 -> :sswitch_0
        0x1ab629 -> :sswitch_4
        0x1ab704 -> :sswitch_6
        0x1aba48 -> :sswitch_7
        0x1aba63 -> :sswitch_1
        0x1aba80 -> :sswitch_3
        0x1ababf -> :sswitch_5
        0x1ac8ed -> :sswitch_2
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 17

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-string v5, "\u06e3\u06e6\u06e4"

    invoke-static {v5}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v5

    move v15, v1

    move/from16 v16, v5

    :goto_0
    sparse-switch v16, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static/range {p1 .. p1}, Lcom/u/۟ۦۧۡۢ;->ۣۨۤۦ(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦۥۣۧ(Ljava/lang/Object;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->۟۟ۤۦۢ(Ljava/lang/Object;)I

    move-result v1

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v5, v5, -0x187

    and-int/2addr v1, v5

    const/16 v5, 0x20

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    sget v5, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v7, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v7, v7, 0x1339

    mul-int/2addr v5, v7

    if-ltz v5, :cond_12

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v5, "\u06e2\u06e6\u06e6"

    invoke-static {v5}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v5

    move v15, v1

    move/from16 v16, v5

    goto :goto_0

    :cond_0
    :sswitch_1
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    rem-int/lit16 v5, v5, 0x1991

    or-int/2addr v1, v5

    if-ltz v1, :cond_1

    const-string v1, "\u06e6\u06e8\u06e2"

    :goto_1
    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto :goto_0

    :cond_1
    const-string v1, "\u06e2\u06e0\u06e0"

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/u/u$AnimatedDashedBorderLayout;->۠ۧۡ()[S

    move-result-object v1

    const/16 v5, 0x9

    sget v7, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v7, v7, -0x1c0

    const/16 v9, 0xc83

    invoke-static {v1, v5, v7, v9}, Lcom/u/ۣۨۢۤ;->ۣ۟ۧ۠ۧ([SIII)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v7, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/lit16 v7, v7, 0x10a4

    div-int/2addr v1, v7

    if-eqz v1, :cond_2

    const-string v1, "\u06e6\u06df\u06df"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move-object v9, v5

    move/from16 v16, v1

    goto :goto_0

    :cond_2
    const-string v1, "\u06e6\u06e7\u06e5"

    move-object v7, v10

    :goto_2
    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move-object v9, v5

    move-object v10, v7

    move/from16 v16, v1

    goto :goto_0

    :sswitch_3
    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/u/۟۟ۥ۟;->۠ۦۤ(Ljava/lang/Object;Z)V

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/lit16 v5, v5, 0xbe5

    sub-int/2addr v1, v5

    if-ltz v1, :cond_15

    const/16 v1, 0x3b

    sput v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v1, "\u06e3\u06e6\u06e4"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_4
    const/high16 v1, 0x41000000    # 8.0f

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/u/u$AnimatedDashedBorderLayout;->ۣ۟۠ۨۡ(Ljava/lang/Object;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->dashGap:F

    const-string v1, "\u06df\u06e0\u06df"

    move v2, v3

    goto :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/u/u$AnimatedDashedBorderLayout;->borderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۦۤ۠()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/u/ۣۨۢۤ;->۟ۦۣۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v1, :cond_3

    const/16 v1, 0x32

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06df\u06e5\u06e7"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_3
    move-object v1, v4

    :goto_3
    const-string v4, "\u06e8\u06df\u06e0"

    move-object v5, v4

    move-object v7, v1

    :goto_4
    invoke-static {v5}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move-object v4, v7

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/u$AnimatedDashedBorderLayout;->۠ۧۡ()[S

    move-result-object v1

    const/16 v5, 0x19

    sget v6, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    xor-int/lit16 v6, v6, -0x3b6

    const/16 v7, 0x697

    invoke-static {v1, v5, v6, v7}, Lcom/u/۟۟ۥ۟;->ۦۧۨ۠([SIII)Ljava/lang/String;

    move-result-object v6

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v5, v5, 0x160b

    add-int/2addr v1, v5

    if-ltz v1, :cond_4

    const-string v1, "\u06e7\u06e3\u06e5"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_4
    const-string v1, "\u06e6\u06df\u06df"

    move-object v5, v1

    move-object v7, v4

    goto :goto_4

    :sswitch_7
    if-eqz v2, :cond_f

    invoke-static {}, Lcom/u/u$AnimatedDashedBorderLayout;->۠ۧۡ()[S

    move-result-object v1

    const/4 v4, 0x0

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v5, v5, -0x110

    const/16 v7, 0x919

    invoke-static {v1, v4, v5, v7}, Lcom/u/۟۟ۥ۟;->ۦۧۨ۠([SIII)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v4, :cond_5

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    goto :goto_3

    :cond_5
    const-string v4, "\u06e4\u06e8\u06e8"

    move-object v5, v4

    move-object v7, v1

    :goto_5
    invoke-static {v5}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move-object v4, v7

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_8
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v1, :cond_6

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e4\u06e8\u06e8"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move-object v10, v6

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "\u06df\u06e1\u06e2"

    move-object v5, v9

    move-object v7, v6

    goto/16 :goto_2

    :sswitch_9
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v1

    if-gtz v1, :cond_7

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    const-string v1, "\u06df\u06e3\u06e8"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    move v2, v15

    goto/16 :goto_0

    :cond_7
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v1, v2

    const v2, 0x1ab262

    xor-int/2addr v1, v2

    move/from16 v16, v1

    move v2, v15

    goto/16 :goto_0

    :sswitch_a
    invoke-static/range {p0 .. p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۢۦۣۦ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->۟ۡۡۥ()Landroid/graphics/Paint$Style;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/u/ۣۨۢۤ;->۟ۦۣۡ۠(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v5

    if-gtz v5, :cond_8

    const/16 v5, 0x63

    sput v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    :goto_6
    const-string v5, "\u06e7\u06e5\u06e4"

    invoke-static {v5}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v5

    move-object v8, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :cond_8
    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v7, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v5, v7

    const v7, 0x1aa7a3

    add-int/2addr v5, v7

    move-object v8, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->rectF:Landroid/graphics/RectF;

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_a

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    :cond_9
    const-string v1, "\u06e7\u06e6\u06e6"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_a
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v1, v5

    const v5, 0x1aaf22

    add-int/2addr v1, v5

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_c
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/2addr v1, v5

    const v5, 0x1ab4cd

    add-int/2addr v1, v5

    move-object v12, v9

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_d
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/2addr v1, v5

    const v5, 0x1ab626

    xor-int/2addr v1, v5

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_e
    invoke-static {v10}, Lcom/u/۟۟ۥ۟;->ۣ۟۟ۧۤ(Ljava/lang/Object;)I

    move-result v7

    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v13, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/lit16 v13, v13, 0x175f

    div-int/2addr v5, v13

    if-gtz v5, :cond_b

    const-string v5, "\u06df\u06e6\u06e8"

    invoke-static {v5}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v5

    move-object v13, v1

    move v14, v7

    move/from16 v16, v5

    goto/16 :goto_0

    :cond_b
    const-string v5, "\u06e2\u06e4\u06e2"

    :goto_7
    invoke-static {v5}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v5

    move-object v13, v1

    move v14, v7

    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/u/u$AnimatedDashedBorderLayout;->۠ۧۡ()[S

    move-result-object v1

    const/16 v5, 0x12

    sget v7, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v7, v7, -0x1b2

    const/16 v10, 0x1e7

    invoke-static {v1, v5, v7, v10}, Lcom/u/ۣ۟ۦ۟;->۟ۦۦۣۢ([SIII)Ljava/lang/String;

    move-result-object v10

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v5, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/2addr v1, v5

    const v5, 0x1ac73c

    add-int/2addr v1, v5

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_10
    const/high16 v1, 0x41b00000    # 22.0f

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/u/u$AnimatedDashedBorderLayout;->ۣ۟۠ۨۡ(Ljava/lang/Object;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->cornerRadius:F

    const/high16 v1, 0x41400000    # 12.0f

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/u/u$AnimatedDashedBorderLayout;->ۣ۟۠ۨۡ(Ljava/lang/Object;F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->dashLength:F

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v1, :cond_9

    const-string v1, "\u06df\u06e1\u06e2"

    :goto_8
    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_11
    invoke-static/range {p0 .. p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/u/ۣ۟ۦ۟;->ۣ۟ۤۦۦ(Ljava/lang/Object;I)V

    invoke-static/range {p0 .. p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/u/u$AnimatedDashedBorderLayout;->ۣ۟۠ۨۡ(Ljava/lang/Object;F)F

    move-result v5

    invoke-static {v1, v5}, Lcom/u/۟ۦۧۡۢ;->ۥۢۡ۠(Ljava/lang/Object;F)V

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v1

    if-gtz v1, :cond_c

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v1, "\u06e7\u06e4\u06e2"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/u/u$AnimatedDashedBorderLayout;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v13, v11}, Lcom/u/ۣ۟ۦ۟;->ۣ۟ۤۦۦ(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_d

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    :cond_c
    const-string v1, "\u06e5\u06e0\u06e4"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_d
    move-object v1, v8

    goto/16 :goto_6

    :sswitch_13
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v1, :cond_e

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e8\u06e8\u06e1"

    move-object v5, v9

    move-object v7, v10

    goto/16 :goto_2

    :cond_e
    const-string v1, "\u06e3\u06e6\u06e4"

    move-object v5, v9

    move-object v7, v10

    goto/16 :goto_2

    :cond_f
    :sswitch_14
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/2addr v1, v5

    const v5, 0x1aa8c4

    add-int/2addr v1, v5

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_15
    move v1, v11

    :cond_10
    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v7, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/lit16 v7, v7, 0x10fc

    or-int/2addr v5, v7

    if-ltz v5, :cond_11

    const/16 v5, 0x3d

    sput v5, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v5, "\u06e2\u06e3\u06e7"

    move-object v7, v4

    move v11, v1

    goto/16 :goto_5

    :cond_11
    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v7, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/2addr v5, v7

    const v7, 0x1ab371

    add-int/2addr v5, v7

    move v11, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :cond_12
    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v7, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/2addr v5, v7

    const v7, -0x1ac09c

    xor-int/2addr v5, v7

    move v15, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "\u06df\u06e6\u06e8"

    goto/16 :goto_8

    :sswitch_17
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v5, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v5, v5, 0x980

    or-int/2addr v1, v5

    if-ltz v1, :cond_13

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e7\u06df\u06df"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_13
    const-string v1, "\u06df\u06e1\u06e2"

    move-object v5, v1

    move-object v7, v4

    goto/16 :goto_5

    :sswitch_18
    invoke-static/range {p0 .. p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۧ۟ۥۡ()Landroid/graphics/Paint$Cap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/u/ۣۨۢۤ;->ۧ۠ۤ۟(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->path:Landroid/graphics/Path;

    move-object v1, v12

    :goto_9
    const-string v5, "\u06e6\u06e3\u06df"

    invoke-static {v5}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v5

    move-object v12, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_19
    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v1, v5

    const v5, -0x1aab07

    xor-int/2addr v1, v5

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_14

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-object v1, v4

    goto :goto_9

    :cond_14
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/2addr v1, v5

    const v5, 0x1abd23

    add-int/2addr v1, v5

    move-object v12, v4

    move/from16 v16, v1

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {v12}, Lcom/u/۟۟ۥ۟;->ۣ۟۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    if-eqz v2, :cond_10

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v7, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/lit16 v7, v7, -0x3a3

    rem-int/2addr v5, v7

    if-ltz v5, :cond_16

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move v11, v1

    :cond_15
    const-string v5, "\u06e6\u06df\u06e7"

    move-object v1, v13

    move v7, v14

    goto/16 :goto_7

    :cond_16
    const-string v5, "\u06e7\u06e3\u06e5"

    invoke-static {v5}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v5

    move v11, v1

    move/from16 v16, v5

    goto/16 :goto_0

    :sswitch_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aa71e -> :sswitch_0
        0x1aa740 -> :sswitch_e
        0x1aa77e -> :sswitch_13
        0x1aa784 -> :sswitch_17
        0x1aa7a3 -> :sswitch_5
        0x1aa7c1 -> :sswitch_2
        0x1aa7e1 -> :sswitch_17
        0x1aab42 -> :sswitch_d
        0x1aaf20 -> :sswitch_1c
        0x1ab262 -> :sswitch_7
        0x1ab26a -> :sswitch_6
        0x1ab2e0 -> :sswitch_12
        0x1ab322 -> :sswitch_d
        0x1ab627 -> :sswitch_1b
        0x1ab6e1 -> :sswitch_3
        0x1abae4 -> :sswitch_1a
        0x1abda9 -> :sswitch_18
        0x1abde5 -> :sswitch_1
        0x1abe7d -> :sswitch_19
        0x1abea2 -> :sswitch_15
        0x1ac146 -> :sswitch_8
        0x1ac14e -> :sswitch_10
        0x1ac168 -> :sswitch_9
        0x1ac1c2 -> :sswitch_b
        0x1ac244 -> :sswitch_c
        0x1ac585 -> :sswitch_16
        0x1ac589 -> :sswitch_f
        0x1ac5a5 -> :sswitch_14
        0x1ac5c6 -> :sswitch_a
        0x1ac5e7 -> :sswitch_4
        0x1ac8c9 -> :sswitch_11
    .end sparse-switch
.end method

.method private startAnimation()V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "\u06e0\u06e6\u06e3"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v4

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GDbH1eHdFzZvyeRzZ98qVNJhC"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->۟ۤۢۨۤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v1

    if-gtz v1, :cond_5

    const-string v1, "\u06e2\u06df\u06e0"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :sswitch_1
    iput-object v2, p0, Lcom/u/u$AnimatedDashedBorderLayout;->animator:Landroid/animation/ValueAnimator;

    const-string v1, "\u06e7\u06e8\u06e7"

    :goto_1
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :sswitch_2
    const-wide/16 v4, -0x27

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    int-to-long v6, v1

    xor-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/u/ۣ۟ۦ۟;->ۣۣ۟۠۠(Ljava/lang/Object;J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "\u06e0\u06e6\u06e3"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    const-string v1, "\u06e6\u06e8\u06e4"

    :goto_2
    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-static {v1, v4}, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۤۡ(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/lit16 v4, v4, 0x1493

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    const/16 v1, 0x14

    sput v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v1, "\u06e7\u06e5"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v1, v4

    const v4, 0x1ac5a5

    xor-int/2addr v1, v4

    move v4, v1

    goto :goto_0

    :cond_2
    :sswitch_4
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/lit16 v4, v4, 0x247f

    sub-int/2addr v1, v4

    if-eqz v1, :cond_3

    const/16 v1, 0x5c

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e1\u06e3\u06e2"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v1, v4

    const v4, 0x1ab31b

    add-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/u/u$AnimatedDashedBorderLayout$1;

    invoke-direct {v4, p0}, Lcom/u/u$AnimatedDashedBorderLayout$1;-><init>(Lcom/u/u$AnimatedDashedBorderLayout;)V

    invoke-static {v1, v4}, Lcom/u/ۣ۟ۦ۟;->۟ۦۧۨۢ(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v1, :cond_4

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v1, "\u06e1\u06e6\u06e1"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/2addr v1, v4

    const v4, 0x1ac058

    add-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v1

    if-gtz v1, :cond_a

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    mul-int/lit16 v4, v4, 0x23a4

    or-int/2addr v1, v4

    if-ltz v1, :cond_6

    :cond_5
    const-string v1, "\u06e2\u06e6\u06e1"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "\u06e7\u06e5"

    :goto_3
    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/2addr v3, v4

    const v4, 0x1aaf80

    xor-int/2addr v4, v3

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_8
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->ۡ۠ۥ۠(Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_7

    const/16 v1, 0x11

    sput v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v1, "\u06e7\u06e8\u06e7"

    goto/16 :goto_1

    :cond_7
    const-string v1, "\u06e1\u06e4\u06e3"

    :goto_4
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :sswitch_9
    if-eqz v3, :cond_2

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v1, :cond_8

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v1, "\u06df\u06e0\u06e3"

    :goto_5
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sub-int/2addr v1, v4

    const v4, 0x1aab7b

    xor-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_0

    :sswitch_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v1, :cond_9

    const-string v1, "\u06e1\u06e7\u06e6"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :cond_9
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/2addr v1, v4

    const v4, 0x1ab126

    add-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_0

    :cond_a
    :sswitch_b
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/lit16 v4, v4, 0x847

    div-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/16 v1, 0x45

    sput v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v1, "\u06e0\u06e0\u06e1"

    goto :goto_3

    :cond_b
    const-string v1, "\u06e2\u06e1\u06df"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :sswitch_c
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/lit16 v4, v4, -0x1426

    add-int/2addr v1, v4

    if-gtz v1, :cond_c

    const/16 v1, 0x3c

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e1\u06df\u06e0"

    goto :goto_4

    :cond_c
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v1, v4

    const v4, -0x1aaba0

    xor-int/2addr v1, v4

    move v4, v1

    goto/16 :goto_0

    :sswitch_d
    invoke-static {v3}, Lcom/u/۟ۦۧۡۢ;->۟ۦۨۧۤ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u06e0\u06e2\u06e8"

    goto :goto_5

    :sswitch_e
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    xor-int/lit16 v4, v4, 0x1b6

    invoke-static {v1, v4}, Lcom/u/ۣۨۢۤ;->ۣ۟۠۟(Ljava/lang/Object;I)V

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/lit16 v4, v4, -0x1aab

    xor-int/2addr v1, v4

    if-ltz v1, :cond_d

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e1\u06e4\u06e3"

    goto/16 :goto_2

    :cond_d
    const-string v1, "\u06e2\u06df\u06e0"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v4, v1

    goto/16 :goto_0

    :sswitch_f
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟۟ۦ۠ۥ(Ljava/lang/Object;)F

    move-result v4

    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۡۢۥۤ(Ljava/lang/Object;)F

    move-result v5

    add-float/2addr v4, v5

    aput v4, v1, v2

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->۟ۤۨۤ۟(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v4, v4, -0x18c4

    xor-int/2addr v2, v4

    if-gtz v2, :cond_e

    const-string v2, "\u06e7\u06e4\u06e2"

    invoke-static {v2}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v4

    move-object v2, v1

    goto/16 :goto_0

    :cond_e
    const-string v2, "\u06e8\u06e5\u06e1"

    invoke-static {v2}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v4

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdcde -> :sswitch_0
        0x1aa722 -> :sswitch_b
        0x1aa744 -> :sswitch_4
        0x1aab26 -> :sswitch_6
        0x1aab9d -> :sswitch_7
        0x1aaf20 -> :sswitch_10
        0x1aaf5c -> :sswitch_d
        0x1aaf80 -> :sswitch_9
        0x1ab243 -> :sswitch_3
        0x1ab280 -> :sswitch_10
        0x1ab31b -> :sswitch_f
        0x1ab31d -> :sswitch_a
        0x1abe7e -> :sswitch_8
        0x1ac1a6 -> :sswitch_c
        0x1ac262 -> :sswitch_e
        0x1ac5a5 -> :sswitch_5
        0x1ac626 -> :sswitch_2
        0x1ac984 -> :sswitch_1
    .end sparse-switch
.end method

.method private stopAnimation()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "\u06e4\u06e1\u06e4"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move v3, v0

    :goto_0
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput-object v2, p0, Lcom/u/u$AnimatedDashedBorderLayout;->animator:Landroid/animation/ValueAnimator;

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_4

    const-string v0, "\u06e4\u06e1\u06e4"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :sswitch_1
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣۧ۠ۡ(Ljava/lang/Object;)V

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/lit16 v3, v3, 0x18af

    add-int/2addr v0, v3

    if-ltz v0, :cond_0

    const-string v0, "\u06e6\u06e2\u06e6"

    :goto_1
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e1\u06e4\u06e5"

    goto :goto_1

    :sswitch_2
    if-eqz v1, :cond_5

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_1

    :cond_1
    const-string v0, "\u06e4\u06e5\u06e7"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/lit16 v3, v3, -0x2026

    xor-int/2addr v1, v3

    if-ltz v1, :cond_2

    :cond_2
    const-string v1, "\u06e8\u06e0\u06e1"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v3

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v3, v3, 0x21bf

    or-int/2addr v0, v3

    if-ltz v0, :cond_3

    const/16 v0, 0x43

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e3\u06e7\u06e1"

    :goto_2
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e4\u06e1\u06e4"

    goto :goto_2

    :cond_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v3

    const v3, 0x1acd5d

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :cond_5
    :sswitch_5
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_6

    const-string v0, "\u06e7\u06e5\u06e0"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_6
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v3

    const v3, -0x1aca19

    xor-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aaf22 -> :sswitch_0
        0x1aba07 -> :sswitch_3
        0x1aba86 -> :sswitch_1
        0x1ac1aa -> :sswitch_5
        0x1ac8e9 -> :sswitch_2
        0x1ac9aa -> :sswitch_6
        0x1ac9c9 -> :sswitch_4
    .end sparse-switch
.end method

.method public static ۟۟ۦ۠ۥ(Ljava/lang/Object;)F
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e7\u06e6\u06e4"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v1, v2

    move v3, v2

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_5

    const-string v0, "\u06e5\u06e4\u06e2"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/lit16 v4, v4, -0x91a

    xor-int/2addr v0, v4

    if-gtz v0, :cond_0

    const-string v0, "\u06e7\u06e6\u06e4"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e3\u06e5\u06df"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/lit16 v3, v3, 0x667

    add-int/2addr v0, v3

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e0\u06e1\u06e2"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    mul-int/2addr v0, v3

    const v3, 0x1c63dc

    add-int/2addr v0, v3

    move v3, v1

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-ltz v0, :cond_7

    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/lit16 v4, v4, -0x151

    xor-int/2addr v0, v4

    if-ltz v0, :cond_2

    :cond_2
    const-string v0, "\u06e6\u06e2\u06e3"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/lit16 v4, v4, 0x166

    xor-int/2addr v0, v4

    if-gtz v0, :cond_3

    const/16 v0, 0x52

    sput v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v0, "\u06e6\u06e4\u06e1"

    :goto_2
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v0, v4

    const v4, 0x1ac5e4

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_5
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->dashLength:F

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v4, v4, -0x14bd

    or-int/2addr v0, v4

    if-ltz v0, :cond_4

    const-string v0, "\u06e3\u06e5\u06e2"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v0, v4

    const v4, 0x1b2568

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    mul-int/2addr v0, v3

    const v3, 0x14530c

    add-int/2addr v0, v3

    move v3, v2

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v4

    const v4, 0x1ab2c6

    xor-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v0, "\u06e4\u06e3\u06e5"

    goto/16 :goto_1

    :cond_6
    const-string v0, "\u06e3\u06e5\u06e2"

    goto :goto_2

    :cond_7
    :sswitch_8
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    or-int/2addr v0, v4

    const v4, 0x1ac2a9

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_9
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1aab01 -> :sswitch_0
        0x1aaf5d -> :sswitch_8
        0x1ab2c6 -> :sswitch_7
        0x1ab6bd -> :sswitch_6
        0x1ab6c0 -> :sswitch_9
        0x1aba04 -> :sswitch_2
        0x1abe23 -> :sswitch_4
        0x1abe65 -> :sswitch_7
        0x1ac1a7 -> :sswitch_5
        0x1ac220 -> :sswitch_1
        0x1ac5e5 -> :sswitch_3
    .end sparse-switch
.end method

.method public static ۣ۟۠ۨۡ(Ljava/lang/Object;F)F
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e8\u06e0"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v1, v2

    move v3, v2

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_6

    const/4 v0, 0x7

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06df\u06e8\u06e5"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/2addr v0, v4

    const v4, 0x1ac762

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    :sswitch_2
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/lit16 v4, v4, -0x10de

    mul-int/2addr v0, v4

    if-gtz v0, :cond_1

    const-string v0, "\u06e0\u06e7\u06e1"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e5\u06e4\u06e6"

    :goto_2
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_2

    const-string v0, "\u06e8\u06e0"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e6\u06e5\u06e7"

    goto :goto_1

    :sswitch_4
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_3

    :cond_3
    const-string v0, "\u06e7\u06e4\u06e8"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v3, v1

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x2d

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e4\u06e2\u06e0"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v2

    goto :goto_0

    :cond_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/2addr v0, v3

    const v3, 0x1abd6b

    add-int/2addr v0, v3

    move v3, v2

    goto :goto_0

    :sswitch_6
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/u/u;->-$$Nest$smdpToPxFloat(Landroid/content/Context;F)F

    move-result v1

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v4, v4, -0x1e5e

    mul-int/2addr v0, v4

    if-gtz v0, :cond_5

    const-string v0, "\u06e8\u06e6\u06e5"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/2addr v0, v4

    const v4, 0x1aa819

    add-int/2addr v0, v4

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    mul-int/2addr v0, v4

    const v4, 0x18f721

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v4, v4, 0x81f

    xor-int/2addr v0, v4

    if-ltz v0, :cond_7

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e2\u06e1\u06e5"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sub-int/2addr v0, v4

    const v4, 0x1ac593

    xor-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_8

    const/16 v0, 0x2b

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e3\u06e6\u06e1"

    goto/16 :goto_2

    :cond_8
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v4

    const v4, 0xdcf8

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_9
    return v3

    :sswitch_data_0
    .sparse-switch
        0xdcf8 -> :sswitch_0
        0x1aa81c -> :sswitch_4
        0x1ab286 -> :sswitch_1
        0x1ab605 -> :sswitch_3
        0x1ab663 -> :sswitch_2
        0x1aba22 -> :sswitch_6
        0x1abe27 -> :sswitch_7
        0x1ac208 -> :sswitch_1
        0x1ac589 -> :sswitch_5
        0x1ac5ab -> :sswitch_9
        0x1ac9a7 -> :sswitch_8
    .end sparse-switch
.end method

.method public static ۟ۡۡۡۨ(Ljava/lang/Object;)Landroid/graphics/RectF;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e3\u06e7\u06e4"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :cond_0
    :sswitch_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v4, v4, -0xeaf

    sub-int/2addr v0, v4

    if-gtz v0, :cond_2

    const-string v0, "\u06e7\u06e3\u06e1"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-gez v0, :cond_0

    :goto_1
    const-string v0, "\u06e6\u06e8\u06e4"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/lit16 v4, v4, 0xe08

    xor-int/2addr v0, v4

    if-ltz v0, :cond_1

    const/16 v0, 0x52

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e4\u06df\u06e1"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e3\u06e7\u06e4"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e5\u06e5\u06e2"

    :goto_2
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/lit16 v4, v4, 0x633

    rem-int/2addr v0, v4

    if-eqz v0, :cond_3

    const-string v0, "\u06e1\u06e5\u06e8"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v0, v4

    const v4, 0x1ac2f7

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_4
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget-object v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->rectF:Landroid/graphics/RectF;

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x39

    sput v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v0, "\u06e3\u06e7\u06e6"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/2addr v0, v4

    const v4, 0x1ab031

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_5

    const/16 v0, 0x12

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    move-object v0, v1

    :goto_3
    const-string v3, "\u06e4\u06e3\u06e5"

    invoke-static {v3}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v4

    move-object v3, v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    mul-int/2addr v0, v3

    const v3, 0x170035

    xor-int/2addr v0, v3

    move-object v3, v1

    move v4, v0

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_6

    const-string v0, "\u06e2\u06e2\u06e8"

    goto :goto_2

    :cond_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    rem-int/2addr v0, v4

    const v4, -0x1aaf06

    xor-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/lit16 v4, v4, 0x1186

    div-int/2addr v0, v4

    if-gtz v0, :cond_7

    const/4 v0, 0x3

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/2addr v0, v4

    const v4, 0x1ab605

    xor-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v3, v3, 0x1617

    add-int/2addr v0, v3

    if-gtz v0, :cond_8

    const/16 v0, 0x42

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e1\u06e4\u06df"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v2

    move v4, v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    goto :goto_3

    :sswitch_9
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc81 -> :sswitch_0
        0x1aab5c -> :sswitch_6
        0x1aaf1c -> :sswitch_9
        0x1aaf44 -> :sswitch_5
        0x1ab605 -> :sswitch_6
        0x1ab700 -> :sswitch_1
        0x1ab702 -> :sswitch_2
        0x1aba46 -> :sswitch_7
        0x1abd8d -> :sswitch_8
        0x1abe42 -> :sswitch_3
        0x1ac262 -> :sswitch_4
    .end sparse-switch
.end method

.method public static ۟ۡۢۥۤ(Ljava/lang/Object;)F
    .locals 6

    const/4 v1, 0x0

    const-string v0, "\u06e1\u06e8\u06e7"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v4, v1

    move v2, v1

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/lit16 v3, v3, -0x7b0

    or-int/2addr v0, v3

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e6\u06e5\u06e1"

    :goto_1
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v2

    const v2, 0xe001

    add-int/2addr v0, v2

    move v2, v4

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_2
    const-string v2, "\u06e1\u06e4\u06e0"

    move-object v3, v2

    move v5, v0

    :goto_3
    invoke-static {v3}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v2, v5

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v0, v2

    const v2, 0x1ac40a

    add-int/2addr v0, v2

    move v2, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x115

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-ltz v0, :cond_3

    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/lit16 v3, v3, 0xea0

    or-int/2addr v0, v3

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e6\u06e2\u06e0"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :sswitch_4
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x9

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e3\u06e0\u06df"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "\u06e7\u06e0\u06e4"

    goto :goto_1

    :sswitch_5
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v0

    if-gtz v0, :cond_5

    const/16 v0, 0x56

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e7\u06e6\u06e7"

    :goto_4
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "\u06e1\u06e8\u06e7"

    goto :goto_4

    :sswitch_6
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/lit16 v3, v3, 0x15d6

    xor-int/2addr v0, v3

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e7\u06e0\u06e4"

    :goto_5
    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e1\u06e4"

    goto :goto_5

    :sswitch_7
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v0, v3

    const v3, 0x1ab323

    add-int/2addr v0, v3

    goto/16 :goto_0

    :sswitch_8
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget v4, v0, Lcom/u/u$AnimatedDashedBorderLayout;->dashGap:F

    const-string v0, "\u06e8\u06e8\u06e3"

    move-object v3, v0

    move v5, v2

    goto/16 :goto_3

    :sswitch_9
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc23 -> :sswitch_0
        0xdc7e -> :sswitch_9
        0x1aaf1d -> :sswitch_8
        0x1aaf5d -> :sswitch_5
        0x1aafa0 -> :sswitch_3
        0x1ab324 -> :sswitch_2
        0x1abea0 -> :sswitch_6
        0x1ac1a4 -> :sswitch_0
        0x1ac526 -> :sswitch_4
        0x1ac52b -> :sswitch_7
        0x1ac9e3 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ۟ۢۡۡۡ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "\u06e0\u06e5\u06e1"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move-object v2, v0

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06df"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e0\u06e5\u06e1"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/2addr v0, v1

    const v1, 0x1aabc1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_6

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/lit16 v1, v1, 0x41a

    rem-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/16 v0, 0xb

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    :cond_1
    const-string v0, "\u06e3\u06e7\u06df"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "e3mMJpLcdMOdM"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->۟ۥ۠۠ۨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v2, v2, -0xdcf

    or-int/2addr v1, v2

    if-ltz v1, :cond_2

    const-string v1, "\u06e3\u06e5\u06e7"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move-object v2, v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/2addr v1, v2

    const v2, -0x1abe07

    xor-int/2addr v1, v2

    move-object v2, v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-lez v0, :cond_4

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/lit16 v1, v1, -0x6b5

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    const-string v0, "\u06e1\u06e2\u06e5"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e8\u06e3\u06e0"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_4
    :sswitch_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_5

    const-string v0, "\u06e5\u06e5\u06e0"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sub-int/2addr v0, v1

    const v1, 0x1ab775

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    :sswitch_6
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_7

    const-string v0, "\u06e0\u06e2\u06e3"

    goto :goto_2

    :cond_7
    const-string v0, "\u06e3\u06e7\u06df"

    goto/16 :goto_1

    :sswitch_7
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/lit16 v1, v1, -0xd8a

    add-int/2addr v0, v1

    if-gtz v0, :cond_8

    const/16 v0, 0x44

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e1\u06df\u06e7"

    goto/16 :goto_1

    :cond_8
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v1

    const v1, -0x1aa8ff

    xor-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v1, v1, 0xf6

    mul-int/2addr v0, v1

    if-gtz v0, :cond_1

    const/16 v0, 0x3e

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e8\u06e3\u06e0"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :sswitch_9
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/u/u$AnimatedDashedBorderLayout;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    :cond_9
    const-string v0, "\u06e1\u06e5\u06e4"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v1

    const v1, 0x1aa6d1

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdcfa -> :sswitch_0
        0x1aa707 -> :sswitch_0
        0x1aa7b9 -> :sswitch_2
        0x1aab7c -> :sswitch_4
        0x1aaec5 -> :sswitch_6
        0x1aaee4 -> :sswitch_7
        0x1aaf40 -> :sswitch_3
        0x1ab6c5 -> :sswitch_1
        0x1ab6fb -> :sswitch_a
        0x1aba64 -> :sswitch_5
        0x1abe9e -> :sswitch_8
        0x1ac945 -> :sswitch_9
    .end sparse-switch
.end method

.method public static ۟ۢۨ۠ۨ(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "\u06df\u06e5\u06e5"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/lit16 v1, v1, 0x24b6

    div-int/2addr v0, v1

    if-eqz v0, :cond_3

    const-string v0, "\u06e4\u06df\u06e8"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_0

    const/16 v0, 0x53

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e2\u06e7"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v0, v1

    const v1, 0x1aa7dd

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :sswitch_2
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v0, :cond_2

    const/16 v0, 0xe

    sput v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v0, "\u06e7\u06e8\u06e5"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e2\u06e7"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "\u06e7\u06e2\u06e7"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_4

    const/16 v0, 0x59

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e2\u06e1\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "\u06e3\u06e4\u06e2"

    goto :goto_1

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v1, v1, -0x6ee

    div-int/2addr v0, v1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e6\u06e0\u06e8"

    goto :goto_1

    :cond_5
    const-string v0, "\u06df\u06e5\u06e5"

    goto :goto_1

    :sswitch_5
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    invoke-direct {v0}, Lcom/u/u$AnimatedDashedBorderLayout;->stopAnimation()V

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06df\u06e5\u06e5"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e3\u06e4\u06e2"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0xdc45 -> :sswitch_0
        0x1aa783 -> :sswitch_2
        0x1aa7bf -> :sswitch_1
        0x1aa7d8 -> :sswitch_5
        0x1ab6a1 -> :sswitch_6
        0x1ab9c5 -> :sswitch_3
        0x1ab9cd -> :sswitch_4
        0x1ac56c -> :sswitch_3
    .end sparse-switch
.end method

.method public static ۟ۤۨۤۥ(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "\u06e0\u06e4\u06e0"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v0, v1

    const v1, -0x1aab19

    xor-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-lez v0, :cond_3

    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/lit16 v1, v1, 0x32e

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e1\u06e5\u06e0"

    :goto_1
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v0, v1

    const v1, 0x1ab9cc

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/lit16 v1, v1, 0x4e6

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    const/16 v0, 0xf

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e0\u06e1"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v1

    const v1, -0x1abac4

    xor-int/2addr v0, v1

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_2

    const/16 v0, 0x25

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06df\u06e2\u06e1"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sub-int/2addr v0, v1

    const v1, 0xdacb

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    :sswitch_4
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "\u06e0\u06e1\u06e0"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v1

    const v1, 0x19c655

    xor-int/2addr v0, v1

    goto :goto_0

    :sswitch_5
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    invoke-direct {v0}, Lcom/u/u$AnimatedDashedBorderLayout;->startAnimation()V

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    rem-int/lit16 v1, v1, 0xceb

    mul-int/2addr v0, v1

    if-gtz v0, :cond_5

    const/16 v0, 0x35

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e2\u06e4\u06e6"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-string v0, "\u06e2\u06e8"

    goto :goto_1

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc46 -> :sswitch_6
        0x1aaae2 -> :sswitch_2
        0x1aab5c -> :sswitch_1
        0x1aaf3c -> :sswitch_3
        0x1ab2e4 -> :sswitch_4
        0x1ab9ca -> :sswitch_5
        0x1aba0a -> :sswitch_3
    .end sparse-switch
.end method

.method public static ۟ۥۣۤ۟(Ljava/lang/Object;)F
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06e3\u06e2\u06e2"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    move v2, v4

    move v1, v4

    :goto_0
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/lit16 v3, v3, -0x2fd

    sub-int/2addr v0, v3

    if-ltz v0, :cond_8

    const-string v0, "\u06e4\u06e7\u06e5"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-ltz v0, :cond_3

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/lit16 v3, v3, -0x1e41

    rem-int/2addr v0, v3

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move v0, v1

    :goto_1
    const-string v1, "\u06df\u06e8\u06e0"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v3

    move v1, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v3

    const v3, 0x1aae02

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/2addr v0, v3

    const v3, 0x1aae12

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    xor-int/lit16 v3, v3, 0x1271

    xor-int/2addr v0, v3

    if-gtz v0, :cond_1

    const/16 v0, 0x48

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e5\u06e6"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    or-int/2addr v0, v3

    const v3, 0x1ab7e6

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/lit16 v1, v1, -0x2247

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    const-string v0, "\u06e0\u06df\u06e2"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    move v1, v4

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/2addr v0, v1

    const v1, 0x1aa741

    add-int/2addr v0, v1

    move v3, v0

    move v1, v4

    goto/16 :goto_0

    :cond_3
    :sswitch_5
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_4

    const/16 v0, 0x1a

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e3\u06e4\u06e4"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "\u06e1\u06df\u06e3"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v1, v1, 0x1eaa

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v0, "\u06e8\u06e6\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    move v1, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :sswitch_7
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget v2, v0, Lcom/u/u$AnimatedDashedBorderLayout;->cornerRadius:F

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v0, 0x31

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e2\u06e8"

    :goto_3
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e2\u06df\u06df"

    goto :goto_3

    :sswitch_8
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e2\u06e6\u06e5"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v0, v3

    const v3, 0x1aaf1f

    add-int/2addr v0, v3

    move v3, v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u06df\u06e8\u06e0"

    goto/16 :goto_2

    :sswitch_9
    return v1

    :sswitch_data_0
    .sparse-switch
        0xdc46 -> :sswitch_0
        0x1aa741 -> :sswitch_2
        0x1aa817 -> :sswitch_9
        0x1aaac3 -> :sswitch_7
        0x1aae85 -> :sswitch_8
        0x1aae86 -> :sswitch_0
        0x1aaf1f -> :sswitch_4
        0x1ab242 -> :sswitch_6
        0x1ab321 -> :sswitch_3
        0x1ab663 -> :sswitch_1
        0x1ac9a8 -> :sswitch_5
    .end sparse-switch
.end method

.method public static ۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e5\u06df\u06e0"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/lit16 v4, v4, 0x13da

    div-int/2addr v0, v4

    if-gtz v0, :cond_3

    const-string v0, "\u06e3\u06e7\u06e3"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    :sswitch_1
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_1

    const/16 v0, 0x55

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e3\u06e7\u06e8"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sub-int/2addr v0, v4

    const v4, 0x1ab9ab

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_2
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget-object v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->borderPaint:Landroid/graphics/Paint;

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/lit16 v4, v4, 0x16af

    sub-int/2addr v0, v4

    if-gtz v0, :cond_2

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    :cond_2
    const-string v0, "\u06e7\u06e6\u06e7"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e5\u06df\u06e0"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/2addr v0, v4

    const v4, 0x1b2a4d

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v4

    const v4, 0x1aa9e0

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/lit16 v3, v3, -0x3a2

    rem-int/2addr v0, v3

    if-ltz v0, :cond_4

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    :cond_4
    const-string v0, "\u06e1\u06df"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v2

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_5

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v0, "\u06e7\u06e3\u06e7"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v0, v4

    const v4, 0x1ab8ff

    add-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "\u06e7\u06e3\u06e7"

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_6

    const-string v0, "\u06e5\u06df\u06e0"

    :goto_2
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e2\u06e6\u06e5"

    goto :goto_2

    :sswitch_9
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc1e -> :sswitch_0
        0x1aab41 -> :sswitch_4
        0x1aaf3b -> :sswitch_3
        0x1ab2df -> :sswitch_4
        0x1ab321 -> :sswitch_9
        0x1ab6ff -> :sswitch_7
        0x1ab9c9 -> :sswitch_2
        0x1abd86 -> :sswitch_6
        0x1ac204 -> :sswitch_1
        0x1ac58b -> :sswitch_5
        0x1ac5e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public static ۠ۥۥۣ(Ljava/lang/Object;)F
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e4\u06e5\u06e0"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v3, v2

    move v1, v2

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_6

    const/16 v0, 0x30

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06df\u06e5"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "\u06e4\u06e5\u06e0"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    mul-int/2addr v0, v1

    const v1, 0x18fa87

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-ltz v0, :cond_3

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/2addr v0, v4

    const v4, 0x1b3c53

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06df\u06e5"

    :goto_1
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x54

    sput v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v0, "\u06e2\u06e4\u06e5"

    goto :goto_1

    :cond_1
    const-string v0, "\u06e7\u06e0\u06e7"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_5
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget v3, v0, Lcom/u/u$AnimatedDashedBorderLayout;->phase:F

    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_2

    const-string v0, "\u06e0\u06e4\u06e8"

    :goto_2
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "\u06e2\u06e4\u06e5"

    goto :goto_2

    :cond_3
    :sswitch_6
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x3a

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e6\u06e5\u06e1"

    :goto_3
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v0, v4

    const v4, -0x1aaf14

    xor-int/2addr v0, v4

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "\u06e5\u06df\u06e2"

    :goto_4
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/lit16 v4, v4, -0x2598

    sub-int/2addr v0, v4

    if-ltz v0, :cond_5

    const/16 v0, 0x10

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e8\u06df\u06e7"

    goto :goto_4

    :cond_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/2addr v0, v4

    const v4, 0x1abb95

    xor-int/2addr v0, v4

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u06e0\u06e4\u06e8"

    move v1, v2

    goto :goto_3

    :sswitch_9
    return v1

    :sswitch_data_0
    .sparse-switch
        0xdbe6 -> :sswitch_0
        0x1aa75c -> :sswitch_6
        0x1aab64 -> :sswitch_4
        0x1aabdf -> :sswitch_8
        0x1aaf01 -> :sswitch_3
        0x1ab2e3 -> :sswitch_1
        0x1ab663 -> :sswitch_7
        0x1aba7f -> :sswitch_2
        0x1abd88 -> :sswitch_9
        0x1ac527 -> :sswitch_5
        0x1ac52e -> :sswitch_7
    .end sparse-switch
.end method

.method public static ۠ۧۡ()[S
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06e0\u06e1\u06df"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v4

    move-object v0, v4

    :goto_0
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v2

    if-lez v2, :cond_3

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/lit16 v3, v3, 0xa9b

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    :goto_1
    const-string v2, "\u06e2\u06e3\u06e1"

    invoke-static {v2}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    const-string v2, "\u06e8\u06df\u06e5"

    move-object v3, v1

    :goto_2
    invoke-static {v2}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v2

    move-object v1, v3

    goto :goto_0

    :sswitch_1
    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v2, v3

    const v3, 0x1aaaf0

    add-int/2addr v2, v3

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    const-string v2, "\u06e4\u06e2"

    move-object v3, v1

    goto :goto_2

    :cond_1
    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v2, v3

    const v3, 0x1ab31b

    add-int/2addr v2, v3

    goto :goto_0

    :sswitch_3
    move-object v0, v1

    goto :goto_1

    :sswitch_4
    sget-object v3, Lcom/u/u$AnimatedDashedBorderLayout;->short:[S

    const-string v1, "\u06e4\u06e1\u06e4"

    move-object v2, v1

    goto :goto_2

    :sswitch_5
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/lit16 v2, v2, -0x57f

    div-int/2addr v0, v2

    if-eqz v0, :cond_2

    const-string v0, "\u06e4\u06e8\u06e0"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v2

    move-object v0, v4

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    rem-int/2addr v0, v2

    const v2, 0x1ab3c9

    add-int/2addr v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    :sswitch_6
    const-string v2, "\u06e4\u06e8\u06e0"

    invoke-static {v2}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v2, 0x3b

    sput v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v2, "\u06e7\u06e3\u06e2"

    :goto_3
    invoke-static {v2}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_4
    const-string v2, "\u06e2\u06df\u06e8"

    goto :goto_3

    :sswitch_8
    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v2, v3

    const v3, 0x1b3c95

    xor-int/2addr v2, v3

    goto/16 :goto_0

    :sswitch_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1aaafe -> :sswitch_0
        0x1aabba -> :sswitch_5
        0x1ab24b -> :sswitch_2
        0x1ab2c0 -> :sswitch_9
        0x1ab2dd -> :sswitch_7
        0x1ab2e3 -> :sswitch_6
        0x1aba07 -> :sswitch_3
        0x1abadc -> :sswitch_1
        0x1abe66 -> :sswitch_2
        0x1ac586 -> :sswitch_8
        0x1ac8ce -> :sswitch_4
    .end sparse-switch
.end method

.method public static ۢ۠۠۠(Ljava/lang/Object;)Landroid/graphics/Path;
    .locals 5

    const/4 v3, 0x0

    const-string v0, "\u06e1\u06e1\u06e2"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v3

    move-object v2, v3

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v0, v4

    const v4, 0x1aaec2

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_0

    const/16 v0, 0x53

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e8\u06e8\u06e3"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e2\u06e6\u06df"

    :goto_1
    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :sswitch_2
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget-object v0, v0, Lcom/u/u$AnimatedDashedBorderLayout;->path:Landroid/graphics/Path;

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v1, :cond_7

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v1, "\u06e3\u06e5\u06e3"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/lit16 v2, v2, -0x1a1a

    add-int/2addr v0, v2

    if-ltz v0, :cond_1

    const-string v0, "\u06e2\u06e6\u06df"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v2, v3

    move v4, v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v0, v2

    const v2, 0x1ab6c1

    xor-int/2addr v0, v2

    move-object v2, v3

    move v4, v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-gtz v0, :cond_4

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_2

    const/16 v0, 0x4a

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e4\u06e5\u06e2"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v4

    const v4, 0x1ab3a5

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    xor-int/lit16 v4, v4, -0xfb1

    add-int/2addr v0, v4

    if-gtz v0, :cond_3

    const-string v0, "\u06e1\u06e1\u06e2"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/2addr v0, v4

    const v4, 0x19cac9

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :cond_4
    :sswitch_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/lit16 v4, v4, -0x1ba9

    or-int/2addr v0, v4

    if-ltz v0, :cond_5

    const/4 v0, 0x5

    sput v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v0, "\u06e8\u06e5\u06e0"

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    add-int/2addr v0, v4

    const v4, 0x1aba69

    xor-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_7
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_6

    const-string v0, "\u06e7\u06e4"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    :cond_6
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sub-int/2addr v0, v4

    const v4, 0x1acc8f

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_8
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/lit16 v2, v2, -0x225c

    sub-int/2addr v0, v2

    if-ltz v0, :cond_8

    move-object v0, v1

    move-object v2, v1

    :cond_7
    const-string v1, "\u06e4\u06e8\u06e6"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v0, v2

    const v2, -0x1ac910

    xor-int/2addr v0, v2

    move-object v2, v1

    move v4, v0

    goto/16 :goto_0

    :sswitch_9
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdcd8 -> :sswitch_0
        0x1aaae4 -> :sswitch_6
        0x1aaec2 -> :sswitch_4
        0x1aaf9d -> :sswitch_7
        0x1ab2a2 -> :sswitch_2
        0x1ab31b -> :sswitch_3
        0x1ab6c1 -> :sswitch_5
        0x1aba81 -> :sswitch_1
        0x1abae2 -> :sswitch_8
        0x1abe44 -> :sswitch_7
        0x1ac9e3 -> :sswitch_9
    .end sparse-switch
.end method

.method public static ۢۦۣۦ(Ljava/lang/Object;)Landroid/graphics/Paint;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e2\u06e2\u06e6"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    move v4, v0

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/lit16 v3, v3, 0x25d

    sub-int/2addr v0, v3

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    const-string v0, "\u06e0\u06e0\u06e7"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v1

    move v4, v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-gtz v0, :cond_5

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/lit16 v4, v4, -0xa94

    xor-int/2addr v0, v4

    if-ltz v0, :cond_0

    const/16 v0, 0x14

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e1\u06e5\u06e6"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    add-int/2addr v0, v4

    const v4, 0x1ab4da

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e4\u06e3\u06df"

    goto :goto_1

    :sswitch_2
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    div-int/2addr v0, v4

    const v4, -0x1ab2a5

    xor-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/lit16 v4, v4, 0x19a4

    or-int/2addr v0, v4

    if-ltz v0, :cond_2

    const/16 v0, 0xa

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e2\u06e0\u06e1"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    or-int/2addr v0, v4

    const v4, 0x1ac28d

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :sswitch_4
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget-object v0, v0, Lcom/u/u$AnimatedDashedBorderLayout;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v1, :cond_3

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e7\u06e7\u06e1"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string v1, "\u06df\u06e7\u06e5"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v4

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_5
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/2addr v0, v4

    const v4, 0x1abe62

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sub-int/2addr v0, v4

    const v4, 0x1ab990

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x38

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e5\u06e6\u06e3"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v2

    move v4, v0

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    mul-int/2addr v0, v3

    const v3, 0x19d286

    add-int/2addr v0, v3

    move-object v3, v2

    move v4, v0

    goto/16 :goto_0

    :cond_5
    :sswitch_8
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    xor-int/2addr v0, v4

    const v4, 0x1aaf42

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_0

    :sswitch_9
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1aa7fd -> :sswitch_0
        0x1aaae7 -> :sswitch_6
        0x1aaf42 -> :sswitch_3
        0x1ab263 -> :sswitch_2
        0x1ab2a6 -> :sswitch_1
        0x1ab300 -> :sswitch_4
        0x1aba40 -> :sswitch_9
        0x1abe62 -> :sswitch_6
        0x1ac204 -> :sswitch_7
        0x1ac601 -> :sswitch_5
        0x1ac964 -> :sswitch_8
    .end sparse-switch
.end method

.method public static ۦۣۧ۠(Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06df\u06e8"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-ltz v0, :cond_2

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v4

    const v4, 0x19c742

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_0

    const-string v0, "\u06e3\u06e1\u06e5"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e2\u06e5\u06e3"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "\u06e3\u06e7\u06e1"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    or-int/2addr v0, v3

    const v3, 0x1ab64c

    add-int/2addr v0, v3

    move-object v3, v1

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v4, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sub-int/2addr v0, v4

    const v4, 0xdb7a

    add-int/2addr v0, v4

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v4, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    rem-int/2addr v0, v4

    const v4, -0x1ab604

    xor-int/2addr v0, v4

    goto :goto_0

    :cond_2
    :sswitch_5
    const-string v0, "\u06e1\u06df\u06e8"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/2addr v0, v3

    const v3, 0x19d7d1

    add-int/2addr v0, v3

    move-object v3, v2

    goto :goto_0

    :sswitch_7
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    if-ltz v0, :cond_3

    const/16 v0, 0x34

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    const-string v0, "\u06e3\u06e3\u06e1"

    goto :goto_1

    :cond_3
    const-string v0, "\u06df\u06e8"

    goto :goto_1

    :sswitch_8
    move-object v0, p0

    check-cast v0, Lcom/u/u$AnimatedDashedBorderLayout;

    iget-object v1, v0, Lcom/u/u$AnimatedDashedBorderLayout;->animator:Landroid/animation/ValueAnimator;

    const-string v0, "\u06e3\u06e7\u06e1"

    goto :goto_1

    :sswitch_9
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xdbe9 -> :sswitch_0
        0xdc5e -> :sswitch_4
        0xdcdb -> :sswitch_4
        0x1aae8a -> :sswitch_1
        0x1ab300 -> :sswitch_6
        0x1ab301 -> :sswitch_7
        0x1ab33a -> :sswitch_3
        0x1ab647 -> :sswitch_9
        0x1ab6fd -> :sswitch_2
        0x1ababd -> :sswitch_8
        0x1ac625 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06e3\u06e2"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    return-void

    :sswitch_1
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    or-int/2addr v0, v2

    const v2, -0x1ac846

    xor-int/2addr v0, v2

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۤۨۤۥ(Ljava/lang/Object;)V

    const-string v0, "\u06e2\u06e8\u06e5"

    :goto_1
    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-string v0, "tsAkyZEZ2P9H4MCVlA"

    invoke-static {v0}, Lcom/u/۟ۦۧۡۢ;->۟۟ۧ۟۟(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x5f

    sput v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    const-string v0, "\u06e0\u06e2\u06e2"

    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "\u06e7\u06df\u06e5"

    :goto_2
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0x1f

    sput v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    :cond_1
    const-string v0, "\u06e4\u06df\u06e7"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    or-int/2addr v0, v2

    const v2, -0x1aae43

    xor-int/2addr v0, v2

    goto :goto_0

    :sswitch_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(F)V

    sget v0, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v0, "\u06e7\u06df\u06e5"

    goto :goto_1

    :cond_3
    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v2, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    div-int/2addr v0, v2

    const v2, 0x1aab20

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    :sswitch_6
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    xor-int/lit16 v2, v2, 0x196c

    div-int/2addr v0, v2

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e5\u06df\u06e8"

    goto :goto_2

    :cond_5
    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v2, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v0, v2

    const v2, 0x1aab1f

    add-int/2addr v0, v2

    goto/16 :goto_0

    :sswitch_7
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget v0, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v0, :cond_1

    const-string v0, "\u06e1\u06e5\u06e8"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1aab20 -> :sswitch_0
        0x1aaf44 -> :sswitch_3
        0x1ab2e1 -> :sswitch_1
        0x1ab35f -> :sswitch_4
        0x1ab9cc -> :sswitch_2
        0x1abde6 -> :sswitch_6
        0x1ac50d -> :sswitch_5
        0x1ac947 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "\u06e3\u06e1\u06e6"

    invoke-static {v0}, Lcom/u/۟ۤۧۦۡ;->ۡۡۨۨ(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۢۨ۠ۨ(Ljava/lang/Object;)V

    const-string v0, "\u06e2\u06e6\u06df"

    :goto_1
    invoke-static {v0}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v1, v1, 0x201d

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v0, "\u06e0\u06e8\u06e7"

    goto :goto_1

    :cond_0
    sget v0, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    add-int/2addr v0, v1

    const v1, 0x1ab9b6

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget v0, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    :cond_1
    const-string v0, "\u06e0\u06e8"

    invoke-static {v0}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc08 -> :sswitch_0
        0x1ab31b -> :sswitch_3
        0x1ab648 -> :sswitch_2
        0x1abae0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string v0, "\u06e8\u06e7\u06e0"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v6

    move-object v5, v1

    move-object v3, v1

    move-object v0, v1

    move v2, v7

    move v4, v7

    move v8, v7

    move v9, v7

    :goto_0
    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۢ۠۠۠(Ljava/lang/Object;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-static {p1, v1, v6}, Lcom/u/ۣۨۢۤ;->۟ۥۣ۠۟(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v6, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    rem-int/lit16 v6, v6, 0x1e74

    rem-int/2addr v1, v6

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    :cond_0
    const-string v1, "\u06e6\u06e1\u06e1"

    :goto_1
    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۢۦۣۦ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/u/ۣۨۢۤ;->ۣ۟ۢۢ(Ljava/lang/Object;Ljava/lang/Object;FFLjava/lang/Object;)V

    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v6, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    div-int/2addr v1, v6

    const v6, 0x1ab720

    add-int/2addr v1, v6

    move v6, v1

    goto :goto_0

    :sswitch_2
    const-string v1, "pjOhcR8kpwg4yC2J4tEiudGRbUuu"

    invoke-static {v1}, Lcom/u/۟ۤۧۦۡ;->۟ۤۢۨۤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->decode(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v5, :cond_1

    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->ۣۦۤۢ()I

    const-string v5, "\u06e1\u06e7\u06df"

    invoke-static {v5}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v6

    move-object v5, v1

    goto :goto_0

    :cond_1
    const-string v5, "\u06e8\u06df\u06e3"

    move-object v6, v5

    :goto_2
    invoke-static {v6}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v6

    move-object v5, v1

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v1

    sget v3, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v3, :cond_2

    :goto_3
    const-string v3, "\u06e0\u06e1\u06e5"

    invoke-static {v3}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v6

    move-object v3, v1

    goto :goto_0

    :cond_2
    sget v3, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v6, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    div-int/2addr v3, v6

    const v6, 0x1ac8ea

    add-int/2addr v6, v3

    move-object v3, v1

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_4

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    if-ltz v1, :cond_3

    invoke-static {}, Lcom/u/ۣۨۢۤ;->۟ۢ۠ۥ۟()I

    :goto_4
    const-string v6, "\u06e0\u06e7"

    move-object v1, v5

    goto :goto_2

    :cond_3
    const-string v1, "\u06e1\u06e7\u06df"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :cond_4
    :sswitch_5
    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    sget v6, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v6, v6, 0x131c

    sub-int/2addr v1, v6

    if-gtz v1, :cond_5

    const/4 v1, 0x4

    sput v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    const-string v1, "\u06e1\u06df\u06df"

    :goto_5
    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :cond_5
    const-string v1, "\u06e1\u06e4\u06e8"

    :goto_6
    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :sswitch_6
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۥۣۤ۟(Ljava/lang/Object;)F

    move-result v2

    const-string v1, "\u06e7\u06e1\u06e0"

    goto :goto_5

    :sswitch_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_6

    const-string v1, "\u06e7\u06e0\u06e7"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "\u06e1\u06e4\u06e8"

    goto/16 :goto_1

    :sswitch_8
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۡۡۡۨ(Ljava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    const-string v1, "\u06e3\u06e5\u06e3"

    goto :goto_5

    :sswitch_9
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟۟ۦ۠ۥ(Ljava/lang/Object;)F

    move-result v7

    sget v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v1, :cond_7

    const-string v1, "\u06e1\u06e4\u06e8"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    move v8, v7

    goto/16 :goto_0

    :cond_7
    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v6, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v1, v6

    const v6, -0x1b649a

    xor-int/2addr v1, v6

    move v6, v1

    move v8, v7

    goto/16 :goto_0

    :sswitch_a
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠ۥۥۣ(Ljava/lang/Object;)F

    move-result v4

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v1

    if-gtz v1, :cond_8

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e8\u06df\u06e3"

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :cond_8
    move-object v1, v3

    goto/16 :goto_3

    :sswitch_b
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v9, v6, v7

    invoke-direct {v1, v6, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-static {v3, v1}, Lcom/u/۟۟ۥ۟;->ۡۢۤۥ(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/PathEffect;

    goto/16 :goto_4

    :sswitch_c
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۡۢۥۤ(Ljava/lang/Object;)F

    move-result v7

    invoke-static {}, Lcom/u/۟۟ۥ۟;->۟ۦۡۦ۠()I

    move-result v1

    if-ltz v1, :cond_9

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    const-string v1, "\u06e8\u06e0\u06e5"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    move v9, v7

    goto/16 :goto_0

    :cond_9
    sget v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v6, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    add-int/2addr v1, v6

    const v6, -0x1ac4c0

    xor-int/2addr v1, v6

    move v6, v1

    move v9, v7

    goto/16 :goto_0

    :sswitch_d
    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v6, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    add-int/lit16 v6, v6, 0x24d5

    sub-int/2addr v1, v6

    if-ltz v1, :cond_a

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v1, "\u06e3\u06e2\u06e5"

    goto/16 :goto_6

    :cond_a
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    sget v6, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/2addr v1, v6

    const v6, 0x1ac9c1

    xor-int/2addr v1, v6

    move v6, v1

    goto/16 :goto_0

    :sswitch_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    const-string v1, "\u06e8\u06e3\u06e4"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v6, v1

    goto/16 :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc07 -> :sswitch_0
        0x1aab04 -> :sswitch_b
        0x1aaf25 -> :sswitch_f
        0x1aaf79 -> :sswitch_2
        0x1ab6c1 -> :sswitch_6
        0x1ab721 -> :sswitch_3
        0x1ac186 -> :sswitch_4
        0x1ac52e -> :sswitch_d
        0x1ac546 -> :sswitch_1
        0x1ac602 -> :sswitch_a
        0x1ac8c8 -> :sswitch_5
        0x1ac8cc -> :sswitch_7
        0x1ac8ed -> :sswitch_9
        0x1ac949 -> :sswitch_8
        0x1ac982 -> :sswitch_c
        0x1ac9c1 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const-string v0, "\u06e2\u06df\u06e0"

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v5

    move-object v3, v1

    move-object v4, v1

    move v2, v6

    move v0, v6

    :goto_0
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget v1, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    if-ltz v1, :cond_6

    const-string v1, "\u06e0\u06e2\u06e3"

    :goto_1
    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۡۡۡۨ(Ljava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/u/ۣ۟ۦ۟;->۟ۢ۠ۡۨ()I

    const-string v3, "\u06e2\u06e0\u06e3"

    invoke-static {v3}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v5

    move-object v3, v1

    goto :goto_0

    :cond_0
    sget v3, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    rem-int/2addr v3, v5

    const v5, -0x1ab674

    xor-int/2addr v5, v3

    move-object v3, v1

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۠۠ۤۥ(Ljava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Lcom/u/ۣ۟ۦ۟;->ۡۨۧۥ(Ljava/lang/Object;)F

    move-result v0

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    sget v5, Lcom/u/۟۟ۥ۟;->ۣ۠ۥۢ:I

    mul-int/lit16 v5, v5, -0x1c01

    div-int/2addr v1, v5

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "\u06e7\u06e7\u06e6"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_2
    const-string v1, "\u06e2\u06e0\u06e3"

    invoke-static {v1}, Lcom/u/۟ۦۧۡۢ;->۟۠ۥۡ۠(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :sswitch_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    sget v1, Lcom/u/۟ۦۧۡۢ;->ۣۢۦۣ:I

    if-ltz v1, :cond_4

    :cond_3
    const-string v1, "\u06e7\u06e1\u06e1"

    :goto_2
    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->۟۟ۦ۠۟(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_4
    const-string v1, "\u06e7\u06e7"

    goto :goto_2

    :sswitch_4
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۥۣۤ۟(Ljava/lang/Object;)F

    move-result v1

    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    div-int/lit16 v5, v5, 0x218

    mul-int/2addr v2, v5

    if-eqz v2, :cond_5

    :goto_3
    const-string v2, "\u06e3\u06e8\u06e0"

    invoke-static {v2}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v5

    move v2, v1

    goto :goto_0

    :cond_5
    sget v2, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    mul-int/2addr v2, v5

    const v5, -0x1acd55

    xor-int/2addr v5, v2

    move v2, v1

    goto/16 :goto_0

    :sswitch_5
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->۟ۡۡۡۨ(Ljava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    div-float v5, v0, v10

    div-float v6, v0, v10

    int-to-float v7, p1

    div-float v8, v0, v10

    sub-float/2addr v7, v8

    int-to-float v8, p2

    div-float v9, v0, v10

    sub-float/2addr v8, v9

    invoke-static {v1, v5, v6, v7, v8}, Lcom/u/۟ۦۧۡۢ;->ۣۣ۟۟(Ljava/lang/Object;FFFF)V

    sget v1, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    xor-int/lit16 v5, v5, -0xf1f

    or-int/2addr v1, v5

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    sput v1, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    const-string v1, "\u06e4\u06e5\u06e0"

    invoke-static {v1}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "\u06e2\u06df\u06e0"

    goto/16 :goto_1

    :sswitch_6
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۢ۠۠۠(Ljava/lang/Object;)Landroid/graphics/Path;

    move-result-object v1

    sget v4, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    if-gtz v4, :cond_7

    const-string v4, "\u06e2\u06df\u06e0"

    invoke-static {v4}, Lcom/u/ۣ۟ۦ۟;->ۦ۟ۧۤ(Ljava/lang/Object;)I

    move-result v5

    move-object v4, v1

    goto/16 :goto_0

    :cond_7
    sget v4, Lcom/u/۟ۤۧۦۡ;->ۢ۟ۧۥ:I

    sget v5, Lcom/u/ۣ۟ۦ۟;->ۣ۟۠ۨۡ:I

    rem-int/2addr v4, v5

    const v5, 0x1ab2a5

    add-int/2addr v5, v4

    move-object v4, v1

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/u/u$AnimatedDashedBorderLayout;->ۢ۠۠۠(Ljava/lang/Object;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/u/ۣۨۢۤ;->ۣۣ۟ۢۡ(Ljava/lang/Object;)V

    invoke-static {}, Lcom/u/۟ۤۧۦۡ;->ۣ۟۟ۧ۟()I

    move-result v1

    if-gtz v1, :cond_3

    const/16 v1, 0x35

    sput v1, Lcom/u/ۣۨۢۤ;->۟ۢۦ۟ۤ:I

    const-string v1, "\u06e7\u06e7"

    invoke-static {v1}, Lcom/u/۟۟ۥ۟;->ۣ۟ۧ(Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/u/۟ۦۧۡۢ;->۟۠ۨۧۤ()Landroid/graphics/Path$Direction;

    move-result-object v1

    invoke-static {v4, v3, v2, v2, v1}, Lcom/u/ۣ۟ۦ۟;->ۥۢۥۡ(Ljava/lang/Object;Ljava/lang/Object;FFLjava/lang/Object;)V

    move v1, v2

    goto :goto_3

    :sswitch_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc81 -> :sswitch_0
        0xdce0 -> :sswitch_2
        0x1ab243 -> :sswitch_3
        0x1ab265 -> :sswitch_5
        0x1ab286 -> :sswitch_1
        0x1ab6dc -> :sswitch_4
        0x1ab71b -> :sswitch_9
        0x1aba7f -> :sswitch_8
        0x1ac547 -> :sswitch_6
        0x1ac606 -> :sswitch_7
    .end sparse-switch
.end method
