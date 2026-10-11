.class public Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;
.super Ljavax/imageio/metadata/IIOMetadata;
.source "SourceFile"


# static fields
.field public static final NATIVE_METADATA_FORMAT_CLASS_NAME:Ljava/lang/String; = "javax.imageio.plugins.tiff.TIFFImageMetadataFormat"

.field public static final NATIVE_METADATA_FORMAT_NAME:Ljava/lang/String; = "javax_imageio_tiff_image_1.0"

.field private static final colorSpaceNames:[Ljava/lang/String;

.field private static final orientationNames:[Ljava/lang/String;


# instance fields
.field rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

.field private tagSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "GRAY"

    const-string v1, "GRAY"

    const-string v2, "RGB"

    const-string v3, "RGB"

    const-string v4, "GRAY"

    const-string v5, "CMYK"

    const-string v6, "YCbCr"

    const-string v7, "Lab"

    const-string v8, "Lab"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->colorSpaceNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    const-string v3, "FlipH"

    const-string v4, "Rotate180"

    const-string v5, "FlipV"

    const-string v6, "FlipHRotate90"

    const-string v7, "Rotate270"

    const-string v8, "FlipVRotate90"

    const-string v9, "Rotate90"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->orientationNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/tiff/TIFFIFD;)V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_tiff_image_1.0"

    const-string v3, "javax.imageio.plugins.tiff.TIFFImageMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v5}, Ljavax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->tagSets:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/imageio/plugins/tiff/TIFFTagSet;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string v2, "javax_imageio_tiff_image_1.0"

    const-string v3, "javax.imageio.plugins.tiff.TIFFImageMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Ljavax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->tagSets:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

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

.method private static getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private getIFDAsTree(Lcom/sun/imageio/plugins/tiff/TIFFIFD;Ljava/lang/String;I)Lorg/w3c/dom/Node;
    .locals 3

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "TIFFIFD"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v1, "parentTagNumber"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p3, "parentTagName"

    invoke-virtual {v0, p3, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p3, "tagSets"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {p3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTagNumber()I

    move-result v1

    invoke-static {v1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsNativeNode()Lorg/w3c/dom/Node;

    move-result-object p3

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->isIFDPointer()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object p3

    invoke-static {p3}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p3

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result v1

    invoke-direct {p0, p3, v2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getIFDAsTree(Lcom/sun/imageio/plugins/tiff/TIFFIFD;Ljava/lang/String;I)Lorg/w3c/dom/Node;

    move-result-object p3

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsNativeNode()Lorg/w3c/dom/Node;

    move-result-object p3

    :goto_2
    if-eqz p3, :cond_5

    invoke-virtual {v0, p3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 4

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getIFDAsTree(Lcom/sun/imageio/plugins/tiff/TIFFIFD;Ljava/lang/String;I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private listToCharArray(Ljava/lang/String;)[C
    .locals 3

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private listToIntArray(Ljava/lang/String;)[I
    .locals 3

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 4
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

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TIFFIFD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "Root must have \"TIFFIFD\" child"

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->parseIFD(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    check-cast v2, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-virtual {v3, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTagSet(Ljavax/imageio/plugins/tiff/TIFFTagSet;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v1, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javax_imageio_1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Root must be javax_imageio_1.0"

    invoke-static {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    const-string v2, "Data"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "Index"

    const-string v6, "value"

    if-eqz v3, :cond_1

    const-string v8, "SampleFormat"

    invoke-direct {v0, v3, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v9, "Palette"

    const-string v10, "Chroma"

    if-nez v8, :cond_2

    invoke-direct {v0, v1, v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-direct {v0, v12, v9}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    :goto_1
    if-eqz v12, :cond_60

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    if-eqz v5, :cond_d

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string v11, "ColorSpaceType"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "name"

    invoke-static {v5, v11}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto/16 :goto_9

    :cond_3
    const-string v11, "NumChannels"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v15, 0x115

    invoke-virtual {v11, v15}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v11

    if-eqz v8, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v5, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_3
    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    move-object/from16 v21, v14

    int-to-long v13, v15

    invoke-direct {v7, v11, v13, v14}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v11, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_4

    :cond_5
    move-object/from16 v21, v14

    const-string v7, "BlackIsZero"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v5, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_6
    :goto_4
    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v13, -0x1

    :goto_5
    if-eqz v7, :cond_a

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "PaletteEntry"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const-string v14, "index"

    invoke-static {v7, v14}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-le v14, v13, :cond_8

    move v13, v14

    :cond_8
    const-string v15, "red"

    invoke-static {v7, v15}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-char v15, v15

    move-object/from16 v22, v9

    const-string v9, "green"

    invoke-static {v7, v9}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-char v9, v9

    move-object/from16 v23, v10

    const-string v10, "blue"

    invoke-static {v7, v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-char v10, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v24, v4

    move/from16 v19, v13

    const/4 v13, 0x3

    new-array v4, v13, [C

    const/4 v13, 0x0

    aput-char v15, v4, v13

    const/4 v13, 0x1

    aput-char v9, v4, v13

    const/4 v9, 0x2

    aput-char v10, v4, v9

    invoke-virtual {v11, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, v19

    const/16 v19, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    :goto_6
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v4, v24

    goto :goto_5

    :cond_a
    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    if-eqz v19, :cond_c

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v4, v13, 0x3

    new-array v7, v4, [C

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [C

    const/4 v14, 0x0

    aget-char v15, v10, v14

    const v14, 0xffff

    mul-int/2addr v15, v14

    div-int/lit16 v15, v15, 0xff

    int-to-char v15, v15

    aput-char v15, v7, v11

    add-int v15, v13, v11

    const/16 v20, 0x1

    aget-char v25, v10, v20

    move-object/from16 v26, v9

    mul-int v9, v25, v14

    div-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v7, v15

    mul-int/lit8 v9, v13, 0x2

    add-int/2addr v9, v11

    const/4 v11, 0x2

    aget-char v10, v10, v11

    mul-int/2addr v10, v14

    div-int/lit16 v10, v10, 0xff

    int-to-char v10, v10

    aput-char v10, v7, v9

    move-object/from16 v9, v26

    goto :goto_7

    :cond_b
    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v10, 0x140

    invoke-virtual {v9, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    new-instance v10, Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v11, 0x3

    invoke-direct {v10, v9, v11, v4, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v4, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_c
    :goto_8
    move-object/from16 v14, v21

    :goto_9
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v4, v24

    goto/16 :goto_2

    :cond_d
    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v21, v14

    if-eqz v21, :cond_e

    const-string v4, "GRAY"

    move-object/from16 v14, v21

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_a

    :cond_e
    move-object/from16 v14, v21

    :goto_a
    move-object/from16 v4, v18

    if-eqz v4, :cond_f

    const-string v5, "FALSE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_f
    if-eqz v14, :cond_17

    const-string v4, "GRAY"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    instance-of v4, v1, Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz v4, :cond_10

    move-object v4, v1

    check-cast v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "SubimageInterpretation"

    invoke-virtual {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TransparencyMask"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_11

    const/4 v4, 0x4

    goto :goto_d

    :cond_11
    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    const-string v4, "RGB"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v19, :cond_13

    const/4 v13, 0x3

    goto :goto_c

    :cond_13
    const/4 v13, 0x2

    :goto_c
    move v4, v13

    goto :goto_d

    :cond_14
    const-string v4, "YCbCr"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x6

    goto :goto_d

    :cond_15
    const-string v4, "CMYK"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x5

    goto :goto_d

    :cond_16
    const-string v4, "Lab"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x8

    goto :goto_d

    :cond_17
    const/4 v4, -0x1

    :goto_d
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1d

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v7, 0x106

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    int-to-long v9, v4

    invoke-direct {v7, v5, v9, v10}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_12

    :cond_18
    move-object/from16 v24, v4

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    const-string v4, "Compression"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_e
    if-eqz v4, :cond_1d

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CompressionTypeName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "None"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v5, 0x1

    :goto_f
    const/4 v7, -0x1

    goto :goto_11

    :cond_19
    sget-object v7, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_10
    array-length v10, v7

    if-ge v9, v10, :cond_1b

    aget-object v10, v7, v9

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    sget-object v5, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionNumbers:[I

    aget v5, v5, v9

    goto :goto_f

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1b
    const/4 v5, -0x1

    goto :goto_f

    :goto_11
    if-eq v5, v7, :cond_1c

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v9, 0x103

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    int-to-long v10, v5

    invoke-direct {v9, v7, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_1c
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_e

    :cond_1d
    :goto_12
    move-object/from16 v19, v2

    move-object/from16 v25, v3

    move/from16 v21, v8

    move-object/from16 v26, v12

    :cond_1e
    :goto_13
    const/4 v7, 0x1

    goto/16 :goto_2f

    :cond_1f
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_14
    if-eqz v4, :cond_1d

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "PlanarConfiguration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "PixelInterleaved"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v5, 0x1

    goto :goto_15

    :cond_20
    const-string v7, "PlaneInterleaved"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x2

    goto :goto_15

    :cond_21
    const/4 v5, -0x1

    :goto_15
    const/4 v7, -0x1

    if-eq v5, v7, :cond_28

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v9, 0x11c

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    int-to-long v10, v5

    invoke-direct {v9, v7, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1a

    :cond_22
    const-string v7, "BitsPerSample"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->listToCharArray(Ljava/lang/String;)[C

    move-result-object v5

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v9, 0x102

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    if-eqz v8, :cond_23

    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v10, 0x1

    new-array v11, v10, [C

    const/4 v13, 0x0

    aget-char v5, v5, v13

    aput-char v5, v11, v13

    const/4 v13, 0x3

    invoke-direct {v9, v7, v13, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    goto :goto_16

    :cond_23
    const/4 v13, 0x3

    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    array-length v10, v5

    invoke-direct {v9, v7, v13, v10, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    :goto_16
    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1a

    :cond_24
    const-string v7, "SampleMSB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->listToIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v7, 0x0

    :goto_17
    array-length v9, v5

    if-ge v7, v9, :cond_26

    aget v9, v5, v7

    if-eqz v9, :cond_25

    const/4 v5, 0x0

    goto :goto_18

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_26
    const/4 v5, 0x1

    :goto_18
    if-eqz v5, :cond_27

    const/4 v5, 0x2

    goto :goto_19

    :cond_27
    const/4 v5, 0x1

    :goto_19
    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v9, 0x10a

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    int-to-long v10, v5

    invoke-direct {v9, v7, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_28
    :goto_1a
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto/16 :goto_14

    :cond_29
    const-string v4, "Dimension"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    move v7, v5

    move v9, v7

    move v10, v9

    move v11, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-eqz v4, :cond_32

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    const-string v2, "PixelAspectRatio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v7, v1

    move-object/from16 v25, v3

    move/from16 v21, v8

    move-object/from16 v26, v12

    const/4 v15, 0x1

    goto/16 :goto_1d

    :cond_2a
    const-string v2, "ImageOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v8

    const/4 v2, 0x0

    :goto_1c
    sget-object v8, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->orientationNames:[Ljava/lang/String;

    move-object/from16 v25, v3

    array-length v3, v8

    if-ge v2, v3, :cond_2c

    aget-object v3, v8, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    new-array v1, v3, [C

    int-to-char v2, v2

    const/4 v8, 0x0

    aput-char v2, v1, v8

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-object/from16 v26, v12

    const/16 v12, 0x112

    invoke-virtual {v8, v12}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v8

    const/4 v12, 0x3

    invoke-direct {v2, v8, v12, v3, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1d

    :cond_2b
    move-object/from16 v26, v12

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v25

    goto :goto_1c

    :cond_2c
    move-object/from16 v26, v12

    goto :goto_1d

    :cond_2d
    move-object/from16 v25, v3

    move/from16 v21, v8

    move-object/from16 v26, v12

    const-string v2, "HorizontalPixelSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v5, v1

    const/4 v13, 0x1

    goto :goto_1d

    :cond_2e
    const-string v2, "VerticalPixelSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v9, v1

    const/4 v14, 0x1

    goto :goto_1d

    :cond_2f
    const-string v2, "HorizontalPosition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v10, v1

    const/16 v17, 0x1

    goto :goto_1d

    :cond_30
    const-string v2, "VerticalPosition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v11, v1

    const/16 v18, 0x1

    :cond_31
    :goto_1d
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v8, v21

    move-object/from16 v3, v25

    move-object/from16 v12, v26

    goto/16 :goto_1b

    :cond_32
    move-object/from16 v19, v2

    move-object/from16 v25, v3

    move/from16 v21, v8

    move-object/from16 v26, v12

    if-nez v13, :cond_34

    if-eqz v14, :cond_33

    goto :goto_1e

    :cond_33
    const/4 v1, 0x0

    goto :goto_1f

    :cond_34
    :goto_1e
    const/4 v1, 0x1

    :goto_1f
    if-eqz v15, :cond_37

    if-eqz v13, :cond_35

    if-nez v14, :cond_35

    div-float v9, v5, v7

    :goto_20
    const/4 v14, 0x1

    goto :goto_21

    :cond_35
    if-eqz v14, :cond_36

    if-nez v13, :cond_36

    mul-float v5, v9, v7

    const/4 v13, 0x1

    goto :goto_21

    :cond_36
    if-nez v13, :cond_37

    if-nez v14, :cond_37

    move v5, v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    goto :goto_20

    :cond_37
    :goto_21
    const v3, 0x461c4000    # 10000.0f

    if-eqz v13, :cond_39

    if-eqz v1, :cond_38

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_22

    :cond_38
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_22
    div-float/2addr v4, v5

    const/4 v5, 0x1

    const/4 v7, 0x2

    filled-new-array {v5, v7}, [I

    move-result-object v8

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    new-array v12, v7, [J

    const/4 v7, 0x0

    aput-object v12, v8, v7

    mul-float/2addr v4, v3

    float-to-long v2, v4

    aput-wide v2, v12, v7

    const-wide/16 v2, 0x2710

    aput-wide v2, v12, v5

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v4, 0x11a

    invoke-virtual {v3, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v5, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v3, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_23

    :cond_39
    const/4 v5, 0x1

    :goto_23
    if-eqz v14, :cond_3b

    if-eqz v1, :cond_3a

    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_24

    :cond_3a
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_24
    div-float/2addr v2, v9

    const/4 v3, 0x2

    filled-new-array {v5, v3}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    new-array v7, v3, [J

    const/4 v3, 0x0

    aput-object v7, v4, v3

    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v8

    float-to-long v8, v2

    aput-wide v8, v7, v3

    const-wide/16 v2, 0x2710

    aput-wide v2, v7, v5

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v7, 0x11b

    invoke-virtual {v3, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v7, 0x5

    invoke-direct {v2, v3, v7, v5, v4}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v3, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_3b
    new-array v2, v5, [C

    if-eqz v1, :cond_3c

    const/4 v3, 0x3

    goto :goto_25

    :cond_3c
    move v3, v5

    :goto_25
    int-to-char v3, v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v7, 0x128

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v4

    const/4 v7, 0x3

    invoke-direct {v3, v4, v7, v5, v2}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    if-eqz v1, :cond_1e

    if-eqz v17, :cond_3d

    const/4 v1, 0x2

    filled-new-array {v5, v1}, [I

    move-result-object v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v10, v4

    float-to-long v7, v10

    aput-wide v7, v3, v2

    const-wide/32 v7, 0x186a0

    aput-wide v7, v3, v5

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v4, 0x11e

    invoke-virtual {v3, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v5, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_3d
    if-eqz v18, :cond_1e

    const/4 v1, 0x2

    filled-new-array {v5, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v11, v4

    float-to-long v7, v11

    aput-wide v7, v3, v2

    const-wide/32 v7, 0x186a0

    aput-wide v7, v3, v5

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v4, 0x11f

    invoke-virtual {v3, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v5, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto/16 :goto_13

    :cond_3e
    move-object/from16 v19, v2

    move-object/from16 v25, v3

    move/from16 v21, v8

    move-object/from16 v26, v12

    const-string v1, "Document"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_26
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubimageInterpretation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {v1, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TransparencyMask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v3, 0x4

    :goto_27
    const/4 v4, -0x1

    goto :goto_28

    :cond_3f
    const-string v4, "ReducedResolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v3, 0x1

    goto :goto_27

    :cond_40
    const-string v4, "SinglePage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x2

    goto :goto_27

    :cond_41
    const/4 v3, -0x1

    goto :goto_27

    :goto_28
    if-eq v3, v4, :cond_42

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v5, 0xfe

    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v4

    new-instance v5, Ljavax/imageio/plugins/tiff/TIFFField;

    int-to-long v7, v3

    invoke-direct {v5, v4, v7, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v3, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_42
    const-string v3, "ImageCreationTime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "year"

    invoke-static {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "month"

    invoke-static {v1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "day"

    invoke-static {v1, v4}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hour"

    invoke-static {v1, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "minute"

    invoke-static {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "second"

    invoke-static {v1, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "0"

    const/4 v12, 0x1

    if-ne v10, v12, :cond_43

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_43
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v12, :cond_44

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v12, :cond_45

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v12, :cond_46

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v12, :cond_47

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v5, 0x132

    invoke-virtual {v4, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v12, v2}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_48
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_26

    :cond_49
    const-string v1, "Text"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    const/16 v5, 0x10d

    const/16 v7, 0x10e

    const/16 v8, 0x13b

    if-eqz v1, :cond_58

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TextEntry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "keyword"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_57

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_57

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_57

    const-string v11, "DocumentName"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4a

    :goto_2a
    const/4 v7, -0x1

    goto/16 :goto_2c

    :cond_4a
    const-string v5, "ImageDescription"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v5, v7

    goto :goto_2a

    :cond_4b
    const-string v5, "Make"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/16 v5, 0x10f

    goto :goto_2a

    :cond_4c
    const-string v5, "Model"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/16 v5, 0x110

    goto :goto_2a

    :cond_4d
    const-string v5, "PageName"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/16 v5, 0x11d

    goto :goto_2a

    :cond_4e
    const-string v5, "Software"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v5, 0x131

    goto :goto_2a

    :cond_4f
    const-string v5, "Artist"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    move v5, v8

    goto :goto_2a

    :cond_50
    const-string v5, "HostComputer"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    const/16 v5, 0x13c

    goto :goto_2a

    :cond_51
    const-string v5, "InkNames"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/16 v5, 0x14d

    goto :goto_2a

    :cond_52
    const-string v5, "Copyright"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    const v5, 0x8298

    goto :goto_2a

    :cond_53
    const-string v5, "author"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    move-object v2, v10

    :cond_54
    :goto_2b
    const/4 v5, -0x1

    goto :goto_2a

    :cond_55
    const-string v5, "description"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    move-object v3, v10

    goto :goto_2b

    :cond_56
    const-string v5, "title"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    move-object v4, v10

    goto :goto_2b

    :goto_2c
    if-eq v5, v7, :cond_57

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v8, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-direct {v7, v5, v9, v10, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_57
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_29

    :cond_58
    if-eqz v2, :cond_59

    invoke-virtual {v0, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_59

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v9, v8}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v8

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-direct {v1, v8, v9, v10, v2}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_59
    if-eqz v3, :cond_5a

    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_5a

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {v1, v2, v7, v8, v3}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_5a
    if-eqz v4, :cond_1e

    invoke-virtual {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_1e

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v7, 0x1

    invoke-direct {v1, v2, v4, v7, v3}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v2, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_2f

    :cond_5b
    const/4 v7, 0x1

    const-string v1, "Transparency"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_2d
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v1, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "premultiplied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v4, 0x152

    invoke-virtual {v3, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    goto :goto_2e

    :cond_5c
    const-string v3, "nonpremultiplied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v4, 0x152

    invoke-virtual {v3, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    goto :goto_2e

    :cond_5d
    const/4 v2, 0x0

    :goto_2e
    if-eqz v2, :cond_5e

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v3, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_5e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2d

    :cond_5f
    :goto_2f
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    goto/16 :goto_1

    :cond_60
    move-object/from16 v25, v3

    move-object/from16 v24, v4

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-eqz v25, :cond_67

    const-string v1, "SignedIntegral"

    move-object/from16 v3, v25

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    move v15, v4

    :goto_30
    const/4 v1, -0x1

    goto :goto_32

    :cond_61
    const-string v1, "UnsignedIntegral"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    :goto_31
    move v15, v7

    goto :goto_30

    :cond_62
    const-string v1, "Real"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v1, -0x1

    const/4 v15, 0x3

    goto :goto_32

    :cond_63
    move-object/from16 v1, v24

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_31

    :cond_64
    const/4 v1, -0x1

    const/4 v15, -0x1

    :goto_32
    if-eq v15, v1, :cond_67

    const/16 v1, 0x115

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-eqz v1, :cond_65

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v11

    goto :goto_33

    :cond_65
    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v11

    goto :goto_33

    :cond_66
    move v11, v7

    :goto_33
    new-array v1, v11, [C

    int-to-char v2, v15

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/16 v3, 0x153

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v2

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v11, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_67
    return-void
.end method

.method public static parseIFD(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIFFIFD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected \"TIFFIFD\" node"

    invoke-static {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    const-string v0, "tagSets"

    invoke-static {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-class v6, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v0, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "TagSets in IFD must be subset of TIFFTagSet class"

    invoke-static {p0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    const-string v7, "getInstance"

    invoke-virtual {v6, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v7, v6, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    if-nez v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified tag set class \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not an instance of TIFFTagSet"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v6, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_f

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->parseIFD(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v12

    const-string v5, "parentTagName"

    invoke-static {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parentTagNumber"

    invoke-static {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-static {v5, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(Ljava/lang/String;Ljava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    const/4 v6, 0x4

    if-nez v5, :cond_6

    new-instance v5, Ljavax/imageio/plugins/tiff/TIFFTag;

    const-string v7, "UnknownTag"

    const/16 v8, 0x10

    invoke-direct {v5, v7, v3, v8}, Ljavax/imageio/plugins/tiff/TIFFTag;-><init>(Ljava/lang/String;II)V

    :goto_3
    move-object v8, v5

    move v9, v6

    goto :goto_6

    :cond_6
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    :goto_4
    move-object v8, v5

    move v9, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    :goto_5
    const/4 v6, 0x1

    if-lt v7, v6, :cond_7

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTag;->isDataTypeOK(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :goto_6
    new-instance v5, Ljavax/imageio/plugins/tiff/TIFFField;

    const-wide/16 v10, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IJLjavax/imageio/plugins/tiff/TIFFDirectory;)V

    goto :goto_8

    :cond_b
    const-string v6, "TIFFField"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v5, "number"

    invoke-static {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/imageio/plugins/tiff/TIFFTagSet;

    invoke-virtual {v7, v5}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v8

    if-eqz v8, :cond_c

    goto :goto_7

    :cond_d
    move-object v7, v4

    :goto_7
    invoke-static {v7, p0}, Ljavax/imageio/plugins/tiff/TIFFField;->createFromMetadataNode(Ljavax/imageio/plugins/tiff/TIFFTagSet;Lorg/w3c/dom/Node;)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    goto :goto_8

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected either \"TIFFIFD\" or \"TIFFField\" node, got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    move-object v5, v4

    :goto_8
    invoke-virtual {v0, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto/16 :goto_1

    :cond_f
    return-object v0
.end method

.method private repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p0

    mul-int/2addr v1, p2

    sub-int/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-ge p0, p2, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addShortOrLongField(IJ)V
    .locals 2

    new-instance v0, Ljavax/imageio/plugins/tiff/TIFFField;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {v1, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    return-void
.end method

.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getNativeTree()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getStandardTree()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a recognized format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    return-object p0
.end method

.method public getShallowClone()Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getShallowClone()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFIFD;)V

    return-object v0
.end method

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 10

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x106

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    const/16 v5, 0x115

    invoke-virtual {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v5

    goto :goto_1

    :cond_3
    const/16 v5, 0x102

    invoke-virtual {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    const-string v6, "value"

    if-eq v1, v3, :cond_8

    if-ltz v1, :cond_6

    sget-object v7, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->colorSpaceNames:[Ljava/lang/String;

    array-length v8, v7

    if-ge v1, v8, :cond_6

    new-instance v8, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v9, "ColorSpaceType"

    invoke-direct {v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x5

    if-ne v1, v9, :cond_5

    if-ne v5, v2, :cond_5

    const-string v7, "CMY"

    goto :goto_2

    :cond_5
    aget-object v7, v7, v1

    :goto_2
    const-string v9, "name"

    invoke-virtual {v8, v9, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "BlackIsZero"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_7

    const-string v1, "FALSE"

    goto :goto_3

    :cond_7
    const-string v1, "TRUE"

    :goto_3
    invoke-virtual {v7, v6, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    if-eq v5, v3, :cond_9

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "NumChannels"

    invoke-direct {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    const/16 v1, 0x140

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "Palette"

    invoke-direct {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v3

    div-int/2addr v3, v2

    :goto_4
    if-ge v4, v3, :cond_a

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "PaletteEntry"

    invoke-direct {v2, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v5, "index"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0xff

    const v6, 0xffff

    div-int/2addr v5, v6

    add-int v7, v3, v4

    invoke-virtual {p0, v7}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v7

    mul-int/lit16 v7, v7, 0xff

    div-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0xff

    div-int/2addr v8, v6

    const-string v6, "red"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "green"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "blue"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    return-object v0
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 6

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x103

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    const-string v1, "value"

    if-eqz p0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    const-string p0, "None"

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionNumbers:[I

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget v5, v4, v2

    if-ne p0, v5, :cond_1

    sget-object p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    aget-object p0, p0, v2

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isCompressionLossless:[Z

    aget-boolean v3, v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "CompressionTypeName"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Lossless"

    invoke-direct {p0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    const-string v2, "TRUE"

    goto :goto_2

    :cond_3
    const-string v2, "FALSE"

    :goto_2
    invoke-virtual {p0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumProgressiveScans"

    invoke-direct {p0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDataNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 13

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x106

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/16 v6, 0x11c

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    if-ne v6, v7, :cond_1

    const-string v6, "PlaneInterleaved"

    goto :goto_1

    :cond_1
    const-string v6, "PixelInterleaved"

    :goto_1
    new-instance v8, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v9, "PlanarConfiguration"

    invoke-direct {v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v9, "value"

    invoke-virtual {v8, v9, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    const-string v6, "Index"

    goto :goto_3

    :cond_2
    const/16 v6, 0x153

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    const-string v8, "UnsignedIntegral"

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    const-string v6, "SignedIntegral"

    goto :goto_3

    :cond_3
    if-ne v6, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne v6, v3, :cond_5

    const-string v6, "Real"

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_7

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "SampleFormat"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    const/16 v6, 0x102

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    const/4 v7, 0x7

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object v1

    goto :goto_6

    :cond_8
    const/16 v6, 0x103

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    goto :goto_4

    :cond_9
    move v6, v4

    :goto_4
    const v8, 0x8769

    invoke-virtual {p0, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v8

    if-nez v8, :cond_b

    if-eq v6, v7, :cond_b

    const/4 v8, 0x6

    if-eq v6, v8, :cond_b

    const/16 v6, 0x201

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    filled-new-array {v4}, [I

    move-result-object v1

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/16 v6, 0x8

    if-eqz v1, :cond_d

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    if-ne v1, v4, :cond_d

    :cond_c
    filled-new-array {v6}, [I

    move-result-object v1

    goto :goto_6

    :cond_d
    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    :goto_6
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v8, v5

    :goto_7
    array-length v10, v1

    const-string v11, " "

    if-ge v8, v10, :cond_f

    if-lez v8, :cond_e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    aget v10, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    new-instance v8, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v10, "BitsPerSample"

    invoke-direct {v8, v10}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v0, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/16 v6, 0x10a

    invoke-virtual {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6, v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    goto :goto_9

    :cond_11
    move v6, v4

    :goto_9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move v10, v5

    :goto_a
    array-length v12, v1

    if-ge v10, v12, :cond_15

    if-lez v10, :cond_12

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    aget v12, v1, v10

    if-ne v12, v4, :cond_13

    move v12, v7

    goto :goto_b

    :cond_13
    add-int/lit8 v12, v12, -0x1

    :goto_b
    if-ne v6, v4, :cond_14

    goto :goto_c

    :cond_14
    move v12, v5

    :goto_c
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_15
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "SampleMSB"

    invoke-direct {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_16

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v9, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v9, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Dimension"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x11a

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v2

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v5, 0x11b

    invoke-virtual {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v4

    invoke-virtual {v4}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    :cond_1
    const-string v5, "value"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "PixelAspectRatio"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    aget-wide v8, v2, v6

    long-to-double v8, v8

    aget-wide v10, v4, v3

    long-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aget-wide v9, v2, v3

    aget-wide v11, v4, v6

    mul-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    const/16 v7, 0x128

    const/4 v8, 0x2

    if-nez v2, :cond_3

    if-eqz v4, :cond_9

    :cond_3
    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v9

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    if-eq v9, v6, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v3

    :goto_2
    if-ne v9, v8, :cond_7

    const-wide/16 v11, 0xfe

    const-wide/16 v13, 0x64

    if-eqz v2, :cond_6

    aget-wide v15, v2, v3

    mul-long/2addr v15, v13

    aput-wide v15, v2, v3

    aget-wide v15, v2, v6

    mul-long/2addr v15, v11

    aput-wide v15, v2, v6

    :cond_6
    if-eqz v4, :cond_7

    aget-wide v15, v4, v3

    mul-long/2addr v15, v13

    aput-wide v15, v4, v3

    aget-wide v13, v4, v6

    mul-long/2addr v13, v11

    aput-wide v13, v4, v6

    :cond_7
    if-eqz v10, :cond_9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    if-eqz v2, :cond_8

    aget-wide v11, v2, v6

    long-to-double v11, v11

    mul-double/2addr v11, v9

    aget-wide v13, v2, v3

    long-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v2, v11

    new-instance v11, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v12, "HorizontalPixelSize"

    invoke-direct {v11, v12}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v5, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    if-eqz v4, :cond_9

    aget-wide v11, v4, v6

    long-to-double v11, v11

    mul-double/2addr v11, v9

    aget-wide v9, v4, v3

    long-to-double v9, v9

    div-double/2addr v11, v9

    double-to-float v2, v11

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v9, "VerticalPixelSize"

    invoke-direct {v4, v9}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    goto :goto_3

    :cond_a
    move v2, v8

    :goto_3
    if-eq v2, v8, :cond_b

    const/4 v4, 0x3

    if-ne v2, v4, :cond_f

    :cond_b
    const/16 v4, 0x11e

    invoke-virtual {v0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    const/high16 v7, 0x437e0000    # 254.0f

    const/high16 v9, 0x41200000    # 10.0f

    if-eqz v4, :cond_d

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v4

    aget-wide v10, v4, v3

    long-to-float v10, v10

    aget-wide v11, v4, v6

    long-to-float v4, v11

    div-float/2addr v10, v4

    if-ne v2, v8, :cond_c

    mul-float/2addr v10, v7

    goto :goto_4

    :cond_c
    mul-float/2addr v10, v9

    :goto_4
    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v11, "HorizontalPosition"

    invoke-direct {v4, v11}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_d
    const/16 v4, 0x11f

    invoke-virtual {v0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v4

    aget-wide v10, v4, v3

    long-to-float v10, v10

    aget-wide v11, v4, v6

    long-to-float v4, v11

    div-float/2addr v10, v4

    if-ne v2, v8, :cond_e

    mul-float/2addr v10, v7

    goto :goto_5

    :cond_e
    mul-float/2addr v10, v9

    :goto_5
    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "VerticalPosition"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_f
    const/16 v2, 0x112

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v2, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->orientationNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_10

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ImageOrientation"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v0

    invoke-virtual {v3, v5, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    return-object v1
.end method

.method public getStandardDocumentNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 7

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Document"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "FormatVersion"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "6.0"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/16 v1, 0xfe

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    const-string v1, "TransparencyMask"

    goto :goto_0

    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    const-string v1, "ReducedResolution"

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "SinglePage"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "SubimageInterpretation"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    const/16 v1, 0x132

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x13

    if-ne v1, v3, :cond_4

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ImageCreationTime"

    invoke-direct {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "year"

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "month"

    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "day"

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hour"

    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "minute"

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "second"

    const/16 v5, 0x11

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :catch_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    return-object v0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_0

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v7, "Text"

    invoke-direct {v2, v7}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "TextEntry"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "keyword"

    invoke-virtual {v7, v8, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-virtual {v7, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    nop

    :array_0
    .array-data 4
        0x10d
        0x10e
        0x10f
        0x110
        0x11d
        0x131
        0x13b
        0x13c
        0x14d
        0x8298
    .end array-data
.end method

.method public getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 5

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Transparency"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Alpha"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x152

    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string p0, "premultiplied"

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string p0, "nonpremultiplied"

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "none"

    :goto_1
    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    return-object p0
.end method

.method public initializeFromStream(Ljavax/imageio/stream/ImageInputStream;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->initialize(Ljavax/imageio/stream/ImageInputStream;ZZZ)V

    return-void
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadata;->nativeMetadataFormatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "root == null!"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->mergeStandardTree(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a recognized format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTIFFField(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->tagSets:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->rootIFD:Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    return-void
.end method
