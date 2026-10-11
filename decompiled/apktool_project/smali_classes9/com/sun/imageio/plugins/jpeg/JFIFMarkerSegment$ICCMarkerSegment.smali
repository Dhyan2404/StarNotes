.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICCMarkerSegment"
.end annotation


# static fields
.field private static final ID_SIZE:I = 0xc


# instance fields
.field chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field chunksRead:I

.field numChunks:I

.field profile:[B

.field final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    .line 9
    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    .line 12
    iget v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    .line 13
    iget v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v1, v1, -0xc

    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 14
    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    add-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    .line 15
    iget-object v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    .line 16
    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    if-gt v4, v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    .line 17
    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    .line 18
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    add-int/lit8 v0, v0, 0x2

    .line 19
    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v1, v1, -0x2

    .line 20
    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    .line 21
    invoke-virtual {p2, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->readData([B)V

    const/4 p0, 0x0

    .line 22
    invoke-static {p1, p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->access$102(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Z)Z

    goto :goto_0

    .line 23
    :cond_0
    new-array v0, v2, [B

    add-int/lit8 v2, v2, -0x2

    .line 24
    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    .line 25
    invoke-virtual {p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->readData([B)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iput v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunksRead:I

    .line 29
    invoke-static {p1, v4}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->access$102(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Z)Z

    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Image format Error; chunk num > num chunks"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Ljava/awt/color/ICC_ColorSpace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/16 p1, 0xe2

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    .line 4
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunksRead:I

    .line 6
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    .line 7
    invoke-virtual {p2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/16 p1, 0xe2

    .line 32
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    .line 35
    instance-of p1, p2, Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz p1, :cond_0

    .line 36
    check-cast p2, Ljavax/imageio/metadata/IIOMetadataNode;

    .line 37
    invoke-virtual {p2}, Ljavax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/color/ICC_Profile;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    sub-int/2addr v2, v1

    iget-object v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v5, v5, 0xc

    iput v5, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v2, -0xc

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v0, v0, -0xc

    aget-byte v2, v3, v5

    and-int/lit16 v2, v2, 0xff

    iget v6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    if-gt v2, v6, :cond_6

    add-int/2addr v5, v1

    aget-byte v2, v3, v5

    and-int/lit16 v2, v2, 0xff

    if-ne v6, v2, :cond_5

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->readData([B)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunksRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunksRead:I

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-static {p0, v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->access$102(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Z)Z

    move v1, v3

    goto :goto_2

    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    move p1, v1

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    if-gt p1, v2, :cond_4

    move v2, v3

    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aget-byte v7, v6, v3

    if-ne v7, p1, :cond_1

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    array-length v7, v6

    sub-int/2addr v7, v4

    invoke-static {v6, v4, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v6

    sub-int/2addr v5, v4

    add-int/2addr v0, v5

    move v5, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image Format Error: Missing ICC chunk num "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunks:Ljava/util/ArrayList;

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->chunksRead:I

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->numChunks:I

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-static {p0, v3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->access$102(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Z)Z

    :goto_2
    return v1

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Image format Error; icc num chunks mismatch"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Image format Error; chunk num > num chunks"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    :cond_0
    return-object v0
.end method

.method public getNativeNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "app2ICC"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->profile:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public print()V
    .locals 1

    const-string v0, "ICC Profile APP2"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

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
