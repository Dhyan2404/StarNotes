.class public Lcom/twelvemonkeys/image/ResampleOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/image/ResampleOp$g;,
        Lcom/twelvemonkeys/image/ResampleOp$f;,
        Lcom/twelvemonkeys/image/ResampleOp$b;,
        Lcom/twelvemonkeys/image/ResampleOp$a;,
        Lcom/twelvemonkeys/image/ResampleOp$j;,
        Lcom/twelvemonkeys/image/ResampleOp$k;,
        Lcom/twelvemonkeys/image/ResampleOp$i;,
        Lcom/twelvemonkeys/image/ResampleOp$e;,
        Lcom/twelvemonkeys/image/ResampleOp$c;,
        Lcom/twelvemonkeys/image/ResampleOp$p;,
        Lcom/twelvemonkeys/image/ResampleOp$o;,
        Lcom/twelvemonkeys/image/ResampleOp$h;,
        Lcom/twelvemonkeys/image/ResampleOp$r;,
        Lcom/twelvemonkeys/image/ResampleOp$s;,
        Lcom/twelvemonkeys/image/ResampleOp$d;,
        Lcom/twelvemonkeys/image/ResampleOp$q;,
        Lcom/twelvemonkeys/image/ResampleOp$l;,
        Lcom/twelvemonkeys/image/ResampleOp$m;,
        Lcom/twelvemonkeys/image/ResampleOp$t;,
        Lcom/twelvemonkeys/image/ResampleOp$n;
    }
.end annotation


# static fields
.field public static final FILTER_BLACKMAN:I = 0x7

.field public static final FILTER_BLACKMAN_BESSEL:I = 0xe

.field public static final FILTER_BLACKMAN_SINC:I = 0xf

.field public static final FILTER_BOX:I = 0x2

.field public static final FILTER_CATROM:I = 0xb

.field public static final FILTER_CUBIC:I = 0xa

.field public static final FILTER_GAUSSIAN:I = 0x8

.field public static final FILTER_HAMMING:I = 0x6

.field public static final FILTER_HANNING:I = 0x5

.field public static final FILTER_HERMITE:I = 0x4

.field public static final FILTER_LANCZOS:I = 0xd

.field public static final FILTER_MITCHELL:I = 0xc

.field public static final FILTER_POINT:I = 0x1

.field public static final FILTER_QUADRATIC:I = 0x9

.field public static final FILTER_TRIANGLE:I = 0x3

.field public static final FILTER_UNDEFINED:I = 0x0

.field public static final KEY_RESAMPLE_INTERPOLATION:Ljava/awt/RenderingHints$Key;

.field public static final VALUE_INTERPOLATION_BLACKMAN:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BLACKMAN_BESSEL:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BLACKMAN_SINC:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BOX:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_CATROM:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_CUBIC:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_GAUSSIAN:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_HAMMING:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_HANNING:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_HERMITE:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_LANCZOS:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_MITCHELL:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_POINT:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_QUADRATIC:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_TRIANGLE:Ljava/lang/Object;

.field public static final d:D = 0.3333333333333333

.field public static final e:D = 0.3333333333333333

.field public static final f:D = 0.8888888888888888

.field public static final g:D = -2.0

.field public static final h:D = 1.1666666666666667

.field public static final i:D = 1.7777777777777777

.field public static final j:D = -3.3333333333333335

.field public static final k:D = 2.0

