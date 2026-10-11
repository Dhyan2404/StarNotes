.class public Lnet/sf/saxon/tree/iter/ManualIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/FocusIterator;
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/ReversibleIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public e:Lnet/sf/saxon/om/Item;

.field public f:I

.field public g:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/Item;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    .line 10
    new-instance p1, Lcom/sunia/HTREnginev2/k8j;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/k8j;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->g:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/Item;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    .line 6
    iput p2, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    return-void
.end method

.method public static synthetic f()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lnet/sf/saxon/tree/iter/ManualIterator;->j()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public current()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getLength()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->g:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    const-string v0, "Saxon streaming restriction: last() cannot be used when consuming a sequence of streamed nodes, even if the items being processed are grounded"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ManualIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/ManualIterator;

    move-result-object p0

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/tree/iter/ManualIterator;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ManualIterator;->position()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ManualIterator;->getLength()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public incrementPosition()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    return-void
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public position()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    return p0
.end method

.method public setContextItem(Lnet/sf/saxon/om/Item;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->e:Lnet/sf/saxon/om/Item;

    return-void
.end method

.method public setLengthFinder(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->g:Ljava/util/function/Supplier;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/tree/iter/ManualIterator;->f:I

    return-void
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
