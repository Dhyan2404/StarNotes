.class public Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;
.super Ljavax/imageio/metadata/IIOMetadataNode;
.source "SourceFile"


# instance fields
.field private field:Ljavax/imageio/plugins/tiff/TIFFField;

.field private isIFD:Z

.field private isInitialized:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFField;)V
    .locals 3

    invoke-static {p1}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->getNodeName(Ljavax/imageio/plugins/tiff/TIFFField;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isInitialized:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isIFD(Ljavax/imageio/plugins/tiff/TIFFField;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isIFD:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->getNumber()I

    move-result v1

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFTag;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isIFD:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_0

    const-string v2, "parentTagNumber"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "parentTagName"

    invoke-virtual {p0, v1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/plugins/tiff/TIFFDirectory;

    :goto_0
    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTagSets()[Ljavax/imageio/plugins/tiff/TIFFTagSet;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "tagSets"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "number"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static getNodeName(Ljavax/imageio/plugins/tiff/TIFFField;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isIFD(Ljavax/imageio/plugins/tiff/TIFFField;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TIFFIFD"

    goto :goto_0

    :cond_0
    const-string p0, "TIFFField"

    :goto_0
    return-object p0
.end method

.method private declared-synchronized initialize()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isIFD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFDirectory;

    :goto_0
    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFFields()[Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTagSets()[Ljavax/imageio/plugins/tiff/TIFFTagSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getTagNumber()I

    move-result v5

    invoke-static {v5, v0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTag(ILjava/util/List;)Ljavax/imageio/plugins/tiff/TIFFTag;

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsNativeNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "TIFFUndefined"

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsBytes()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v1, v0, :cond_5

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "value"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v4

    invoke-static {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getTag()Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    :goto_3
    if-ge v1, v0, :cond_8

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIFF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v6

    invoke-static {v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v5, "value"

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v6, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getValueAsString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFTag;->hasValueNames()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5}, Ljavax/imageio/plugins/tiff/TIFFField;->isIntegral()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->field:Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljavax/imageio/plugins/tiff/TIFFTag;->getValueName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "description"

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->isInitialized:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isIFD(Ljavax/imageio/plugins/tiff/TIFFField;)Z
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getType()I

    move-result v0

    invoke-virtual {p0}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    const/16 p0, 0xd

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "newChild == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getLength()I

    move-result p0

    return p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes()Z
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->hasChildNodes()Z

    move-result p0

    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFieldNode;->initialize()V

    invoke-super {p0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
