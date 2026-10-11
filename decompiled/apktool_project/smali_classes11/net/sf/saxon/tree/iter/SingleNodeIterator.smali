.class public Lnet/sf/saxon/tree/iter/SingleNodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;

.field public f:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->f:I

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method

.method public static makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object v0
.end method

.method public getValue()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->f:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget v0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput v1, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->f:I

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->f:I

    :cond_1
    return-object v2
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
