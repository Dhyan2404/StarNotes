.class public Lorg/apache/commons/collections4/IterableUtils$k$a;
.super Lorg/apache/commons/collections4/iterators/LazyIteratorChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/IterableUtils$k;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/iterators/LazyIteratorChain<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lorg/apache/commons/collections4/IterableUtils$k;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/IterableUtils$k;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$k$a;->i:Lorg/apache/commons/collections4/IterableUtils$k;

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/LazyIteratorChain;-><init>()V

    return-void
.end method


# virtual methods
.method public nextIterator(I)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/commons/collections4/IterableUtils$k$a;->i:Lorg/apache/commons/collections4/IterableUtils$k;

    iget-object p1, p1, Lorg/apache/commons/collections4/IterableUtils$k;->f:Ljava/lang/Iterable;

    invoke-static {p1}, Lorg/apache/commons/collections4/IterableUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/collections4/IterableUtils$k$a;->i:Lorg/apache/commons/collections4/IterableUtils$k;

    iget-object p0, p0, Lorg/apache/commons/collections4/IterableUtils$k;->f:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
