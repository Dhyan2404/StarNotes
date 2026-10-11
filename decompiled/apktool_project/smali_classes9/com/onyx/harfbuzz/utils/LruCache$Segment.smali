.class public Lcom/onyx/harfbuzz/utils/LruCache$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/utils/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field protected final cache:Lcom/onyx/harfbuzz/utils/LruCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/utils/LruCache;)V
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/harfbuzz/utils/LruCache$b;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/LruCache;->a(Lcom/onyx/harfbuzz/utils/LruCache;)Lcom/onyx/harfbuzz/utils/LruCache$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$a;->d(Lcom/onyx/harfbuzz/utils/LruCache$b;)V

    iget-object p0, p1, Lcom/onyx/harfbuzz/utils/LruCache$b;->c:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/onyx/harfbuzz/utils/LruCache$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/harfbuzz/utils/LruCache$b;-><init>(Lcom/onyx/harfbuzz/utils/LruCache$Segment;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/harfbuzz/utils/LruCache$b;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/onyx/harfbuzz/utils/LruCache;->b(Lcom/onyx/harfbuzz/utils/LruCache;I)I

    iget-object p1, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    invoke-static {p1}, Lcom/onyx/harfbuzz/utils/LruCache;->a(Lcom/onyx/harfbuzz/utils/LruCache;)Lcom/onyx/harfbuzz/utils/LruCache$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/onyx/harfbuzz/utils/LruCache$a;->a(Lcom/onyx/harfbuzz/utils/LruCache$b;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/LruCache;->d(Lcom/onyx/harfbuzz/utils/LruCache;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache;->trimToSize(I)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An entry with same key has already been added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/harfbuzz/utils/LruCache$b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    iget-object v3, v1, Lcom/onyx/harfbuzz/utils/LruCache$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/onyx/harfbuzz/utils/LruCache;->c(Lcom/onyx/harfbuzz/utils/LruCache;I)I

    iget-object p0, p0, Lcom/onyx/harfbuzz/utils/LruCache$Segment;->cache:Lcom/onyx/harfbuzz/utils/LruCache;

    invoke-static {p0}, Lcom/onyx/harfbuzz/utils/LruCache;->a(Lcom/onyx/harfbuzz/utils/LruCache;)Lcom/onyx/harfbuzz/utils/LruCache$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/harfbuzz/utils/LruCache$a;->e(Lcom/onyx/harfbuzz/utils/LruCache$b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
