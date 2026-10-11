.class public abstract Lcom/graphbuilder/curve/Curve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected connect:Z

.field protected cp:Lcom/graphbuilder/curve/ControlPath;

.field protected gi:Lcom/graphbuilder/curve/GroupIterator;


# direct methods
.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    invoke-virtual {p0, p1}, Lcom/graphbuilder/curve/Curve;->setControlPath(Lcom/graphbuilder/curve/ControlPath;)V

    invoke-virtual {p0, p2}, Lcom/graphbuilder/curve/Curve;->setGroupIterator(Lcom/graphbuilder/curve/GroupIterator;)V

    return-void
.end method


# virtual methods
.method public abstract appendTo(Lcom/graphbuilder/curve/MultiPath;)V
.end method

.method public getConnect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    return p0
.end method

.method public getControlPath()Lcom/graphbuilder/curve/ControlPath;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    return-object p0
.end method

.method public getGroupIterator()Lcom/graphbuilder/curve/GroupIterator;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    return-object p0
.end method

.method public resetMemory()V
    .locals 0

    return-void
.end method

.method public setConnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphbuilder/curve/Curve;->connect:Z

    return-void
.end method

.method public setControlPath(Lcom/graphbuilder/curve/ControlPath;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/curve/Curve;->cp:Lcom/graphbuilder/curve/ControlPath;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ControlPath cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGroupIterator(Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphbuilder/curve/Curve;->gi:Lcom/graphbuilder/curve/GroupIterator;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GroupIterator cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
