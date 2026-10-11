.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusImage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final GDI_CONTENT:Ljava/lang/String; = "GDI"

.field private static final MAX_OBJECT_SIZE:I = 0x2faf080


# instance fields
.field private bitmapHeight:I

.field private bitmapStride:I

.field private bitmapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

.field private bitmapWidth:I

.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private imageData:[B

.field private imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

.field private metafileDataSize:I

.field private metafileType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

.field private pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getContentType([B)Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->UNKNOWN:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageDataType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusMetafileDataType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getMetafileType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->PIXEL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    if-ne p0, v1, :cond_4

    const-string p0, "GDI"

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_8

    if-eq p0, v6, :cond_7

    if-eq p0, v5, :cond_6

    if-eq p0, v2, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_7
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_8
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    goto :goto_0

    :cond_9
    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    :goto_0
    iget-object p0, v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method private getGDIRenderer()Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageDataType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;->BITMAP:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->PIXEL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->setWidth(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->setHeight(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapStride()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->setStride(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getPixelFormat()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->setPixelFormat(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "image data is not a GDI image"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->metafileDataSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getRawData(Ljava/util/List;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getContentType([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GDI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getGDIRenderer()Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-interface {p0, p2, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setEmfPlusImage(Lorg/apache/poi/sl/draw/ImageRenderer;)V

    return-void
.end method

.method public getBitmapHeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapHeight:I

    return p0
.end method

.method public getBitmapStride()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapStride:I

    return p0
.end method

.method public getBitmapType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    return-object p0
.end method

.method public getBitmapWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapWidth:I

    return p0
.end method

.method public getBounds(Ljava/util/List;)Ljava/awt/geom/Rectangle2D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageDataType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getRawData(Ljava/util/List;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusMetafileDataType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getMetafileType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_1
    :try_start_3
    new-instance p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;

    invoke-direct {p0, v0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :cond_2
    :try_start_5
    new-instance p0, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;

    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/usermodel/HwmfPicture;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getBitmapType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->PIXEL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    if-ne v0, v1, :cond_4

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapWidth:I

    int-to-double v7, v0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapHeight:I

    int-to-double v9, p0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p1

    :cond_4
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getRawData(Ljava/util/List;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getMinX()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getMinY()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    int-to-double v8, p0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-object p1

    :catchall_3
    move-exception p0

    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    :goto_2
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/yph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "graphicsVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "imageDataType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/aqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/aqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "bitmapWidth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "bitmapHeight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "bitmapStride"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "pixelFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "bitmapType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "imageData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string v2, "metafileType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;)V

    const-string p0, "metafileDataSize"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public getImageData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageData:[B

    return-object p0
.end method

.method public getImageDataType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    return-object p0
.end method

.method public getMetafileType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->metafileType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    return-object p0
.end method

.method public getPixelFormat()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    return-object p0
.end method

.method public getRawData(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)[B"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageData()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    invoke-virtual {p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getImageData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    iget-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p5, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v0

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->isContinuedRecord()Z

    move-result p5

    if-eqz p5, :cond_0

    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;->CONTINUED:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p5

    invoke-static {p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    :goto_0
    iget-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    if-nez p5, :cond_1

    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;->UNKNOWN:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    :cond_1
    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusImageDataType:[I

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageDataType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageDataType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p5, p5, v2

    const/4 v2, 0x3

    if-eq p5, v2, :cond_3

    if-eq p5, p4, :cond_2

    const/4 p4, -0x1

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapWidth:I

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapHeight:I

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapStride:I

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    :goto_1
    long-to-int p2, p2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->metafileType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusMetafileDataType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->metafileDataSize:I

    const-wide/16 p4, 0x8

    add-long/2addr v0, p4

    :goto_2
    sub-long/2addr p2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapWidth:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapHeight:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapStride:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p5

    invoke-static {p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->bitmapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;->PIXEL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusBitmapDataType;

    if-ne p5, v2, :cond_4

    invoke-static {p4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    move-result-object p4

    goto :goto_3

    :cond_4
    sget-object p4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;->UNDEFINED:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    :goto_3
    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->pixelFormat:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusPixelFormat;

    goto :goto_2

    :goto_4
    const p3, 0x2faf080

    invoke-static {p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->imageData:[B

    int-to-long p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public readGDIImage([B)Ljava/awt/image/BufferedImage;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->getGDIRenderer()Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusGDIImageRenderer;->readGDIImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
