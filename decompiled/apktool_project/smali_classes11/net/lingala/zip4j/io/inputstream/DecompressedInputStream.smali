.class abstract Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
            "*>;"
        }
    .end annotation
.end field

.field protected oneByteBuffer:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->oneByteBuffer:[B

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->close()V

    return-void
.end method

.method public endOfEntryReached(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->endOfEntryReached(Ljava/io/InputStream;I)V

    return-void
.end method

.method public getLastReadRawDataCache()[B
    .locals 0

    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->getLastReadRawDataCache()[B

    move-result-object p0

    return-object p0
.end method

.method public pushBackInputStreamIfNecessary(Ljava/io/PushbackInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->oneByteBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->oneByteBuffer:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->cipherInputStream:Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result p0

    return p0
.end method
