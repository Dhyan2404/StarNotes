.class public Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/om/SequenceIterator;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TJ;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TJ;",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TJ;>;",
            "Ljava/util/function/Function<",
            "TJ;",
            "Lnet/sf/saxon/om/Item;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;->e:Ljava/util/Iterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;->f:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;->f:Ljava/util/function/Function;

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/SequenceIteratorOverJavaIterator;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
