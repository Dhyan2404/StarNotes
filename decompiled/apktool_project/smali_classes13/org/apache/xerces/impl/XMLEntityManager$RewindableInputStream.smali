.class public final Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RewindableInputStream"
.end annotation


# instance fields
.field public e:Ljava/io/InputStream;

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lorg/apache/xerces/impl/XMLEntityManager;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->l:Lorg/apache/xerces/impl/XMLEntityManager;

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->g:I

    const/4 p2, -0x1

    iput p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->k:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    if-ne v1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->l:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->k:I

    return-void
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

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
    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    if-ne v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->l:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    const/4 v2, -0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->l:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result p3

    if-ne p3, v2, :cond_2

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    return v2

    :cond_2
    int-to-byte p0, p3

    aput-byte p0, p1, p2

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ge p3, v0, :cond_4

    if-gtz p3, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_4
    move p3, v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    return p3
.end method

.method public readAndBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->f:[B

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    and-int/lit16 p0, v0, 0xff

    return p0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->k:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    return-void
.end method

.method public rewind()V
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->g:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->g:I

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->j:I

    iget v3, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    if-ne v3, v2, :cond_1

    return-wide v0

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    int-to-long v0, v2

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    return-wide p1

    :cond_3
    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->i:I

    iget v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->h:I

    if-ne v3, v2, :cond_4

    return-wide v0

    :cond_4
    sub-long/2addr p1, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->e:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method
