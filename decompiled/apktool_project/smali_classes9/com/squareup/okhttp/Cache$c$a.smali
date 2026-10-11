.class public Lcom/squareup/okhttp/Cache$c$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$c;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/squareup/okhttp/Cache;

.field public final synthetic f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field public final synthetic g:Lcom/squareup/okhttp/Cache$c;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache$c;Lokio/Sink;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$c$a;->g:Lcom/squareup/okhttp/Cache$c;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$c$a;->e:Lcom/squareup/okhttp/Cache;

    iput-object p4, p0, Lcom/squareup/okhttp/Cache$c$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$c$a;->g:Lcom/squareup/okhttp/Cache$c;

    iget-object v0, v0, Lcom/squareup/okhttp/Cache$c;->e:Lcom/squareup/okhttp/Cache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$c$a;->g:Lcom/squareup/okhttp/Cache$c;

    invoke-static {v1}, Lcom/squareup/okhttp/Cache$c;->a(Lcom/squareup/okhttp/Cache$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$c$a;->g:Lcom/squareup/okhttp/Cache$c;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/Cache$c;->b(Lcom/squareup/okhttp/Cache$c;Z)Z

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$c$a;->g:Lcom/squareup/okhttp/Cache$c;

    iget-object v1, v1, Lcom/squareup/okhttp/Cache$c;->e:Lcom/squareup/okhttp/Cache;

    invoke-static {v1}, Lcom/squareup/okhttp/Cache;->i(Lcom/squareup/okhttp/Cache;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    iget-object p0, p0, Lcom/squareup/okhttp/Cache$c$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
