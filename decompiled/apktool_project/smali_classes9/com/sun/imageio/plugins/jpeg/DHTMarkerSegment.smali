.class Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;
    }
.end annotation


# instance fields
.field tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    .line 9
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    :goto_0
    if-lez v0, :cond_0

    .line 10
    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-direct {v1, p0, p1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    .line 11
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    array-length v1, v1

    add-int/lit8 v1, v1, 0x11

    sub-int/2addr v0, v1

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget p0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, p0

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    const/16 v0, 0xc4

    .line 20
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 24
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Ljavax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Invalid DHT node"

    invoke-direct {p0, v0, p1}, Ljavax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p0
.end method

.method public constructor <init>(Z)V
    .locals 5

    const/16 v0, 0xc4

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    sget-object v2, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCLuminance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    sget-object v2, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdDCChrominance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    sget-object v2, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACLuminance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v1, p0, v2, v4, v4}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    sget-object v1, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->StdACChrominance:Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>([Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
    .locals 6

    const/16 v0, 0xc4

    .line 14
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 16
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    aget-object v4, p1, v1

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 18
    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    aget-object v3, p2, p1

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addHtable(Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    iget-object v2, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getHtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-direct {v0, p0, p1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;-><init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "dht"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "DHT"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num tables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->print()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
