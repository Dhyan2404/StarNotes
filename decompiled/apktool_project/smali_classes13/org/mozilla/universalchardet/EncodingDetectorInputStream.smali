.class public Lorg/mozilla/universalchardet/EncodingDetectorInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/InputStream;

.field public final f:Lorg/mozilla/universalchardet/UniversalDetector;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    iput-object p1, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

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

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mark(I)V
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->read([BII)I

    move-result p0

    if-ltz p0, :cond_0

    aget-byte p0, v1, v2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->read([BII)I

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

    .line 2
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 3
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    :cond_0
    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    .line 5
    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    :cond_1
    return p3
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->f:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    :goto_0
    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    return-wide v1
.end method
