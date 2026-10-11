.class public Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;
.super Ljavax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field public final e:Ljavax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method


# virtual methods
.method public isCached()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCached()Z

    move-result p0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCachedFile()Z

    move-result p0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCachedMemory()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

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

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageOutputStream;->e:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    return-void
.end method
