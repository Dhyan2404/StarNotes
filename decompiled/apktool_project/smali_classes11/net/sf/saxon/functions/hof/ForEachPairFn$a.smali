.class public Lnet/sf/saxon/functions/hof/ForEachPairFn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/ForEachPairFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/om/SequenceIterator;

.field public final g:[Lnet/sf/saxon/om/Sequence;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    iput-object v0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->g:[Lnet/sf/saxon/om/Sequence;

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public f()Lnet/sf/saxon/value/ObjectValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/value/ObjectValue<",
            "[",
            "Lnet/sf/saxon/om/Sequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->close()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->close()V

    return-object v1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->g:[Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    aput-object v2, p0, v0

    new-instance v0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/hof/ForEachPairFn$a;->f()Lnet/sf/saxon/value/ObjectValue;

    move-result-object p0

    return-object p0
.end method
