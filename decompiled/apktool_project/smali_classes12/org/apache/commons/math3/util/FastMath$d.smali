.class public Lorg/apache/commons/math3/util/FastMath$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final d:Lorg/apache/commons/math3/util/FastMath$d;

.field public static final e:Lorg/apache/commons/math3/util/FastMath$d;

.field public static final f:Lorg/apache/commons/math3/util/FastMath$d;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$d;->d:Lorg/apache/commons/math3/util/FastMath$d;

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$d;->e:Lorg/apache/commons/math3/util/FastMath$d;

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$d;->f:Lorg/apache/commons/math3/util/FastMath$d;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    sub-double/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    move-wide v3, p3

    goto :goto_1

    :cond_1
    add-double v0, p1, p3

    :goto_0
    move-wide v3, v0

    :goto_1
    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    .line 8
    iput-wide p3, p0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    .line 9
    iput-wide p5, p0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/util/FastMath$d;J)Lorg/apache/commons/math3/util/FastMath$d;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/FastMath$d;->d(J)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/util/FastMath$d;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    return-wide v0
.end method


# virtual methods
.method public c(Lorg/apache/commons/math3/util/FastMath$d;)Lorg/apache/commons/math3/util/FastMath$d;
    .locals 13

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(D)V

    iget-wide v1, p0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    iget-wide v9, p0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    iget-wide p0, p1, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    mul-double v11, v9, p0

    sub-double/2addr v7, v11

    mul-double/2addr v1, p0

    sub-double/2addr v7, v1

    mul-double/2addr v9, v3

    sub-double/2addr v7, v9

    sub-double/2addr v5, v7

    new-instance p0, Lorg/apache/commons/math3/util/FastMath$d;

    iget-wide v1, v0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    add-double/2addr v3, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    return-object p0
.end method

.method public final d(J)Lorg/apache/commons/math3/util/FastMath$d;
    .locals 11

    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(D)V

    new-instance v10, Lorg/apache/commons/math3/util/FastMath$d;

    iget-wide v4, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    iget-wide v6, p0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    iget-wide v8, p0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DDD)V

    move-wide v3, p1

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_1

    and-long v7, v3, v8

    cmp-long v5, v7, v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/FastMath$d;->c(Lorg/apache/commons/math3/util/FastMath$d;)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object v0

    :cond_0
    invoke-virtual {v10, v10}, Lorg/apache/commons/math3/util/FastMath$d;->c(Lorg/apache/commons/math3/util/FastMath$d;)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object v10

    const/4 v5, 0x1

    ushr-long/2addr v3, v5

    goto :goto_0

    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/apache/commons/math3/util/FastMath$d;->d:Lorg/apache/commons/math3/util/FastMath$d;

    return-object p0

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpg-double v0, v3, v1

    const-wide/16 v1, 0x0

    if-gez v0, :cond_3

    new-instance p1, Lorg/apache/commons/math3/util/FastMath$d;

    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v3

    invoke-direct {p1, v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    return-object p1

    :cond_3
    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    cmpg-double p0, v3, v1

    if-gez p0, :cond_4

    and-long p0, p1, v8

    cmp-long p0, p0, v8

    if-nez p0, :cond_4

    sget-object p0, Lorg/apache/commons/math3/util/FastMath$d;->f:Lorg/apache/commons/math3/util/FastMath$d;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/commons/math3/util/FastMath$d;->e:Lorg/apache/commons/math3/util/FastMath$d;

    return-object p0

    :cond_5
    return-object v0
.end method

.method public e()Lorg/apache/commons/math3/util/FastMath$d;
    .locals 9

    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    new-instance v4, Lorg/apache/commons/math3/util/FastMath$d;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(D)V

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/util/FastMath$d;->c(Lorg/apache/commons/math3/util/FastMath$d;)Lorg/apache/commons/math3/util/FastMath$d;

    move-result-object v0

    iget-wide v5, v0, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    sub-double/2addr v5, v2

    iget-wide v0, v0, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$d;

    iget-wide v1, v4, Lorg/apache/commons/math3/util/FastMath$d;->b:D

    iget-wide v3, v4, Lorg/apache/commons/math3/util/FastMath$d;->c:D

    iget-wide v7, p0, Lorg/apache/commons/math3/util/FastMath$d;->a:D

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$d;-><init>(DD)V

    move-object v4, v0

    :goto_0
    return-object v4
.end method
