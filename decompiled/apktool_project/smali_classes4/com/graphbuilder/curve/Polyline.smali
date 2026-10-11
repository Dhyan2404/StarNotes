.class public Lcom/graphbuilder/curve/Polyline;
.super Lcom/graphbuilder/curve/Curve;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/Curve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/graphbuilder/curve/MultiPath;)V
    .locals 3

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/graphbuilder/curve/GroupIterator;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0, v2, v2}, Lcom/graphbuilder/curve/GroupIterator;->set(II)V

    iget-boolean v0, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->moveTo([D)V

    :goto_0
    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v0}, Lcom/graphbuilder/curve/GroupIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    iget-object v1, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    invoke-virtual {v1}, Lcom/graphbuilder/curve/GroupIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphbuilder/curve/ControlPath;->getPoint(I)Lcom/graphbuilder/curve/Point;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphbuilder/curve/Point;->getLocation()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/MultiPath;->lineTo([D)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group iterator not in range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
