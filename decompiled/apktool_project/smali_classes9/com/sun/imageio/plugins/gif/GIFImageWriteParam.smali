.class Lcom/sun/imageio/plugins/gif/GIFImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput-boolean p1, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    const-string p1, "LZW"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setCompressionMode(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MODE_DISABLED is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
