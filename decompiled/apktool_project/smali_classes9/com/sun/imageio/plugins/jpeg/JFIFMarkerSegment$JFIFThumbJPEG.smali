.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFThumbJPEG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;
    }
.end annotation


# static fields
.field private static final PREAMBLE_SIZE:I = 0x6


# instance fields
.field data:[B

.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

.field thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;ILcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 4
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    .line 5
    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    add-int/lit8 p3, p3, -0x6

    int-to-long v2, p3

    add-long/2addr v2, v0

    .line 6
    iget-object p1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 7
    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 p3, 0x1

    iget-object v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p3, v0, p4}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZLjavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 8
    iget-object p0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 9
    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 10
    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 24
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    .line 25
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 26
    new-instance v2, Ljavax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v2, v1}, Ljavax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    new-instance v3, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-direct {v3, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    .line 28
    invoke-virtual {v3, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setOutput(Ljava/lang/Object;)V

    .line 29
    new-instance v2, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v2, p2}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    .line 30
    invoke-virtual {v3, v2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 31
    const-class v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v5, 0x1

    .line 32
    invoke-virtual {v2, v4, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 33
    iget-object v5, v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Ljavax/imageio/IIOImage;

    invoke-direct {v4, p2, v0, v2}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {v3, v4}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/IIOImage;)V

    .line 35
    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->dispose()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    const v2, 0xfff7

    if-gt p2, v2, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    return-void

    .line 38
    :cond_0
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p0

    .line 39
    :cond_1
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p0
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 13
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    .line 14
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    .line 15
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "markerSequence"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZ)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    .line 19
    invoke-virtual {p2, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromMarkerSequenceNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "JFIFThumbJPEG child must be a markerSequence node"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "JFIFThumbJPEG node must have 0 or 1 child"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object p0, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "JFIFthumbJPEG"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->getNativeTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-object v0
.end method

.method public getThumbnail(Ljavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;

    invoke-direct {v2, p0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageReader;->addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->dispose()V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return-object p0
.end method

.method public getWidth()I
    .locals 2

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public print()V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "JFIF thumbnail stored as JPEG"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    invoke-interface {p1, v3, v1, v2}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v1, v0

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailProgress(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
