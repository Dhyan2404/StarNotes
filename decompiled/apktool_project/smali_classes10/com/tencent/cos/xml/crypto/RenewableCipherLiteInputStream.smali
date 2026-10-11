.class public final Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;
.super Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;
.source "SourceFile"


# instance fields
.field private hasBeenAccessed:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;IZZ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/tencent/cos/xml/crypto/CipherLite;IZZ)V

    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->abortIfNeeded()V

    iget-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Marking is only supported before your first call to read or skip."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markSupported()Z
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->abortIfNeeded()V

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 2
    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 4
    invoke-super {p0, p1}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->abortIfNeeded()V

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->renewCipherLite()V
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->resetInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/RenewableCipherLiteInputStream;->hasBeenAccessed:Z

    invoke-super {p0, p1, p2}, Lcom/tencent/cos/xml/crypto/CipherLiteInputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
