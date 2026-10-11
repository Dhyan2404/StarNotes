.class public Lcom/google/common/cache/LocalCache$d0$b;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$d0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "Lcom/google/common/cache/a<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/cache/LocalCache$d0;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$d0;Lcom/google/common/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$d0$b;->f:Lcom/google/common/cache/LocalCache$d0;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/a;)Lcom/google/common/cache/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0$b;->f:Lcom/google/common/cache/LocalCache$d0;

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/cache/a;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$d0$b;->a(Lcom/google/common/cache/a;)Lcom/google/common/cache/a;

    move-result-object p0

    return-object p0
.end method
