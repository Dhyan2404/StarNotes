.class abstract Lcom/sun/imageio/plugins/gif/GIFMetadata;
.super Ljavax/imageio/metadata/IIOMetadata;
.source "SourceFile"


# static fields
.field static final UNDEFINED_INTEGER_VALUE:I = -0x1


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljavax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V
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

.method public static getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Required attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not present!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-static {p0, p1, v0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    return p2

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Required attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not present!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TRUE"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "FALSE"

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_4

    const-string p3, "false"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be \'TRUE\' or \'FALSE\'!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 7
    invoke-static {p0, p1, p2, v0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    return p3

    .line 2
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not present!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 4
    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_3

    .line 5
    aget-object v0, p2, p4

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p4

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 6
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal value for attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;FZ)F

    move-result p0

    return p0
.end method

.method public static getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;FZ)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p3, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const-string v0, "!"

    const-string v1, " attribute "

    const-string v2, "Bad value for "

    const/4 v3, 0x0

    .line 1
    invoke-static {p0, p1, v3, p3, v3}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p0, p3}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_2

    if-lt p2, p5, :cond_1

    if-le p2, p6, :cond_2

    .line 7
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p2
.end method

.method public static getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 10
    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result p0

    return p0
.end method

.method public static getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Required attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not present!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_5

    const-string p3, "!"

    const-string v0, " attribute "

    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p4, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value for "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_5
    return-object p2
.end method


# virtual methods
.method public getColorTable(Lorg/w3c/dom/Node;Ljava/lang/String;ZI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/16 p0, 0x100

    new-array v0, p0, [B

    new-array v1, p0, [B

    new-array p0, p0, [B

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Palette has no entries!"

    invoke-static {p1, v3}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " may be a child of a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    const-string v6, "index"

    const/16 v7, 0xff

    invoke-static {v2, v6, v5, v4, v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v6

    if-le v6, v3, :cond_2

    move v3, v6

    :cond_2
    const-string v8, "red"

    invoke-static {v2, v8, v5, v4, v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    const-string v8, "green"

    invoke-static {v2, v8, v5, v4, v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    const-string v8, "blue"

    invoke-static {v2, v8, v5, v4, v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p0, v6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    add-int/2addr v3, v5

    if-eqz p3, :cond_4

    if-eq v3, p4, :cond_4

    const-string p2, "Unexpected length for palette!"

    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_4
    mul-int/lit8 p1, v3, 0x3

    new-array p1, p1, [B

    move p2, v4

    :goto_1
    if-ge v4, v3, :cond_5

    add-int/lit8 p3, p2, 0x1

    aget-byte p4, v0, v4

    aput-byte p4, p1, p2

    add-int/lit8 p2, p3, 0x1

    aget-byte p4, v1, v4

    aput-byte p4, p1, p3

    add-int/lit8 p3, p2, 0x1

    aget-byte p4, p0, v4

    aput-byte p4, p1, p2

    add-int/lit8 v4, v4, 0x1

    move p2, p3

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method public abstract mergeNativeTree(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation
.end method

.method public abstract mergeStandardTree(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation
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

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->mergeStandardTree(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a recognized format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
