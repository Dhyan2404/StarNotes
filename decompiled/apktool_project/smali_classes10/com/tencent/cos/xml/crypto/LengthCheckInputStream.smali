.class public Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;
.super Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;
.source "SourceFile"


# static fields
.field public static final EXCLUDE_SKIPPED_BYTES:Z = false

.field public static final INCLUDE_SKIPPED_BYTES:Z = true


# instance fields
.field private dataLength:J

.field private final expectedLength:J

.field private final includeSkipped:Z

.field private markCount:I

.field private marked:J

.field private resetCount:I

.field private resetSinceLastMarked:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    iput-wide p2, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->expectedLength:J

    iput-boolean p4, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->includeSkipped:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private checkLength(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->expectedLength:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data read has a different length than the expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->diagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->expectedLength:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More data read than expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->diagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private diagnosticInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; expectedLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->expectedLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; includeSkipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->includeSkipped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; in.getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; markedSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->markSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; marked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->marked:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; resetSinceLastMarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetSinceLastMarked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; markCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->markCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; resetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public mark(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->mark(I)V

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->marked:J

    iget p1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->markCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->markCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetSinceLastMarked:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->checkLength(Z)V

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 5
    iget-wide p2, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    if-ltz p1, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_1
    invoke-direct {p0, p2}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->checkLength(Z)V

    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->reset()V

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->marked:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    iget v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetCount:I

    iput-boolean v1, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->resetSinceLastMarked:Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "mark/reset not supported"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->skip(J)J

    move-result-wide p1

    iget-boolean v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->includeSkipped:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->dataLength:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/cos/xml/crypto/LengthCheckInputStream;->checkLength(Z)V

    :cond_0
    return-wide p1
.end method
