.class public final Lcom/google/common/cache/LocalCache$d0;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/a<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/common/cache/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lcom/google/common/cache/LocalCache$d0$a;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$d0$a;-><init>(Lcom/google/common/cache/LocalCache$d0;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/a;->getPreviousInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->g(Lcom/google/common/cache/a;Lcom/google/common/cache/a;)V

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getPreviousInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->g(Lcom/google/common/cache/a;Lcom/google/common/cache/a;)V

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-static {p1, p0}, Lcom/google/common/cache/LocalCache;->g(Lcom/google/common/cache/a;Lcom/google/common/cache/a;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()Lcom/google/common/cache/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public c()Lcom/google/common/cache/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$d0;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->K(Lcom/google/common/cache/a;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v1}, Lcom/google/common/cache/a;->setNextInWriteQueue(Lcom/google/common/cache/a;)V

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {p0, p0}, Lcom/google/common/cache/a;->setPreviousInWriteQueue(Lcom/google/common/cache/a;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/cache/a;

    invoke-interface {p1}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object p0

    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/a<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/LocalCache$d0$b;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d0;->b()Lcom/google/common/cache/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/LocalCache$d0$b;-><init>(Lcom/google/common/cache/LocalCache$d0;Lcom/google/common/cache/a;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/cache/a;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$d0;->a(Lcom/google/common/cache/a;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d0;->b()Lcom/google/common/cache/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d0;->c()Lcom/google/common/cache/a;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/common/cache/a;

    invoke-interface {p1}, Lcom/google/common/cache/a;->getPreviousInWriteQueue()Lcom/google/common/cache/a;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/cache/LocalCache;->g(Lcom/google/common/cache/a;Lcom/google/common/cache/a;)V

    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->K(Lcom/google/common/cache/a;)V

    sget-object p0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$d0;->e:Lcom/google/common/cache/a;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/google/common/cache/a;->getNextInWriteQueue()Lcom/google/common/cache/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
