.class public Lcom/squareup/okhttp/internal/DiskLruCache$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/squareup/okhttp/internal/DiskLruCache$e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field public g:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field public final synthetic h:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->h:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->H(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->h:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->h:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->j(Lcom/squareup/okhttp/internal/DiskLruCache;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->e:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->e:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->n()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$c;->a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->h:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    throw v0

    :catch_0
    :goto_0
    iput-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$c;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
