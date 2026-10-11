.class Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final LENGTH_SIZE:I = 0x2


# instance fields
.field data:[B

.field length:I

.field tag:I

.field unknown:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->unknown:Z

    .line 15
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    .line 16
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->unknown:Z

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    .line 5
    iget-object v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    add-int/lit8 v2, v3, 0x1

    .line 6
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    .line 7
    iput v4, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    .line 8
    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    if-ltz v1, :cond_0

    .line 9
    iget p0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr p0, v0

    iput p0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 10
    invoke-virtual {p1, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->loadBuf(I)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid segment length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->unknown:Z

    const/4 v2, 0x0

    const-string v3, "MarkerTag"

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x1

    move-object v1, p1

    .line 20
    invoke-static/range {v1 .. v6}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    .line 21
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    .line 22
    instance-of v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataNode;

    .line 24
    :try_start_0
    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v1, "Can\'t get User Object"

    invoke-direct {v0, v1, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    throw v0

    .line 28
    :cond_0
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Node must have User Object"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method public static getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    if-nez p5, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute not found"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p3, :cond_3

    if-gt p1, p4, :cond_3

    move p0, p1

    :goto_0
    return p0

    :cond_3
    new-instance p1, Ljavax/imageio/metadata/IIOInvalidTreeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute out of range"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1
.end method

.method public static write2bytes(Ljavax/imageio/stream/ImageOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    :cond_0
    return-object v0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "unknown"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarkerTag"

    invoke-virtual {v0, v2, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method public loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->readData([B)V

    return-void
.end method

.method public print()V
    .locals 5

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, " Ox"

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "First 5 bytes:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nLast 5 bytes:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    aget-byte v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Data:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    array-length v0, v0

    if-ge v2, v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    aget-byte v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public printTag(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " marker segment - marker = 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->writeTag(Ljavax/imageio/stream/ImageOutputStream;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method public writeTag(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-static {p1, p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Ljavax/imageio/stream/ImageOutputStream;I)V

    return-void
.end method
