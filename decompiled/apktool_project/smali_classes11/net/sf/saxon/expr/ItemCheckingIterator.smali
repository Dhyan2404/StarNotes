.class public Lnet/sf/saxon/expr/ItemCheckingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/om/Item;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->f:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public supportsGetLength()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    return p0
.end method

.method public supportsHasNext()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemCheckingIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

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
