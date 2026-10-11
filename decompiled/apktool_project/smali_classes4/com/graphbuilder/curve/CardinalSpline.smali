.class public Lcom/graphbuilder/curve/CardinalSpline;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/CardinalSpline$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/CardinalSpline$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/curve/CardinalSpline$b;

.field public b:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/CardinalSpline$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/CardinalSpline$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/CardinalSpline;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    sget-object p1, Lcom/graphbuilder/curve/CardinalSpline;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/CardinalSpline$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    iput-wide p1, p0, Lcom/graphbuilder/curve/CardinalSpline;->b:D

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 9

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->getGroupSize()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v3}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v3

    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v4

    invoke-interface {v4}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, Lcom/graphbuilder/curve/CardinalSpline;->eval([D)V

    iget-boolean v3, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_1
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    :goto_2
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->index_i()I

    move-result v0

    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/GroupIterator;->count_j()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v5

    iget-object v6, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v7, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v7}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v4, v0, v3}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "more than 4 groups required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public eval([D)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v1, v2

    mul-double v6, v4, v4

    mul-double v8, v6, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v8, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, v16

    const-wide/high16 v16, -0x4000000000000000L    # -2.0

    mul-double v16, v16, v8

    add-double v16, v16, v14

    iget-wide v14, v0, Lcom/graphbuilder/curve/CardinalSpline;->b:D

    mul-double/2addr v10, v6

    sub-double v10, v8, v10

    add-double/2addr v10, v4

    mul-double/2addr v10, v14

    sub-double/2addr v8, v6

    mul-double/2addr v14, v8

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    array-length v5, v1

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v5

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    mul-double/2addr v5, v12

    iget-object v7, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    aget-wide v18, v7, v4

    mul-double v18, v18, v16

    add-double v5, v5, v18

    iget-object v7, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v7

    aget-object v7, v7, v8

    aget-wide v7, v7, v4

    iget-object v9, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v9

    aget-object v9, v9, v2

    aget-wide v18, v9, v4

    sub-double v7, v7, v18

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    iget-object v7, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v7}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aget-wide v7, v7, v4

    iget-object v9, v0, Lcom/graphbuilder/curve/CardinalSpline;->a:Lcom/graphbuilder/curve/CardinalSpline$b;

    invoke-static {v9}, Lcom/graphbuilder/curve/CardinalSpline$b;->a(Lcom/graphbuilder/curve/CardinalSpline$b;)[[D

    move-result-object v9

    aget-object v9, v9, v3

    aget-wide v18, v9, v4

    sub-double v7, v7, v18

    mul-double/2addr v7, v14

    add-double/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlpha()D
    .locals 2

    iget-wide v0, p0, Lcom/graphbuilder/curve/CardinalSpline;->b:D

    return-wide v0
.end method

.method public getSampleLimit()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphbuilder/curve/CardinalSpline;->b:D

    return-void
.end method
