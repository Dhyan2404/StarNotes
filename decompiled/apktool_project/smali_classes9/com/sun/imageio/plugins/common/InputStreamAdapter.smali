.class public Lcom/sun/imageio/plugins/common/InputStreamAdapter;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field stream:Ljavax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Ljavax/imageio/stream/ImageInputStream;

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
    iget-object p0, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p0

    return p0
.end method
