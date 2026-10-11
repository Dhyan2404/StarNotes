.class public Lnet/sf/saxon/expr/ValueTailIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/GroundedValue;

.field public final f:I

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    iput p2, p0, Lnet/sf/saxon/expr/ValueTailIterator;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    return-void
.end method


# virtual methods
.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->f:I

    if-nez v0, :cond_0

    iget v1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    return-object p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    iget p0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    add-int/2addr v0, p0

    const p0, 0x7fffffff

    invoke-interface {v1, v0, p0}, Lnet/sf/saxon/om/GroundedValue;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    iget v1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->f:I

    iget p0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    add-int/2addr v1, p0

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_0

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
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->f:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    const v1, 0x7fffffff

    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/GroundedValue;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/ValueTailIterator;->e:Lnet/sf/saxon/om/GroundedValue;

    iget v1, p0, Lnet/sf/saxon/expr/ValueTailIterator;->f:I

    iget v2, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/expr/ValueTailIterator;->g:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
