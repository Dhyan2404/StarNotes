.class final Lcom/couchbase/lite/Blob$BlobInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Blob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlobInputStream"
.end annotation


# instance fields
.field private blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

.field private final buf:[B

.field private key:Lcom/couchbase/lite/internal/core/C4BlobKey;

.field private store:Lcom/couchbase/lite/internal/core/C4BlobStore;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobKey;Lcom/couchbase/lite/internal/core/C4BlobStore;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4BlobStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->buf:[B

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4BlobKey;

    iput-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    const-string v0, "store"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4BlobStore;

    iput-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->store:Lcom/couchbase/lite/internal/core/C4BlobStore;

    invoke-virtual {p2, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->openReadStream(Lcom/couchbase/lite/internal/core/C4BlobKey;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->close()V

    iput-object v1, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobKey;->close()V

    iput-object v1, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->store:Lcom/couchbase/lite/internal/core/C4BlobStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4BlobStore;->close()V

    iput-object v1, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->store:Lcom/couchbase/lite/internal/core/C4BlobStore;

    :cond_2
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\'mark()\' not supported for Blob stream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->buf:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/couchbase/lite/Blob$BlobInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->buf:[B

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 4
    aput-byte v2, p0, v2

    return v0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream is closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/couchbase/lite/Blob$BlobInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    .line 7
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    .line 8
    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    if-eqz v0, :cond_2

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->read([BIJ)I

    move-result p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p0, :cond_1

    const/4 p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed reading blob"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 12
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "off + len > buf.length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Read length < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Read offset < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\'reset()\' not supported for Blob stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->key:Lcom/couchbase/lite/internal/core/C4BlobKey;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Blob$BlobInputStream;->blobStream:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->seek(J)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
