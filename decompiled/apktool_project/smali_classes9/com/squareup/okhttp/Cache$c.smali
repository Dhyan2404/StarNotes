.class public final Lcom/squareup/okhttp/Cache$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field public b:Lokio/Sink;

.field public c:Z

.field public d:Lokio/Sink;

.field public final synthetic e:Lcom/squareup/okhttp/Cache;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$c;->e:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/Cache$c;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$c;->b:Lokio/Sink;

    new-instance v1, Lcom/squareup/okhttp/Cache$c$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/squareup/okhttp/Cache$c$a;-><init>(Lcom/squareup/okhttp/Cache$c;Lokio/Sink;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v1, p0, Lcom/squareup/okhttp/Cache$c;->d:Lokio/Sink;

    return-void
.end method

.method public static synthetic a(Lcom/squareup/okhttp/Cache$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/Cache$c;->c:Z

    return p0
.end method

.method public static synthetic b(Lcom/squareup/okhttp/Cache$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/Cache$c;->c:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$c;->e:Lcom/squareup/okhttp/Cache;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/Cache$c;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/Cache$c;->c:Z

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$c;->e:Lcom/squareup/okhttp/Cache;

    invoke-static {v1}, Lcom/squareup/okhttp/Cache;->j(Lcom/squareup/okhttp/Cache;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$c;->b:Lokio/Sink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_1
    iget-object p0, p0, Lcom/squareup/okhttp/Cache$c;->a:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public body()Lokio/Sink;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$c;->d:Lokio/Sink;

    return-object p0
.end method
