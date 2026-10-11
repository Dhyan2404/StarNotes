.class public abstract Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected compressionTagValue:I

.field protected compressionType:Ljava/lang/String;

.field protected isCompressionLossless:Z

.field protected metadata:Ljavax/imageio/metadata/IIOMetadata;

.field protected stream:Ljavax/imageio/stream/ImageOutputStream;

.field protected writer:Ljavax/imageio/ImageWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->compressionType:Ljava/lang/String;

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-eq v2, v3, :cond_2

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionNumbers:[I

    aget p1, p1, v2

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->compressionTagValue:I

    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isCompressionLossless:[Z

    aget-boolean p1, p1, v2

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->isCompressionLossless:Z

    goto :goto_2

    :cond_2
    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->compressionTagValue:I

    iput-boolean p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->isCompressionLossless:Z

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "compressionTagValue < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "compressionType == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract encode([BIII[II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getCompressionTagValue()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->compressionTagValue:I

    return p0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->compressionType:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-object p0
.end method

.method public getStream()Ljavax/imageio/stream/ImageOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    return-object p0
.end method

.method public getWriter()Ljavax/imageio/ImageWriter;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->writer:Ljavax/imageio/ImageWriter;

    return-object p0
.end method

.method public isCompressionLossless()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->isCompressionLossless:Z

    return p0
.end method

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-void
.end method

.method public setStream(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public setWriter(Ljavax/imageio/ImageWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->writer:Ljavax/imageio/ImageWriter;

    return-void
.end method
