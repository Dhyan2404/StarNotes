.class public Lcom/graphbuilder/curve/BezierCurve;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/BezierCurve$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/BezierCurve$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/BezierCurve$b;

.field public final b:Lcom/graphbuilder/math/PascalsTriangle;

.field public c:D

.field public d:D

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/BezierCurve$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/BezierCurve$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/BezierCurve;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/BezierCurve;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/BezierCurve$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    new-instance p1, Lcom/graphbuilder/math/PascalsTriangle;

    invoke-direct {p1}, Lcom/graphbuilder/math/PascalsTriangle;-><init>()V

    iput-object p1, p0, Lcom/graphbuilder/curve/BezierCurve;->b:Lcom/graphbuilder/math/PascalsTriangle;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BezierCurve;->c:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BezierCurve;->d:D

    const/4 p1, 0x1

    iput p1, p0, Lcom/graphbuilder/curve/BezierCurve;->e:I

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 8

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    iget-wide v2, p0, Lcom/graphbuilder/curve/BezierCurve;->c:D

    aput-wide v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/graphbuilder/curve/BezierCurve;->eval([D)V

    iget-boolean v0, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_0
    iget-wide v3, p0, Lcom/graphbuilder/curve/BezierCurve;->c:D

    iget-wide v5, p0, Lcom/graphbuilder/curve/BezierCurve;->d:D

    move-object v2, p0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    iget-object v4, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v4}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v4

    iget-object v5, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v5

    array-length v5, v5

    if-le v4, v5, :cond_0

    iget-object v5, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    mul-int/lit8 v6, v4, 0x2

    new-array v6, v6, [D

    invoke-static {v5, v6}, Lcom/graphbuilder/curve/BezierCurve$b;->b(Lcom/graphbuilder/curve/BezierCurve$b;[D)[D

    :cond_0
    iget-object v5, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v5

    add-int/lit8 v6, v4, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v5, v6

    sub-double v9, v7, v2

    add-int/lit8 v5, v4, -0x2

    :goto_0
    if-ltz v5, :cond_1

    iget-object v11, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v11}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v11

    iget-object v12, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v12, v9

    aput-wide v12, v11, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v5, v9

    :goto_1
    if-ge v5, v4, :cond_4

    iget-object v10, v0, Lcom/graphbuilder/curve/BezierCurve;->b:Lcom/graphbuilder/math/PascalsTriangle;

    invoke-virtual {v10, v6, v5}, Lcom/graphbuilder/math/PascalsTriangle;->nCr(II)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    iget-object v12, v0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v12}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v12

    aget-wide v12, v12, v5

    mul-double/2addr v12, v7

    mul-double/2addr v12, v10

    iget-object v10, v0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v11, v0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v11}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v10

    invoke-interface {v10}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v10

    move v11, v9

    :goto_2
    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    if-ge v11, v14, :cond_3

    aget-wide v14, v1, v11

    aget-wide v16, v10, v11

    mul-double v16, v16, v12

    add-double v14, v14, v16

    aput-wide v14, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    mul-double/2addr v7, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getSampleLimit()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/BezierCurve;->e:I

    return p0
.end method

.method public resetMemory()V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/BezierCurve$b;->a(Lcom/graphbuilder/curve/BezierCurve$b;)[D

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/BezierCurve;->a:Lcom/graphbuilder/curve/BezierCurve$b;

    const/4 v0, 0x0

    new-array v0, v0, [D

    invoke-static {p0, v0}, Lcom/graphbuilder/curve/BezierCurve$b;->b(Lcom/graphbuilder/curve/BezierCurve$b;[D)[D

    :cond_0
    return-void
.end method

.method public setInterval(DD)V
    .locals 1

    cmpl-double v0, p1, p3

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/graphbuilder/curve/BezierCurve;->c:D

    iput-wide p3, p0, Lcom/graphbuilder/curve/BezierCurve;->d:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "t_min <= t_max required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSampleLimit(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/BezierCurve;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sample-limit >= 0 required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t_max()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/BezierCurve;->d:D

    return-wide v0
.end method

.method public t_min()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/BezierCurve;->c:D

    return-wide v0
.end method
