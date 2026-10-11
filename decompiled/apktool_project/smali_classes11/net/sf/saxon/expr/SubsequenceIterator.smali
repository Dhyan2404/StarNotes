.class public Lnet/sf/saxon/expr/SubsequenceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:I

.field public final g:I

.field public final h:I

.field public i:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    iput-object p1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput p2, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->g:I

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    iput p3, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->h:I

    if-ge p3, p2, :cond_1

    iput-object v0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    return-void

    :cond_1
    move p3, v1

    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-gt p3, p2, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p3

    iput-object p3, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    iget v2, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static make(Lnet/sf/saxon/om/SequenceIterator;II)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/iter/ArrayIterator;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/tree/iter/ArrayIterator;->makeSliceIterator(II)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/TailIterator;->make(Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p0, v0, p2}, Lnet/sf/saxon/om/GroundedValue;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/expr/SubsequenceIterator;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/expr/SubsequenceIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;II)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->g:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    iget v3, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->h:I

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    iget v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->f:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->i:Lnet/sf/saxon/om/Item;

    iget-object p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :goto_0
    return-object v0
.end method

.method public supportsGetLength()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SubsequenceIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
