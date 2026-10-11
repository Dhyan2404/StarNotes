.class public Lnet/sf/saxon/expr/TailIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput p2, p0, Lnet/sf/saxon/expr/TailIterator;->f:I

    return-void
.end method

.method public static make(Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-object p0

    :cond_0
    instance-of v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;

    if-eqz v1, :cond_1

    check-cast p0, Lnet/sf/saxon/tree/iter/ArrayIterator;

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/tree/iter/ArrayIterator;->makeSliceIterator(II)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v1

    if-le p1, v1, :cond_2

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Lnet/sf/saxon/expr/ValueTailIterator;

    sub-int/2addr p1, v0

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/expr/ValueTailIterator;-><init>(Lnet/sf/saxon/om/GroundedValue;I)V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lnet/sf/saxon/expr/TailIterator;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/TailIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/expr/TailIterator;->f:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public supportsHasNext()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/TailIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

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
