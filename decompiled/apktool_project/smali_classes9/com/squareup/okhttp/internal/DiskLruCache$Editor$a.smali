.class public Lcom/squareup/okhttp/internal/DiskLruCache$Editor$a;
.super Lcom/sunia/HTREnginev2/d9g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/d9g;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$a;->f:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->c(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
