.class public Lcom/sun/imageio/plugins/gif/GIFImageMetadata;
.super Lcom/sun/imageio/plugins/gif/GIFMetadata;
.source "SourceFile"


# static fields
.field static final disposalMethodNames:[Ljava/lang/String;

.field static final nativeMetadataFormatName:Ljava/lang/String; = "javax_imageio_gif_image_1.0"


# instance fields
.field public applicationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public applicationIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public authenticationCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public characterCellHeight:I

.field public characterCellWidth:I

.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public delayTime:I

.field public disposalMethod:I

.field public hasPlainTextExtension:Z

.field public imageHeight:I

.field public imageLeftPosition:I

.field public imageTopPosition:I

.field public imageWidth:I

.field public interlaceFlag:Z

.field public localColorTable:[B

.field public sortFlag:Z

.field public text:[B

.field public textBackgroundColor:I

.field public textForegroundColor:I

.field public textGridHeight:I

.field public textGridLeft:I

.field public textGridTop:I

.field public textGridWidth:I

.field public transparentColorFlag:Z

.field public transparentColorIndex:I

.field public userInputFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "none"

    const-string v1, "doNotDispose"

    const-string v2, "restoreToBackgroundColor"

    const-string v3, "restoreToPrevious"

    const-string v4, "undefinedDisposalMethod4"

    const-string v5, "undefinedDisposalMethod5"

    const-string v6, "undefinedDisposalMethod6"

    const-string v7, "undefinedDisposalMethod7"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_gif_image_1.0"

    const-string v3, "com.sun.imageio.plugins.gif.GIFImageMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/sun/imageio/plugins/gif/GIFMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    .line 3
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    .line 5
    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    .line 6
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    .line 7
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    .line 8
    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    .line 9
    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    .line 10
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    .line 11
    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    return-void
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 12

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_gif_image_1.0"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageDescriptor"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageLeftPosition"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageTopPosition"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageWidth"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageHeight"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    const-string v3, "TRUE"

    const-string v4, "FALSE"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "interlaceFlag"

    invoke-virtual {v1, v5, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "LocalColorTable"

    invoke-direct {v1, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    const-string v6, "sizeOfLocalColorTable"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    if-eqz v6, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    const-string v7, "sortFlag"

    invoke-virtual {v1, v7, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    new-instance v7, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v8, "ColorTableEntry"

    invoke-direct {v7, v8}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v8, "index"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    mul-int/lit8 v9, v6, 0x3

    aget-byte v10, v8, v9

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    const-string v9, "red"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "green"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "blue"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "GraphicControlExtension"

    invoke-direct {v1, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    iget v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    aget-object v5, v5, v6

    const-string v6, "disposalMethod"

    invoke-virtual {v1, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    const-string v6, "userInputFlag"

    invoke-virtual {v1, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    const-string v4, "transparentColorFlag"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delayTime"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "transparentColorIndex"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v3, "PlainTextExtension"

    invoke-direct {v1, v3}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridLeft"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridTop"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridWidth"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridHeight"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "characterCellWidth"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "characterCellHeight"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textForegroundColor"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textBackgroundColor"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v1, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-lez v1, :cond_9

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ApplicationExtensions"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_8

    new-instance v5, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v6, "ApplicationExtension"

    invoke-direct {v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "applicationID"

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "authenticationCode"

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-lez v1, :cond_c

    new-instance v3, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "CommentExtensions"

    invoke-direct {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_8
    if-ge v2, v1, :cond_b

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "CommentExtension"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const-string v6, "value"

    invoke-direct {p0, v5}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    return-object v0
.end method

.method private toISO8859([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const-string v0, "javax_imageio_gif_image_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->getNativeTree()Lorg/w3c/dom/Node;

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

.method public getStandardChromaNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 8

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ColorSpaceType"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    const-string v3, "RGB"

    invoke-virtual {v1, v2, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumChannels"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "4"

    goto :goto_0

    :cond_0
    const-string v2, "3"

    :goto_0
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "BlackIsZero"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "TRUE"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Palette"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    new-instance v4, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v5, "PaletteEntry"

    invoke-direct {v4, v5}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v5, "index"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    mul-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "red"

    invoke-virtual {v4, v7, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "green"

    invoke-virtual {v4, v7, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "blue"

    invoke-virtual {v4, v6, v5}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public getStandardCompressionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "CompressionTypeName"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "lzw"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Lossless"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "TRUE"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumProgressiveScans"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-eqz p0, :cond_0

    const-string p0, "4"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    invoke-virtual {v1, v3, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDataNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance p0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v0, "Data"

    invoke-direct {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "SampleFormat"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    const-string v2, "Index"

    invoke-virtual {v0, v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getStandardDimensionNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageOrientation"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "Normal"

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "HorizontalPixelOffset"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "VerticalPixelOffset"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardTextNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 5

    const-string v0, "ISO-8859-1"

    iget-object p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Text"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v4, "TextEntry"

    invoke-direct {v2, v4}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "encoding"

    invoke-virtual {v2, v3, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "compression"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Encoding ISO-8859-1 unknown!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v1
.end method

.method public getStandardTransparencyNode()Ljavax/imageio/metadata/IIOMetadataNode;
    .locals 3

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Transparency"

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/imageio/metadata/IIOMetadataNode;

    const-string v2, "TransparentIndex"

    invoke-direct {v1, v2}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Metadata is read-only!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Metadata is read-only!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public reset()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Metadata is read-only!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Metadata is read-only!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
