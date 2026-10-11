.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFExtensionMarkerSegment"
.end annotation


# static fields
.field private static final DATA_SIZE:I = 0x6

.field private static final ID_SIZE:I = 0x5


# instance fields
.field code:I

.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

.field thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    .line 2
    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 3
    iget v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v0, v0, 0x5

    .line 4
    iget-object v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 5
    iget v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;ILcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 8
    iget-object v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    .line 9
    iput v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 10
    iget v2, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v2, p3

    iput v2, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 11
    iget p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    const/16 v2, 0x11

    if-ne p3, v2, :cond_1

    .line 12
    new-instance p3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V

    iput-object p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    .line 13
    :cond_1
    new-instance p3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V

    iput-object p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/16 v0, 0xe0

    .line 39
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    .line 40
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v1

    .line 42
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 43
    instance-of v0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 44
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 45
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;

    invoke-direct {v0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    const/16 v0, 0x13

    .line 46
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 47
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    invoke-direct {v0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne v1, v0, :cond_2

    const/16 v0, 0x10

    .line 48
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 49
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    invoke-direct {v0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    :goto_0
    return-void

    .line 50
    :cond_2
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p0, p1, v3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p0

    .line 51
    :cond_3
    new-instance p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p0, p1, v3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p0
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/16 v0, 0xe0

    .line 15
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    .line 16
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/16 v7, 0x12

    if-lez v0, :cond_1

    const-string v3, "extensionCode"

    const/16 v4, 0x10

    const/16 v5, 0x13

    const/4 v6, 0x0

    move-object v1, p2

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-eq v0, v7, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "invalid extensionCode attribute value"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    .line 20
    :cond_1
    iput v7, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 21
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 22
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JFIFthumbJPEG"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-ne p2, v7, :cond_2

    const/16 p2, 0x10

    .line 26
    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 27
    :cond_2
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_1

    :cond_3
    const-string v2, "JFIFthumbPalette"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 29
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-ne p2, v7, :cond_4

    const/16 p2, 0x11

    .line 30
    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 31
    :cond_4
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_1

    :cond_5
    const-string v2, "JFIFthumbRGB"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-ne p2, v7, :cond_6

    const/16 p2, 0x13

    .line 34
    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    .line 35
    :cond_6
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    :goto_1
    return-void

    .line 36
    :cond_7
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "unrecognized app0JFXX child node"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0

    .line 37
    :cond_8
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string p1, "app0JFXX node must have exactly 1 child"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    iput-object p0, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    :cond_0
    return-object v0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "app0JFXX"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extensionCode"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public print()V
    .locals 1

    const-string v0, "JFXX"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->print()V

    return-void
.end method

.method public setThumbnail(Ljava/awt/image/BufferedImage;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0, v1, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0, v1, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0, v1, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/image/BufferedImage;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
    :try_end_0
    .catch Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Illegal thumb in setThumbnail!"

    invoke-direct {p1, v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->writeTag(Ljavax/imageio/stream/ImageOutputStream;)V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->write(Ljavax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x4at
        0x46t
        0x58t
        0x58t
        0x0t
    .end array-data
.end method
