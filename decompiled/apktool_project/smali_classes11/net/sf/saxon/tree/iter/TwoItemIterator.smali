.class public Lnet/sf/saxon/tree/iter/TwoItemIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Lnet/sf/saxon/om/Item;

.field public final f:Lnet/sf/saxon/om/Item;

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->g:I

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->e:Lnet/sf/saxon/om/Item;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->f:Lnet/sf/saxon/om/Item;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 5

    iget v0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->g:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->f:Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/sf/saxon/om/Item;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->e:Lnet/sf/saxon/om/Item;

    aput-object v4, v2, v3

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->f:Lnet/sf/saxon/om/Item;

    aput-object p0, v2, v1

    invoke-direct {v0, v2}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->g:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

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

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->g:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->f:Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/iter/TwoItemIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
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
