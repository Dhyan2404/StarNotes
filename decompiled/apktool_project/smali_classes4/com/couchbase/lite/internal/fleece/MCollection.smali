.class public abstract Lcom/couchbase/lite/internal/fleece/MCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/Encodable;


# instance fields
.field private final context:Lcom/couchbase/lite/internal/fleece/MContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final localMutations:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mutable:Z

.field private final mutableChildren:Z

.field private final mutated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final parent:Lcom/couchbase/lite/internal/fleece/MCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final slot:Lcom/couchbase/lite/internal/fleece/MValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MCollection;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MCollection;->getContext()Lcom/couchbase/lite/internal/fleece/MContext;

    move-result-object p1

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Lcom/couchbase/lite/internal/fleece/MContext;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MContext;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Lcom/couchbase/lite/internal/fleece/MContext;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Lcom/couchbase/lite/internal/fleece/MContext;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/fleece/MContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->localMutations:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->slot:Lcom/couchbase/lite/internal/fleece/MValue;

    .line 9
    iput-object p3, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->context:Lcom/couchbase/lite/internal/fleece/MContext;

    .line 10
    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->parent:Lcom/couchbase/lite/internal/fleece/MCollection;

    .line 11
    iput-boolean p4, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutable:Z

    .line 12
    iput-boolean p4, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutableChildren:Z

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MCollection;->getContext()Lcom/couchbase/lite/internal/fleece/MContext;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Lcom/couchbase/lite/internal/fleece/MContext;Z)V

    .line 4
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->isMutated()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public assertOpen()V
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->context:Lcom/couchbase/lite/internal/fleece/MContext;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MContext;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Cannot use a Fleece object after its parent has been closed"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final getContext()Lcom/couchbase/lite/internal/fleece/MContext;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->context:Lcom/couchbase/lite/internal/fleece/MContext;

    return-object p0
.end method

.method public final getLocalMutationCount()J
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->localMutations:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getStateString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutable:Z

    const-string v2, "."

    if-eqz v1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutated()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v2, "!"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasMutableChildren()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutableChildren:Z

    return p0
.end method

.method public final isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutable:Z

    return p0
.end method

.method public isMutated()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final mutate()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate(Z)V

    return-void
.end method

.method public final mutate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->localMutations:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->mutated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->slot:Lcom/couchbase/lite/internal/fleece/MValue;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->mutate()V

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MCollection;->parent:Lcom/couchbase/lite/internal/fleece/MCollection;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate(Z)V

    :cond_3
    return-void
.end method
