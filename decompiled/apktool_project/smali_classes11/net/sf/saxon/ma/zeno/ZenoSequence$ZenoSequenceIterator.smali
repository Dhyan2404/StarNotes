.class public Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/GroundedIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/zeno/ZenoSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenoSequenceIterator"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/ma/zeno/ZenoSequence;

.field public final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/zeno/ZenoSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->g:I

    iput-object p1, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->e:Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-static {p1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->a(Lnet/sf/saxon/ma/zeno/ZenoSequence;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->f:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->e:Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->getLength()I

    move-result p0

    return p0
.end method

.method public getResidue()Lnet/sf/saxon/om/GroundedValue;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->e:Lnet/sf/saxon/ma/zeno/ZenoSequence;

    iget p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->g:I

    const v1, 0x7fffffff

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->subsequence(II)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public isActuallyGrounded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->e:Lnet/sf/saxon/ma/zeno/ZenoSequence;

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->g:I

    iget-object v0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/zeno/ZenoSequence$ZenoSequenceIterator;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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
