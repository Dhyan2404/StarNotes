.class public Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;
.super Ljavax/imageio/metadata/IIOMetadata;
.source "SourceFile"


# static fields
.field static final NATIVE_METADATA_FORMAT_CLASS_NAME:Ljava/lang/String; = "javax.imageio.plugins.tiff.TIFFStreamMetadataFormat"

.field static final NATIVE_METADATA_FORMAT_NAME:Ljava/lang/String; = "javax_imageio_tiff_stream_1.0"

.field private static final bigEndianString:Ljava/lang/String;

.field private static final littleEndianString:Ljava/lang/String;


# instance fields
.field public byteOrder:Ljava/nio/ByteOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->bigEndianString:Ljava/lang/String;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->littleEndianString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "javax_imageio_tiff_stream_1.0"

    const-string v3, "javax.imageio.plugins.tiff.TIFFStreamMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private static fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    invoke-direct {v0, p1, p0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0
.end method

.method private mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ByteOrder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Root must have \"ByteOrder\" child"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "ByteOrder node must have a \"value\" attribute"

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->bigEndianString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->littleEndianString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_5
    const-string p0, "Incorrect value for ByteOrder \"value\" attribute"

    invoke-static {p1, p0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance p1, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "ByteOrder"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "root == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a recognized format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method
