.class public final Lcom/sun/imageio/plugins/common/SubImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# instance fields
.field length:I

.field startingLength:I

.field startingPos:J

.field stream:Ljavax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingPos:J

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingLength:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public length()J
    .locals 2

    iget p0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingLength:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    .line 3
    iget-object p0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

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

    .line 4
    iget v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6
    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    .line 7
    iget p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->length:I

    return p1
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/common/SubImageInputStream;->startingPos:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method
