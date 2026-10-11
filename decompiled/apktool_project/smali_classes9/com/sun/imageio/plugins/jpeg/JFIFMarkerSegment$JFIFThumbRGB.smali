.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFThumbRGB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    mul-int v0, p3, p4

    mul-int/lit8 v6, v0, 0x3

    const-string v7, "JFIFthumbRGB"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-string v0, "JFIFthumbRGB"

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getThumbnail(Ljavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Ljava/awt/image/BufferedImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v2, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->getLength()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    invoke-virtual {v2}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->readByteBuffer(Ljavax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/lit8 v5, v3, 0x3

    const/4 v6, 0x3

    const/4 p0, 0x1

    const/4 p1, 0x2

    const/4 p2, 0x0

    filled-new-array {p2, p0, p1}, [I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    new-instance p1, Ljava/awt/image/ComponentColorModel;

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Ljava/awt/color/ColorSpace;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->writePixels(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
