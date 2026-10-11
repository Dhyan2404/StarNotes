.class public Lnet/sf/saxon/om/FocusTrackingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/FocusIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/FocusTrackingIterator$b;
    }
.end annotation


# static fields
.field public static final synthetic j:Z


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/om/Item;

.field public g:I

.field public h:I

.field public i:Lnet/sf/saxon/om/FocusTrackingIterator$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    iput-object p1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method

.method public static track(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusTrackingIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public current()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->f:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    :cond_0
    iget v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/value/SequenceExtent;->makeResidue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    :cond_1
    iget p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->h:I

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/value/SequenceExtent;->from(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/value/SequenceExtent$Of;

    move-result-object p0

    return-object p0
.end method

.method public getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    invoke-interface {p1}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->i:Lnet/sf/saxon/om/FocusTrackingIterator$b;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/om/FocusTrackingIterator$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/FocusTrackingIterator$b;-><init>(Lnet/sf/saxon/om/FocusTrackingIterator$a;)V

    iput-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->i:Lnet/sf/saxon/om/FocusTrackingIterator$b;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->a:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->i:Lnet/sf/saxon/om/FocusTrackingIterator$b;

    iget-object v0, v0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->b:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->i:Lnet/sf/saxon/om/FocusTrackingIterator$b;

    iget p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->c:I

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->i:Lnet/sf/saxon/om/FocusTrackingIterator$b;

    const/16 v0, 0xb

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->b:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2, v3}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->a:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget p2, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->c:I

    add-int/2addr v1, p2

    iput-object p1, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->b:Lnet/sf/saxon/om/NodeInfo;

    iput v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->c:I

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-le v1, p3, :cond_3

    return v1

    :cond_5
    iput-object p1, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->b:Lnet/sf/saxon/om/NodeInfo;

    iput v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->c:I

    iput-object p2, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->a:Lnet/sf/saxon/pattern/NodeTest;

    return v1
.end method

.method public getUnderlyingIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->f:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    :goto_0
    return-object v0
.end method

.method public position()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->g:I

    return p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/om/FocusTrackingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
