.class abstract Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "JFIFThumbUncompressed"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

.field thumbHeight:I

.field thumbWidth:I

.field thumbnail:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Ljava/awt/image/BufferedImage;

    .line 4
    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    .line 5
    iput p4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    .line 6
    invoke-virtual {p2, p5}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->skipData(I)V

    .line 7
    iput-object p6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    .line 21
    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Ljava/awt/image/BufferedImage;

    .line 22
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    .line 23
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Ljava/awt/image/BufferedImage;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    .line 11
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    .line 12
    iput-object p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    .line 13
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    if-eqz v0, :cond_2

    const-string v2, "thumbWidth"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p3

    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    :goto_0
    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const-string v2, "thumbHeight"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    if-eq p1, v6, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    :goto_1
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    :cond_2
    return-void

    .line 19
    :cond_3
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " node cannot have > 2 attributes"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    return p0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbWidth"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "thumbHeight"

    invoke-virtual {v0, v1, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    return p0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method

.method public readByteBuffer(Ljavax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length p0, p2

    div-int/lit8 p0, p0, 0x14

    int-to-float p0, p0

    div-float/2addr p0, p4

    float-to-int p0, p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    add-int/2addr v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    array-length v3, p2

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, p4

    add-float/2addr v1, p5

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    invoke-virtual {p3, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->thumbnailProgress(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-interface {p1, p2}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method

.method public writePixels(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeThumbnailData(Ljavax/imageio/stream/ImageOutputStream;[ILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
