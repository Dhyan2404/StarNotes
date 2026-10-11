.class public Ljavax/imageio/stream/MemoryCacheImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/imageio/stream/MemoryCacheImageInputStream$a;
    }
.end annotation


# instance fields
.field public e:Ljava/io/InputStream;

.field public f:Lcom/sunia/HTREnginev2/amj;

.field public final g:Ljava/lang/Object;

.field public final h:Lsun/java2d/DisposerRecord;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/amj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/amj;-><init>()V

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    if-eqz p1, :cond_1

    iput-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->e:Ljava/io/InputStream;

    new-instance p1, Ljavax/imageio/stream/MemoryCacheImageInputStream$a;

    invoke-direct {p1, v0}, Ljavax/imageio/stream/MemoryCacheImageInputStream$a;-><init>(Lcom/sunia/HTREnginev2/amj;)V

    iput-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->h:Lsun/java2d/DisposerRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->g:Ljava/lang/Object;

    invoke-static {v0, p1}, Lsun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/imageio/stream/StreamFinalizer;

    invoke-direct {p1, p0}, Lcom/sun/imageio/stream/StreamFinalizer;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    iput-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->g:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stream == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->h:Lsun/java2d/DisposerRecord;

    invoke-interface {v0}, Lsun/java2d/DisposerRecord;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->e:Ljava/io/InputStream;

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public flushBefore(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljavax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-object p0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/amj;->a(J)V

    return-void
.end method

.method public isCached()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 3
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-object v1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->e:Ljava/io/InputStream;

    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/amj;->d(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    add-long v6, v2, v4

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 5
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v2, v3}, Lcom/sunia/HTREnginev2/amj;->f(J)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 7
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-nez p3, :cond_0

    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-object v1, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->e:Ljava/io/InputStream;

    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/amj;->d(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 10
    iget-wide v6, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v6

    long-to-int p3, v0

    if-lez p3, :cond_1

    .line 11
    iget-object v2, p0, Ljavax/imageio/stream/MemoryCacheImageInputStream;->f:Lcom/sunia/HTREnginev2/amj;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sunia/HTREnginev2/amj;->g([BIIJ)V

    .line 12
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3

    :cond_1
    const/4 p0, -0x1

    return p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