.field public static final l:D = -0.3888888888888889


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/twelvemonkeys/image/ResampleOp$n;

    const-string v1, "ResampleInterpolation"

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/image/ResampleOp$n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/twelvemonkeys/image/ResampleOp;->KEY_RESAMPLE_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Point"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_POINT:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Box"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BOX:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Triangle"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_TRIANGLE:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Hermite"

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HERMITE:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Hanning"

    const/4 v3, 0x5

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HANNING:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Hamming"

    const/4 v3, 0x6

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HAMMING:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Blackman"

    const/4 v3, 0x7

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Gaussian"

    const/16 v3, 0x8

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_GAUSSIAN:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Quadratic"

    const/16 v3, 0x9

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_QUADRATIC:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Cubic"

    const/16 v3, 0xa

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_CUBIC:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Catrom"

    const/16 v3, 0xb

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_CATROM:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Mitchell"

    const/16 v3, 0xc

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_MITCHELL:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Lanczos"

    const/16 v3, 0xd

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_LANCZOS:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Blackman-Bessel"

    const/16 v3, 0xe

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN_BESSEL:Ljava/lang/Object;

    new-instance v1, Lcom/twelvemonkeys/image/ResampleOp$t;

    const-string v2, "Blackman-Sinc"

    const/16 v3, 0xf

    invoke-direct {v1, v0, v2, v3}, Lcom/twelvemonkeys/image/ResampleOp$t;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/String;I)V

    sput-object v1, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN_SINC:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/image/ResampleOp;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 4
    iput p1, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    .line 5
    iput p2, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    .line 6
    invoke-static {p3}, Lcom/twelvemonkeys/image/ResampleOp;->r(I)I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width and height must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IILjava/awt/RenderingHints;)V
    .locals 0

    .line 2
    invoke-static {p3}, Lcom/twelvemonkeys/image/ResampleOp;->k(Ljava/awt/RenderingHints;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/twelvemonkeys/image/ResampleOp;-><init>(III)V

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lcom/twelvemonkeys/image/ResampleOp;->r(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/ResampleOp;->q(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/ResampleOp;->g(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic d(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/ResampleOp;->e(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static e(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x3fe921fb54442d18L    # 0.7853981633974483

    return-wide p0

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/image/ResampleOp;->f(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static f(D)D
    .locals 17

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    neg-double v3, v0

    goto :goto_0

    :cond_1
    move-wide v3, v0

    :goto_0
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_2

    invoke-static {v3, v4}, Lcom/twelvemonkeys/image/ResampleOp;->l(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v0, v7, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Lcom/twelvemonkeys/image/ResampleOp;->m(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    sub-double/2addr v13, v15

    mul-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double/2addr v5, v3

    invoke-static {v3, v4}, Lcom/twelvemonkeys/image/ResampleOp;->n(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v11, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    add-double/2addr v7, v3

    mul-double/2addr v11, v7

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    mul-double/2addr v0, v9

    if-gez v2, :cond_3

    neg-double v0, v0

    :cond_3
    return-wide v0
.end method

.method public static g(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    add-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static i(I)Lcom/twelvemonkeys/image/ResampleOp$m;
    .locals 3

    if-nez p0, :cond_0

    const/16 p0, 0xd

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$b;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$b;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$a;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$a;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$o;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$o;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$p;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$p;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$e;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$e;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$h;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$h;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$r;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$r;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$i;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$i;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$c;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$c;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$j;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$j;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$k;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$k;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$l;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$l;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$s;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$s;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$d;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$d;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/twelvemonkeys/image/ResampleOp$q;

    invoke-direct {p0}, Lcom/twelvemonkeys/image/ResampleOp$q;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-lt v0, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    if-ge v1, v6, :cond_3

    :cond_0
    move v6, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    div-int/2addr v7, v4

    if-ge v6, v7, :cond_1

    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    if-ge v7, v8, :cond_2

    mul-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_2
    int-to-double v8, v6

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    int-to-double v10, v6

    div-double/2addr v8, v10

    int-to-double v6, v7

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v6

    new-instance v7, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v7, v6, v4}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    move-object/from16 v6, p0

    invoke-virtual {v7, v6, v3}, Lcom/twelvemonkeys/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object/from16 v6, p0

    :goto_2
    int-to-double v7, v0

    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-double v9, v0

    div-double/2addr v7, v9

    int-to-double v0, v1

    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v0, v9

    if-le v2, v5, :cond_8

    move-object v5, v3

    :goto_3
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v7, v9

    if-ltz v11, :cond_4

    cmpg-double v11, v0, v9

    if-gez v11, :cond_8

    :cond_4
    cmpl-double v11, v7, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    if-ltz v11, :cond_5

    invoke-static {v12, v13, v9, v10}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    new-instance v11, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v11, v5, v4}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    mul-double/2addr v0, v14

    :goto_4
    move-object v5, v11

    goto :goto_5

    :cond_5
    cmpl-double v11, v0, v9

    if-ltz v11, :cond_6

    invoke-static {v9, v10, v12, v13}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    new-instance v11, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v11, v5, v4}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    mul-double/2addr v7, v14

    goto :goto_4

    :cond_6
    mul-double/2addr v7, v14

    mul-double/2addr v0, v14

    :goto_5
    if-nez v5, :cond_7

    invoke-static {v9, v10, v9, v10}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    new-instance v9, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v9, v5, v4}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    move-object v5, v9

    :cond_7
    invoke-virtual {v5, v6, v3}, Lcom/twelvemonkeys/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v6

    goto :goto_3

    :cond_8
    invoke-static {v7, v8, v0, v1}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    new-instance v1, Lcom/twelvemonkeys/image/AffineTransformOp;

    invoke-direct {v1, v0, v2}, Lcom/twelvemonkeys/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;I)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v6, v0}, Lcom/twelvemonkeys/image/AffineTransformOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/awt/RenderingHints;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/twelvemonkeys/image/ResampleOp;->KEY_RESAMPLE_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v1}, Ljava/awt/RenderingHints;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    check-cast p0, Lcom/twelvemonkeys/image/ResampleOp$t;

    invoke-virtual {p0}, Lcom/twelvemonkeys/image/ResampleOp$t;->a()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " incompatible with key "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v1, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v3}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v3}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    sget-object v1, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x9

    return p0

    :cond_6
    sget-object v1, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p0, v2}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_0
    const/16 p0, 0xc

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static l(D)D
    .locals 9

    const/16 v0, 0x9

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    const/16 v2, 0x8

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    mul-double/2addr v3, p0

    mul-double/2addr v3, p0

    aget-wide v7, v1, v2

    add-double/2addr v3, v7

    mul-double/2addr v5, p0

    mul-double/2addr v5, p0

    aget-wide v7, v0, v2

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    return-wide v3

    :array_0
    .array-data 8
        0x443f81c2e523683dL    # 5.811993540016061E20
        -0x3bf3107942126667L    # -6.672106568924916E19
        0x43c012d008c7bceaL    # 2.3164335806340024E18
        -0x3ca01ff93cf45e9fL    # -3.588817569910106E16
        0x42f088daad7af759L    # 2.9087952638347756E14
        -0x3d8cbf80a23f3dfaL    # -1.3229834803321265E12
        0x41e96e3a40c9a788L    # 3.4132341823017006E9
        -0x3eae164d9e09f1f6L    # -4695753.530642996
        0x40a51a3ed3f64ac9L    # 2701.1227108923235
    .end array-data

    :array_1
    .array-data 8
        0x444f81c2e523683dL    # 1.1623987080032122E21
        0x43e491e139ae7522L    # 1.185770712190321E19
        0x436b0ddf388a59f6L    # 6.0920613989175216E16
        0x42e7aa6e7871a918L    # 2.0816612213076075E14
        0x425e85bcb84a30f5L    # 5.2437102621676495E11
        0x41ce372a2d2de908L    # 1.013863514358674E9
        0x4136ea619851d3caL    # 1501793.5949985855
        0x40991bb9ee66133eL    # 1606.9315734814877
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static m(D)D
    .locals 11

    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    const/4 v2, 0x5

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    const/4 v2, 0x4

    :goto_0
    if-ltz v2, :cond_0

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    div-double/2addr v7, p0

    mul-double/2addr v3, v7

    mul-double/2addr v3, v7

    aget-wide v9, v1, v2

    add-double/2addr v3, v9

    mul-double/2addr v5, v7

    mul-double/2addr v5, v7

    aget-wide v7, v0, v2

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    return-wide v3

    nop

    :array_0
    .array-data 8
        0x40e1331546f86645L    # 35224.66491336798
        0x40eea4db0c43c658L    # 62758.84524716128
        0x40de9e7da39bf79dL    # 31353.963110915956
        0x40b3797bb3646e7fL    # 4985.4832060594335
        0x406a64e4b4e35797L    # 211.15291828539623
        0x3ff41d6010a865e8L    # 1.2571716929145342
    .end array-data

    :array_1
    .array-data 8
        0x40e1331546f86645L    # 35224.66491336798
        0x40ee9ccb1a4a81e9L    # 62694.34695935605
        0x40de821a02293ef4L    # 31240.406381904104
        0x40b34265806168f6L    # 4930.396490181089
        0x4069627b08f1c66bL    # 203.07751891347593
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static n(D)D
    .locals 11

    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    const/4 v2, 0x5

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    const/4 v2, 0x4

    :goto_0
    if-ltz v2, :cond_0

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    div-double/2addr v7, p0

    mul-double/2addr v3, v7

    mul-double/2addr v3, v7

    aget-wide v9, v1, v2

    add-double/2addr v3, v9

    mul-double/2addr v5, v7

    mul-double/2addr v5, v7

    aget-wide v7, v0, v2

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    return-wide v3

    nop

    :array_0
    .array-data 8
        0x4075f2cd95877ea5L    # 351.17519143035526
        0x408688503ddc68e8L    # 721.0391804904475
        0x407a9fcbfc4e8e2cL    # 425.98730116544425
        0x4054cc274093a456L    # 83.18989576738508
        0x401245cec89dc00cL    # 4.568171629551227
        0x3fa2169069c535fbL    # 0.03532840052740124
    .end array-data

    :array_1
    .array-data 8
        0x40bd43bcc75f5387L    # 7491.737417180912
        0x40ce1b16b30d93f2L    # 15414.177339265098
        0x40c1e01da86532f5L    # 9152.231701516992
        0x409c4cbf2e6df9faL    # 1811.1867005523513
        0x4059f4668a3ed3a5L    # 103.81875854621337
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static p(D)I
    .locals 7

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double v1, p0, v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    neg-double v1, v1

    :cond_0
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_2

    cmpg-double p0, p0, v3

    if-gez p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static q(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public static r(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {p1, p2, v1, p0}, Lcom/twelvemonkeys/image/ImageUtil;->i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "pInput == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 8

    if-eqz p1, :cond_c

    if-eq p1, p2, :cond_b

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {p1, p2, v0, p0, v3}, Lcom/twelvemonkeys/image/ResampleOp;->j(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {p1, p2, v0, p0, v2}, Lcom/twelvemonkeys/image/ResampleOp;->j(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {p1, p2, v0, p0, v1}, Lcom/twelvemonkeys/image/ResampleOp;->j(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    invoke-static {v0}, Lcom/twelvemonkeys/image/ResampleOp;->i(I)Lcom/twelvemonkeys/image/ResampleOp$m;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v4, v1

    invoke-interface {v0}, Lcom/twelvemonkeys/image/ResampleOp$m;->b()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-lez v1, :cond_a

    iget v1, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget v4, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v4, v1

    invoke-interface {v0}, Lcom/twelvemonkeys/image/ResampleOp$m;->b()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/l6j;->a(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    iget v1, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_7

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    instance-of v2, v1, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_1

    :cond_6
    const/4 v1, 0x5

    :goto_1
    invoke-static {p1, v1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object p1

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    invoke-static {p2, v1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/twelvemonkeys/image/ResampleOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/twelvemonkeys/image/ResampleOp;->o(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Lcom/twelvemonkeys/image/ResampleOp$m;)Ljava/awt/image/BufferedImage;

    if-eqz p2, :cond_9

    if-eq p2, v1, :cond_9

    invoke-static {p2, v1}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    goto :goto_3

    :cond_9
    move-object p2, v1

    :goto_3
    return-object p2

    :cond_a
    :goto_4
    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-static {p1, p2, v0, p0, v2}, Lcom/twelvemonkeys/image/ResampleOp;->j(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output image cannot be the same as the input image"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Input == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    new-instance p1, Ljava/awt/Rectangle;

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->b:I

    invoke-direct {p1, v0, p0}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p1
.end method

.method public getFilterType()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    return p0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 0

    if-nez p2, :cond_1

    instance-of p0, p1, Ljava/awt/geom/Point2D$Double;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p0}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :goto_0
    move-object p2, p0

    invoke-virtual {p2, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    :cond_1
    return-object p2
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 3

    iget v0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/twelvemonkeys/image/ResampleOp;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN_SINC:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN_BESSEL:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_LANCZOS:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_MITCHELL:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_CATROM:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_CUBIC:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_QUADRATIC:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_GAUSSIAN:Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BLACKMAN:Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HAMMING:Ljava/lang/Object;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HANNING:Ljava/lang/Object;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_HERMITE:Ljava/lang/Object;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_TRIANGLE:Ljava/lang/Object;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_BOX:Ljava/lang/Object;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/twelvemonkeys/image/ResampleOp;->VALUE_INTERPOLATION_POINT:Ljava/lang/Object;

    :goto_0
    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v1, Lcom/twelvemonkeys/image/ResampleOp;->KEY_RESAMPLE_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-direct {v0, v1, p0}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(DDILcom/twelvemonkeys/image/ResampleOp$m;I)Lcom/twelvemonkeys/image/ResampleOp$g;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    new-instance v4, Lcom/twelvemonkeys/image/ResampleOp$g;

    invoke-direct {v4, v0}, Lcom/twelvemonkeys/image/ResampleOp$g;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, p1, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-gez v7, :cond_6

    div-double v12, p3, p1

    div-double v14, v5, p1

    cmpg-double v7, v12, v10

    if-gtz v7, :cond_0

    const-wide v12, 0x3fe0000218def417L    # 0.500001

    move-wide v14, v5

    :cond_0
    mul-double/2addr v8, v12

    add-double/2addr v8, v5

    add-double/2addr v8, v10

    double-to-int v7, v8

    new-array v7, v7, [Lcom/twelvemonkeys/image/ResampleOp$f;

    iput-object v7, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    int-to-double v7, v3

    div-double v7, v7, p1

    sub-double v9, v7, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    add-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    const-wide/16 v12, 0x0

    :goto_0
    if-gt v3, v9, :cond_5

    int-to-double v5, v3

    sub-double v5, v7, v5

    div-double/2addr v5, v14

    invoke-interface {v2, v5, v6}, Lcom/twelvemonkeys/image/ResampleOp$m;->a(D)D

    move-result-wide v5

    div-double/2addr v5, v14

    if-gez v3, :cond_1

    neg-int v10, v3

    goto :goto_1

    :cond_1
    if-lt v3, v1, :cond_2

    sub-int v10, v1, v3

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    if-lt v10, v1, :cond_3

    rem-int/2addr v10, v1

    goto :goto_2

    :cond_3
    if-gez v10, :cond_4

    add-int/lit8 v10, v1, -0x1

    :cond_4
    :goto_2
    iget v11, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    move-wide/from16 p3, v7

    add-int/lit8 v7, v11, 0x1

    iput v7, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    iget-object v7, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    new-instance v8, Lcom/twelvemonkeys/image/ResampleOp$f;

    invoke-direct {v8, v0}, Lcom/twelvemonkeys/image/ResampleOp$f;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    aput-object v8, v7, v11

    iget-object v7, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v7, v7, v11

    iput v10, v7, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    iput-wide v5, v7, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-double/2addr v12, v5

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v7, p3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_5
    const-wide/16 v5, 0x0

    cmpl-double v0, v12, v5

    if-eqz v0, :cond_b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v12, v0

    if-eqz v2, :cond_b

    div-double v5, v0, v12

    const/4 v0, 0x0

    :goto_3
    iget v1, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    if-ge v0, v1, :cond_b

    iget-object v1, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    mul-double/2addr v2, v5

    iput-wide v2, v1, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    mul-double v5, p3, v8

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    add-double/2addr v5, v10

    double-to-int v5, v5

    new-array v5, v5, [Lcom/twelvemonkeys/image/ResampleOp$f;

    iput-object v5, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    int-to-double v5, v3

    div-double v5, v5, p1

    sub-double v7, v5, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v3, v7

    add-double v7, v5, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    :goto_4
    if-gt v3, v7, :cond_b

    int-to-double v8, v3

    sub-double v8, v5, v8

    invoke-interface {v2, v8, v9}, Lcom/twelvemonkeys/image/ResampleOp$m;->a(D)D

    move-result-wide v8

    if-gez v3, :cond_7

    neg-int v10, v3

    goto :goto_5

    :cond_7
    if-lt v3, v1, :cond_8

    sub-int v10, v1, v3

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_8
    move v10, v3

    :goto_5
    if-lt v10, v1, :cond_9

    rem-int/2addr v10, v1

    goto :goto_6

    :cond_9
    if-gez v10, :cond_a

    add-int/lit8 v10, v1, -0x1

    :cond_a
    :goto_6
    iget v11, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    iget-object v12, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    new-instance v13, Lcom/twelvemonkeys/image/ResampleOp$f;

    invoke-direct {v13, v0}, Lcom/twelvemonkeys/image/ResampleOp$f;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    aput-object v13, v12, v11

    iget-object v12, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v11, v12, v11

    iput v10, v11, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    iput-wide v8, v11, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    return-object v4
.end method

.method public final o(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Lcom/twelvemonkeys/image/ResampleOp$m;)Ljava/awt/image/BufferedImage;
    .locals 38

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    const/4 v14, 0x1

    move-object/from16 v1, p1

    invoke-static {v1, v0, v14, v13}, Lcom/twelvemonkeys/image/ImageUtil;->i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;

    move-result-object v15

    int-to-double v2, v10

    int-to-double v4, v12

    div-double v16, v2, v4

    int-to-double v2, v11

    int-to-double v4, v13

    div-double/2addr v2, v4

    new-array v7, v11, [Lcom/twelvemonkeys/image/ResampleOp$g;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_0

    new-instance v4, Lcom/twelvemonkeys/image/ResampleOp$g;

    invoke-direct {v4, v8}, Lcom/twelvemonkeys/image/ResampleOp$g;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    aput-object v4, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/twelvemonkeys/image/ResampleOp$m;->b()D

    move-result-wide v18

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    const-wide/16 v24, 0x0

    if-gez v0, :cond_9

    div-double v26, v18, v2

    div-double v28, v4, v2

    cmpg-double v0, v26, v22

    if-gtz v0, :cond_1

    const-wide v26, 0x3fe0000218def417L    # 0.500001

    move-wide/from16 v28, v4

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_8

    aget-object v6, v7, v0

    mul-double v30, v26, v20

    add-double v30, v30, v4

    add-double v4, v30, v22

    double-to-int v4, v4

    new-array v4, v4, [Lcom/twelvemonkeys/image/ResampleOp$f;

    iput-object v4, v6, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    int-to-double v4, v0

    div-double/2addr v4, v2

    sub-double v30, v4, v26

    move-object/from16 v33, v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    add-double v14, v4, v26

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-wide/from16 v30, v24

    :goto_2
    if-gt v6, v14, :cond_6

    move/from16 v34, v14

    int-to-double v14, v6

    sub-double v14, v4, v14

    div-double v14, v14, v28

    invoke-interface {v9, v14, v15}, Lcom/twelvemonkeys/image/ResampleOp$m;->a(D)D

    move-result-wide v14

    div-double v14, v14, v28

    if-gez v6, :cond_2

    neg-int v1, v6

    goto :goto_3

    :cond_2
    if-lt v6, v13, :cond_3

    sub-int v1, v13, v6

    add-int/2addr v1, v13

    const/16 v32, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    move v1, v6

    :goto_3
    if-lt v1, v13, :cond_4

    rem-int/2addr v1, v13

    goto :goto_4

    :cond_4
    if-gez v1, :cond_5

    add-int/lit8 v1, v13, -0x1

    :cond_5
    :goto_4
    move-wide/from16 v35, v4

    aget-object v4, v7, v0

    iget v5, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    move/from16 v37, v12

    add-int/lit8 v12, v5, 0x1

    iput v12, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    iget-object v4, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    new-instance v12, Lcom/twelvemonkeys/image/ResampleOp$f;

    invoke-direct {v12, v8}, Lcom/twelvemonkeys/image/ResampleOp$f;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    aput-object v12, v4, v5

    aget-object v4, v7, v0

    iget-object v4, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v4, v4, v5

    iput v1, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    iput-wide v14, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-double v30, v30, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move/from16 v14, v34

    move-wide/from16 v4, v35

    move/from16 v12, v37

    goto :goto_2

    :cond_6
    move/from16 v37, v12

    cmpl-double v1, v30, v24

    if-eqz v1, :cond_7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v30, v4

    if-eqz v1, :cond_7

    div-double v14, v4, v30

    const/4 v1, 0x0

    :goto_5
    aget-object v4, v7, v0

    iget v5, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    if-ge v1, v5, :cond_7

    iget-object v4, v4, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v4, v4, v1

    iget-wide v5, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    mul-double/2addr v5, v14

    iput-wide v5, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v15, v33

    move/from16 v12, v37

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v37, v12

    move-object/from16 v33, v15

    goto/16 :goto_a

    :cond_9
    move/from16 v37, v12

    move-object/from16 v33, v15

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v11, :cond_f

    aget-object v1, v7, v0

    mul-double v4, v18, v20

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v14

    add-double v4, v4, v22

    double-to-int v4, v4

    new-array v4, v4, [Lcom/twelvemonkeys/image/ResampleOp$f;

    iput-object v4, v1, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    int-to-double v4, v0

    div-double/2addr v4, v2

    sub-double v26, v4, v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    add-double v26, v4, v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    double-to-int v1, v14

    :goto_7
    int-to-double v14, v1

    cmpg-double v6, v14, v26

    if-gtz v6, :cond_e

    sub-double v14, v4, v14

    invoke-interface {v9, v14, v15}, Lcom/twelvemonkeys/image/ResampleOp$m;->a(D)D

    move-result-wide v14

    if-gez v1, :cond_a

    neg-int v6, v1

    goto :goto_8

    :cond_a
    if-lt v1, v13, :cond_b

    sub-int v6, v13, v1

    add-int/2addr v6, v13

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    goto :goto_8

    :cond_b
    move v6, v1

    :goto_8
    if-lt v6, v13, :cond_c

    rem-int/2addr v6, v13

    goto :goto_9

    :cond_c
    if-gez v6, :cond_d

    add-int/lit8 v6, v13, -0x1

    :cond_d
    :goto_9
    aget-object v12, v7, v0

    move-wide/from16 v28, v2

    iget v2, v12, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v12, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    iget-object v3, v12, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    new-instance v12, Lcom/twelvemonkeys/image/ResampleOp$f;

    invoke-direct {v12, v8}, Lcom/twelvemonkeys/image/ResampleOp$f;-><init>(Lcom/twelvemonkeys/image/ResampleOp;)V

    aput-object v12, v3, v2

    aget-object v3, v7, v0

    iget-object v3, v3, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v2, v3, v2

    iput v6, v2, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    iput-wide v14, v2, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v2, v28

    goto :goto_7

    :cond_e
    move-wide/from16 v28, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v14

    invoke-virtual {v12}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v15

    new-array v6, v15, [I

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v15, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v1

    const/16 v20, 0x1

    shl-int v1, v20, v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_10
    const/16 v20, 0x1

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v10, :cond_21

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    move/from16 v21, v5

    move/from16 v5, v37

    move-object/from16 v22, v6

    const/4 v8, 0x0

    move-object/from16 v6, p3

    move-object/from16 v23, v7

    move/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Lcom/twelvemonkeys/image/ResampleOp;->h(DDILcom/twelvemonkeys/image/ResampleOp$m;I)Lcom/twelvemonkeys/image/ResampleOp$g;

    move-result-object v0

    move v7, v8

    :goto_d
    if-ge v7, v13, :cond_18

    move v5, v8

    :goto_e
    if-ge v5, v15, :cond_17

    iget-object v1, v0, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v1, v1, v8

    iget v1, v1, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    invoke-virtual {v12, v1, v7, v5}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v1

    int-to-double v1, v1

    move v3, v8

    move v6, v3

    move-wide/from16 v26, v24

    :goto_f
    iget v4, v0, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    if-ge v6, v4, :cond_13

    if-nez v6, :cond_11

    move-wide v8, v1

    goto :goto_10

    :cond_11
    iget-object v4, v0, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v4, v4, v6

    iget v4, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    invoke-virtual {v12, v4, v7, v5}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v4

    int-to-double v8, v4

    :goto_10
    cmpl-double v4, v8, v1

    if-eqz v4, :cond_12

    move/from16 v3, v20

    :cond_12
    iget-object v4, v0, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v4, v4, v6

    move-object/from16 p1, v0

    move-wide/from16 v28, v1

    iget-wide v0, v4, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    mul-double/2addr v8, v0

    add-double v26, v26, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    move-wide/from16 v1, v28

    const/4 v8, 0x0

    goto :goto_f

    :cond_13
    move-object/from16 p1, v0

    move-wide/from16 v28, v1

    if-eqz v3, :cond_14

    invoke-static/range {v26 .. v27}, Lcom/twelvemonkeys/image/ResampleOp;->p(D)I

    move-result v0

    int-to-double v1, v0

    goto :goto_11

    :cond_14
    move-wide/from16 v1, v28

    :goto_11
    cmpg-double v0, v1, v24

    if-gez v0, :cond_15

    move-wide/from16 v8, v24

    goto :goto_12

    :cond_15
    aget v0, v22, v5

    int-to-double v3, v0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_16

    int-to-double v0, v0

    move-wide v8, v0

    goto :goto_12

    :cond_16
    move-wide v8, v1

    :goto_12
    const/4 v2, 0x0

    move-object/from16 v1, v33

    move v3, v7

    move v4, v5

    move v0, v5

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->setSample(IIID)V

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    const/4 v8, 0x0

    goto :goto_e

    :cond_17
    move-object/from16 p1, v0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p3

    const/4 v8, 0x0

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_13
    if-ge v6, v11, :cond_20

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v15, :cond_1f

    aget-object v0, v23, v6

    iget-object v0, v0, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    const/4 v8, 0x0

    aget-object v0, v0, v8

    iget v0, v0, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    move-object/from16 v9, v33

    invoke-virtual {v9, v8, v0, v7}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v0

    int-to-double v0, v0

    move v2, v8

    move v3, v2

    move-wide/from16 v4, v24

    :goto_15
    aget-object v8, v23, v6

    move/from16 v26, v10

    iget v10, v8, Lcom/twelvemonkeys/image/ResampleOp$g;->a:I

    if-ge v2, v10, :cond_1b

    if-nez v2, :cond_19

    move/from16 v27, v11

    move-wide v10, v0

    goto :goto_16

    :cond_19
    iget-object v8, v8, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/twelvemonkeys/image/ResampleOp$f;->a:I

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8, v7}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v8

    move/from16 v27, v11

    int-to-double v10, v8

    :goto_16
    cmpl-double v8, v10, v0

    if-eqz v8, :cond_1a

    move/from16 v3, v20

    :cond_1a
    aget-object v8, v23, v6

    iget-object v8, v8, Lcom/twelvemonkeys/image/ResampleOp$g;->b:[Lcom/twelvemonkeys/image/ResampleOp$f;

    aget-object v8, v8, v2

    move-wide/from16 v28, v0

    iget-wide v0, v8, Lcom/twelvemonkeys/image/ResampleOp$f;->b:D

    mul-double/2addr v10, v0

    add-double/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v26

    move/from16 v11, v27

    move-wide/from16 v0, v28

    goto :goto_15

    :cond_1b
    move-wide/from16 v28, v0

    move/from16 v27, v11

    if-eqz v3, :cond_1c

    invoke-static {v4, v5}, Lcom/twelvemonkeys/image/ResampleOp;->p(D)I

    move-result v0

    int-to-double v0, v0

    goto :goto_17

    :cond_1c
    move-wide/from16 v0, v28

    :goto_17
    cmpg-double v2, v0, v24

    if-gez v2, :cond_1d

    move-wide/from16 v4, v24

    goto :goto_18

    :cond_1d
    aget v2, v22, v7

    int-to-double v3, v2

    cmpl-double v3, v0, v3

    if-lez v3, :cond_1e

    int-to-double v0, v2

    :cond_1e
    move-wide v4, v0

    :goto_18
    move-object v0, v14

    move/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setSample(IIID)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v33, v9

    move/from16 v10, v26

    move/from16 v11, v27

    goto :goto_14

    :cond_1f
    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v9, v33

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_20
    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v9, v33

    add-int/lit8 v5, v21, 0x1

    move-object/from16 v8, p0

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v9, p3

    goto/16 :goto_c

    :cond_21
    return-object p2
.end method
