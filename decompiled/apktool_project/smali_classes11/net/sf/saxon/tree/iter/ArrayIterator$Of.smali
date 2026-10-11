.class public Lnet/sf/saxon/tree/iter/ArrayIterator$Of;
.super Lnet/sf/saxon/tree/iter/ArrayIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/iter/ArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Of"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/sf/saxon/om/Item;",
        ">",
        "Lnet/sf/saxon/tree/iter/ArrayIterator;"
    }
.end annotation


# instance fields
.field protected items:[Lnet/sf/saxon/om/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    .line 4
    array-length p1, p1

    iput p1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    .line 5
    iput v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/om/Item;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator;-><init>()V

    .line 7
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    .line 8
    iput p3, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    .line 9
    iput p2, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    .line 10
    iput p2, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    return-void
.end method


# virtual methods
.method public getArray()[Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getEndPosition()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    return p0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    iget v2, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    add-int/2addr v1, v2

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Reverse;->reverseIterator(Ljava/util/List;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Reverse;->reverseIterator(Ljava/util/List;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeSliceIterator(II)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->getArray()[Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->getEndPosition()I

    move-result p0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    move p1, v2

    :cond_0
    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v1

    if-ge v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const v3, 0x7fffffff

    if-ne p2, v3, :cond_2

    move p2, p0

    goto :goto_1

    :cond_2
    add-int/2addr p2, v1

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    :goto_1
    if-le p2, p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, p2

    :goto_2
    if-gt p0, v1, :cond_4

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;-><init>([Lnet/sf/saxon/om/Item;II)V

    return-object p1
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->start:I

    iget p0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceExtent$Of;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    iget v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->end:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->items:[Lnet/sf/saxon/om/Item;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/tree/iter/ArrayIterator;->index:I

    aget-object p0, v1, v0

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
