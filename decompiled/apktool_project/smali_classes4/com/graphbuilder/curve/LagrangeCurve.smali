.class public Lcom/graphbuilder/curve/LagrangeCurve;
.super Lcom/graphbuilder/curve/ParametricCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/curve/LagrangeCurve$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/curve/LagrangeCurve$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/graphbuilder/curve/ValueVector;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public final f:Lcom/graphbuilder/curve/LagrangeCurve$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/curve/LagrangeCurve$a;

    invoke-direct {v0}, Lcom/graphbuilder/curve/LagrangeCurve$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/curve/LagrangeCurve;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/ParametricCurve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    new-instance p1, Lcom/graphbuilder/curve/ValueVector;

    const/4 p2, 0x4

    new-array v0, p2, [D

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, p2}, Lcom/graphbuilder/curve/ValueVector;-><init>([DI)V

    iput-object p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    const/4 p1, 0x1

    iput p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    iput p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->d:Z

    iput-boolean p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->e:Z

    sget-object p1, Lcom/graphbuilder/curve/LagrangeCurve;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphbuilder/curve/LagrangeCurve$b;

    iput-object p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe5555555555555L    # 0.6666666666666666
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final a(DI)D
    .locals 8

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v4, p3}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    iget-object v6, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v6, v3}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v6, v3}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v6

    sub-double v6, p1, v6

    div-double/2addr v6, v4

    mul-double/2addr v1, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 13

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    iget v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    iget-object v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[D

    invoke-static {v0, v1}, Lcom/graphbuilder/curve/LagrangeCurve$b;->b(Lcom/graphbuilder/curve/LagrangeCurve$b;[[D)[[D

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v7, v7}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    const/4 v6, 0x0

    iget v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->d:Z

    if-eqz v0, :cond_3

    move v0, v7

    :goto_0
    iget-object v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v1}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v1

    iget-object v2, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v3, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v2

    invoke-interface {v2}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Group iterator ended early"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v0, v7}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    iget v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/graphbuilder/curve/LagrangeCurve;->b(Lcom/graphbuilder/curve/MultiPath;DDZ)Z

    move-result v6

    :cond_3
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v7, v7}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    move v0, v7

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/GroupIterator;->index_i()I

    move-result v8

    iget-object v2, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/GroupIterator;->count_j()I

    move-result v9

    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_2
    iget-object v10, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v10}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v10

    if-ge v2, v10, :cond_6

    iget v10, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    if-ne v3, v10, :cond_4

    iget-object v4, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v4}, Lcom/graphbuilder/curve/GroupIterator;->index_i()I

    move-result v4

    iget-object v5, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v5}, Lcom/graphbuilder/curve/GroupIterator;->count_j()I

    move-result v5

    :cond_4
    iget-object v10, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v10}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v10}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v10

    iget-object v11, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v12, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v12}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v11

    invoke-interface {v11}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v11

    aput-object v11, v10, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget v2, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    iget v3, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v3}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9

    iget-boolean v2, p0, Lcom/graphbuilder/curve/LagrangeCurve;->e:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v2, v0, v1}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    :goto_4
    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not enough points to interpolate last"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v0

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v2, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v1

    aput-object v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    iget v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    iget v2, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/graphbuilder/curve/LagrangeCurve;->b(Lcom/graphbuilder/curve/MultiPath;DDZ)Z

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v4, v5}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    iget v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    iget v1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    iget v4, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/graphbuilder/curve/LagrangeCurve;->b(Lcom/graphbuilder/curve/MultiPath;DDZ)Z

    move-result v6

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseIndex + baseLength >= knotVector.size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Group iterator not in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/graphbuilder/curve/MultiPath;DDZ)Z
    .locals 7

    cmpg-double v0, p4, p2

    if-gez v0, :cond_0

    move-wide v4, p2

    move-wide v2, p4

    goto :goto_0

    :cond_0
    move-wide v2, p2

    move-wide v4, p4

    :goto_0
    if-nez p6, :cond_2

    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result p2

    const/4 p6, 0x1

    add-int/2addr p2, p6

    new-array p2, p2, [D

    invoke-virtual {p1}, Lcom/graphbuilder/curve/MultiPath;->getDimension()I

    move-result p3

    aput-wide v2, p2, p3

    invoke-virtual {p0, p2}, Lcom/graphbuilder/curve/LagrangeCurve;->eval([D)V

    iget-boolean p3, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :cond_2
    :goto_1
    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/graphbuilder/curve/BinaryCurveApproximationAlgorithm;->genPts(Lcom/graphbuilder/curve/ParametricCurve;DDLcom/graphbuilder/curve/MultiPath;)V

    return p6
.end method

.method public eval([D)V
    .locals 13

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p1, v0

    iget-object v2, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    invoke-virtual {v2}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v5}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/graphbuilder/curve/LagrangeCurve;->a(DI)D

    move-result-wide v6

    move v8, v3

    :goto_1
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double/2addr v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBaseIndex()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    return p0
.end method

.method public getBaseLength()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    return p0
.end method

.method public getInterpolateFirst()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->d:Z

    return p0
.end method

.method public getInterpolateLast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->e:Z

    return p0
.end method

.method public getKnotVector()Lcom/graphbuilder/curve/ValueVector;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    return-object p0
.end method

.method public getSampleLimit()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetMemory()V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    invoke-static {v0}, Lcom/graphbuilder/curve/LagrangeCurve$b;->a(Lcom/graphbuilder/curve/LagrangeCurve$b;)[[D

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/LagrangeCurve;->f:Lcom/graphbuilder/curve/LagrangeCurve$b;

    const/4 v0, 0x0

    new-array v0, v0, [[D

    invoke-static {p0, v0}, Lcom/graphbuilder/curve/LagrangeCurve$b;->b(Lcom/graphbuilder/curve/LagrangeCurve$b;[[D)[[D

    :cond_0
    return-void
.end method

.method public setBaseIndex(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "base index >= 0 required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBaseLength(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "base length > 0 required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterpolateFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->d:Z

    return-void
.end method

.method public setInterpolateLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->e:Z

    return-void
.end method

.method public setKnotVector(Lcom/graphbuilder/curve/ValueVector;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/curve/LagrangeCurve;->a:Lcom/graphbuilder/curve/ValueVector;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Knot-vector cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
