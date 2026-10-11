.class public abstract Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFCompressor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;
    }
.end annotation


# static fields
.field protected static final IMAGE_METADATA_NAME:Ljava/lang/String; = "javax_imageio_jpeg_image_1.0"

.field protected static final STREAM_METADATA_NAME:Ljava/lang/String; = "javax_imageio_jpeg_stream_1.0"


# instance fields
.field private JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

.field protected JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

.field protected JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

.field protected JPEGWriter:Ljavax/imageio/ImageWriter;

.field private baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

.field private param:Ljavax/imageio/ImageWriteParam;

.field protected writeAbbreviatedStream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjavax/imageio/ImageWriteParam;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->writeAbbreviatedStream:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

    iput-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->param:Ljavax/imageio/ImageWriteParam;

    return-void
.end method

.method private static getAllNodes(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/metadata/IIOMetadataNode;",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-static {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->getAllNodes(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getImageMetadata(Z)Ljavax/imageio/metadata/IIOMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v0}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeImageMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->writer:Ljavax/imageio/ImageWriter;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getImageType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {v2, v0, v3}, Ljavax/imageio/ImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->pruneNodes(Lorg/w3c/dom/Node;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

    invoke-virtual {p1, v1, v0}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Cannot set pruned image metadata!"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Error pruning unwanted nodes"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGImageMetadata:Ljavax/imageio/metadata/IIOMetadata;

    return-object p0
.end method

.method private static pruneNodes(Lorg/w3c/dom/Node;Z)V
    .locals 7

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax_imageio_jpeg_image_1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "JPEGvariety"

    const-string v2, "markerSequence"

    const-string v3, "sof"

    const-string v4, "componentSpec"

    const-string v5, "sos"

    const-string v6, "scanComponentSpec"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p1, :cond_0

    const-string p1, "dht"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "dhtable"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "dqt"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "dqtable"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->getAllNodes(Ljavax/imageio/metadata/IIOMetadataNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "root node name is not javax_imageio_jpeg_image_1.0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tree == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final encode([BIII[II)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-eqz v4, :cond_7

    array-length v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v4, v5, :cond_0

    aget v4, v3, v8

    if-ne v4, v7, :cond_0

    aget v4, v3, v6

    if-ne v4, v7, :cond_0

    const/4 v4, 0x2

    aget v4, v3, v4

    if-eq v4, v7, :cond_1

    :cond_0
    array-length v4, v3

    if-ne v4, v6, :cond_6

    aget v4, v3, v8

    if-ne v4, v7, :cond_6

    :cond_1
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    if-nez v4, :cond_2

    new-instance v4, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    invoke-direct {v4}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;-><init>()V

    iput-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_0
    new-instance v4, Ljavax/imageio/stream/MemoryCacheImageOutputStream;

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    invoke-direct {v4, v6}, Ljavax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v6, v4}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-nez v2, :cond_3

    new-instance v6, Ljava/awt/image/DataBufferByte;

    array-length v7, v1

    invoke-direct {v6, v1, v7}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    goto :goto_1

    :cond_3
    mul-int v6, p6, p4

    new-array v7, v6, [B

    invoke-static {v1, v2, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/awt/image/DataBufferByte;

    invoke-direct {v1, v7, v6}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    move-object v6, v1

    move v2, v8

    :goto_1
    array-length v1, v3

    if-ne v1, v5, :cond_4

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v5, v2, 0x2

    filled-new-array {v2, v1, v5}, [I

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    goto :goto_2

    :cond_4
    filled-new-array {v2}, [I

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    :goto_2
    move-object v15, v1

    move-object v10, v2

    new-instance v1, Ljava/awt/image/ComponentColorModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v2, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v10, 0x0

    array-length v13, v3

    move-object v9, v2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    invoke-direct/range {v9 .. v15}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    new-instance v3, Ljava/awt/Point;

    invoke-direct {v3, v8, v8}, Ljava/awt/Point;-><init>(II)V

    invoke-static {v2, v6, v3}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v2

    new-instance v3, Ljava/awt/image/BufferedImage;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v8, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->writeAbbreviatedStream:Z

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->getImageMetadata(Z)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->writeAbbreviatedStream:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

    invoke-virtual {v2, v6}, Ljavax/imageio/ImageWriter;->prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->flush()V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v2, Ljavax/imageio/IIOImage;

    invoke-direct {v2, v3, v5, v1}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {v1, v2, v3}, Ljavax/imageio/ImageWriter;->writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v1}, Ljavax/imageio/ImageWriter;->endWriteSequence()V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    new-instance v4, Ljavax/imageio/IIOImage;

    invoke-direct {v4, v3, v5, v1}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {v2, v5, v4, v1}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    :goto_3
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;->writeTo(Ljavax/imageio/stream/ImageOutputStream;)V

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->baos:Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor$IIOByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return v1

    :cond_6
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Can only JPEG compress 8- and 24-bit images!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JPEG writer has not been initialized!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->dispose()V

    :cond_0
    return-void
.end method

.method public initJPEGWriter(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    const-string v1, "javax_imageio_jpeg_image_1.0"

    const-string v2, "javax_imageio_jpeg_stream_1.0"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    invoke-virtual {v0}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeStreamMetadataFormatName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iput-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    :cond_2
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeImageMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    :cond_4
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-nez v0, :cond_b

    const-string v0, "jpeg"

    invoke-static {v0}, Ljavax/imageio/ImageIO;->getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/imageio/ImageWriter;

    if-nez p1, :cond_6

    if-eqz p2, :cond_8

    :cond_6
    invoke-virtual {v4}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object v5

    if-eqz p1, :cond_7

    invoke-virtual {v5}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeStreamMetadataFormatName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v5}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeImageMetadataFormatName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    iput-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    :cond_9
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No appropriate JPEG writers found!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->param:Ljavax/imageio/ImageWriteParam;

    if-eqz p1, :cond_c

    instance-of p2, p1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    if-eqz p2, :cond_c

    check-cast p1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    goto :goto_2

    :cond_c
    new-instance p1, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->writer:Ljavax/imageio/ImageWriter;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    :cond_d
    invoke-direct {p1, v3}, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->param:Ljavax/imageio/ImageWriteParam;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {p1, p2}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result p0

    invoke-virtual {p1, p0}, Ljavax/imageio/ImageWriteParam;->setCompressionQuality(F)V

    :cond_e
    :goto_2
    return-void
.end method
