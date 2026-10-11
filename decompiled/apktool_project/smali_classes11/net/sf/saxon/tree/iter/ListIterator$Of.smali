.class public Lnet/sf/saxon/tree/iter/ListIterator$Of;
.super Lnet/sf/saxon/tree/iter/ListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/iter/ListIterator;
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
        "Lnet/sf/saxon/tree/iter/ListIterator;"
    }
.end annotation


# instance fields
.field public e:I

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/ListIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    iget p0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    invoke-static {p0}, Lnet/sf/saxon/functions/Reverse;->reverseIterator(Ljava/util/List;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

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
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/SequenceExtent$Of;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->list:Ljava/util/List;

    iget v1, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
