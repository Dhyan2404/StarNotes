.class public Lcom/graphbuilder/curve/ControlPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/graphbuilder/struc/Bag;

.field public b:Lcom/graphbuilder/struc/Bag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphbuilder/struc/Bag;

    invoke-direct {v0}, Lcom/graphbuilder/struc/Bag;-><init>()V

    iput-object v0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    new-instance v0, Lcom/graphbuilder/struc/Bag;

    invoke-direct {v0}, Lcom/graphbuilder/struc/Bag;-><init>()V

    iput-object v0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    return-void
.end method


# virtual methods
.method public addCurve(Lcom/graphbuilder/curve/Curve;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Curve cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPoint(Lcom/graphbuilder/curve/Point;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureCurveCapacity(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->ensureCapacity(I)V

    return-void
.end method

.method public ensurePointCapacity(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->ensureCapacity(I)V

    return-void
.end method

.method public getCurve(I)Lcom/graphbuilder/curve/Curve;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/curve/Curve;

    return-object p0
.end method

.method public getPoint(I)Lcom/graphbuilder/curve/Point;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/curve/Point;

    return-object p0
.end method

.method public insertCurve(Lcom/graphbuilder/curve/Curve;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/struc/Bag;->insert(Ljava/lang/Object;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Curve cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertPoint(Lcom/graphbuilder/curve/Point;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/struc/Bag;->insert(Ljava/lang/Object;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public numCurves()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result p0

    return p0
.end method

.method public numPoints()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->size()I

    move-result p0

    return p0
.end method

.method public removeCurve(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeCurve(Lcom/graphbuilder/curve/Curve;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->remove(Ljava/lang/Object;)I

    return-void
.end method

.method public removePoint(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removePoint(Lcom/graphbuilder/curve/Point;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->remove(Ljava/lang/Object;)I

    return-void
.end method

.method public setCurve(Lcom/graphbuilder/curve/Curve;I)Lcom/graphbuilder/curve/Curve;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/struc/Bag;->set(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/curve/Curve;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Curve cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPoint(Lcom/graphbuilder/curve/Point;I)Lcom/graphbuilder/curve/Point;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/struc/Bag;->set(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphbuilder/curve/Point;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public trimCurveArray()V
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->a:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->trimArray()V

    return-void
.end method

.method public trimPointArray()V
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/ControlPath;->b:Lcom/graphbuilder/struc/Bag;

    invoke-virtual {p0}, Lcom/graphbuilder/struc/Bag;->trimArray()V

    return-void
.end method
