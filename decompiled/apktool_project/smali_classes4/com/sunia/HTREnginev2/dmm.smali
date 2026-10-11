.class public Lcom/sunia/HTREnginev2/dmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/awt/geom/AffineTransform;

.field public final d:Lcom/graphbuilder/curve/ShapeMultiPath;

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/graphbuilder/curve/ShapeMultiPath;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-virtual {p1}, Lcom/graphbuilder/curve/ShapeMultiPath;->getBasisVectors()[I

    move-result-object v1

    aget v0, v1, v0

    iput v0, p0, Lcom/sunia/HTREnginev2/dmm;->a:I

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/sunia/HTREnginev2/dmm;->b:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dmm;->c:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Lcom/graphbuilder/curve/ShapeMultiPath;->getWindingRule()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/dmm;->e:I

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 11

    .line 8
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v0

    .line 9
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->a:I

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    .line 10
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->b:I

    aget-wide v1, v0, v1

    const/4 v4, 0x1

    aput-wide v1, p1, v4

    .line 11
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-virtual {v1, v3}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 12
    :cond_0
    iget-object v5, p0, Lcom/sunia/HTREnginev2/dmm;->c:Ljava/awt/geom/AffineTransform;

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p1

    move-object v8, p1

    .line 13
    invoke-virtual/range {v5 .. v10}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    iget p0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    invoke-virtual {p1, p0}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    if-ne p0, p1, :cond_2

    return v3

    :cond_2
    return v4
.end method

.method public currentSegment([F)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->a:I

    aget-wide v1, v0, v1

    double-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 3
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->b:I

    aget-wide v3, v0, v1

    double-to-float v1, v3

    const/4 v3, 0x1

    aput v1, p1, v3

    .line 4
    iget v1, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-virtual {v1, v2}, Lcom/graphbuilder/curve/MultiPath;->get(I)[D

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/dmm;->c:Ljava/awt/geom/AffineTransform;

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    move-object v7, p1

    .line 6
    invoke-virtual/range {v4 .. v9}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    iget p0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    invoke-virtual {p1, p0}, Lcom/graphbuilder/curve/MultiPath;->getType(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/graphbuilder/curve/MultiPath;->MOVE_TO:Ljava/lang/Object;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public getWindingRule()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/dmm;->e:I

    return p0
.end method

.method public isDone()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dmm;->d:Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-virtual {p0}, Lcom/graphbuilder/curve/MultiPath;->getNumPoints()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/dmm;->f:I

    return-void
.end method
