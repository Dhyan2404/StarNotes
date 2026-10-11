.class public final Lcom/twelvemonkeys/image/MagickUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/awt/image/IndexColorModel;

.field public static final b:Ljava/awt/image/ColorModel;

.field public static final c:Ljava/awt/image/ColorModel;

.field public static final d:Ljava/awt/image/ColorModel;

.field public static final e:Ljava/awt/image/ColorModel;

.field public static final f:[I

.field public static final g:[I

.field public static final h:Ljava/awt/Point;

.field public static final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    invoke-static {}, Lcom/twelvemonkeys/image/MonochromeColorModel;->getInstance()Ljava/awt/image/IndexColorModel;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->a:Ljava/awt/image/IndexColorModel;

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/16 v9, 0x8

    filled-new-array {v9, v9, v9, v9}, [I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->b:Ljava/awt/image/ColorModel;

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    invoke-static {v8}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v11

    filled-new-array {v9, v9, v9}, [I

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->c:Ljava/awt/image/ColorModel;

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/16 v7, 0x3eb

    invoke-static {v7}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->d:Ljava/awt/image/ColorModel;

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    invoke-static {v7}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->e:Ljava/awt/image/ColorModel;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->f:[I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->g:[I

    new-instance v0, Ljava/awt/Point;

    invoke-direct {v0, v3, v3}, Ljava/awt/Point;-><init>(II)V

    sput-object v0, Lcom/twelvemonkeys/image/MagickUtil;->h:Ljava/awt/Point;

    sget-boolean v0, Lcom/sunia/HTREnginev2/k6j;->a:Z

    sput-boolean v0, Lcom/twelvemonkeys/image/MagickUtil;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmagick/MagickImage;)Ljava/awt/image/BufferedImage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/twelvemonkeys/image/MagickUtil;->c(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/16 v3, 0xc

    sget-object v4, Lcom/twelvemonkeys/image/MagickUtil;->a:Ljava/awt/image/IndexColorModel;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    invoke-static {v0, p0}, Lcom/twelvemonkeys/image/ImageUtil;->l(Ljava/awt/image/BufferedImage;Ljava/awt/Image;)V

    return-object v0
.end method

.method public static b(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lmagick/MagickImage;->getDimension()Ljava/awt/Dimension;

    move-result-object v1

    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Dimension;->height:I

    mul-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lmagick/MagickImage;->getColorProfile()Lmagick/ProfileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lmagick/ProfileInfo;->getInfo()[B

    move-result-object v3

    invoke-static {v3}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v3

    new-instance v5, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v5, v3}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-virtual {v5}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v3

    add-int/2addr v3, v0

    new-array v6, v3, [I

    const/4 v11, 0x0

    move v4, v11

    :goto_0
    if-ge v4, v3, :cond_0

    const/16 v7, 0x8

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/awt/image/ComponentColorModel;

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    :goto_1
    mul-int/2addr v2, v3

    new-array v5, v2, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v1, Ljava/awt/Dimension;->width:I

    iget v6, v1, Ljava/awt/Dimension;->height:I

    if-eqz v0, :cond_2

    const-string v7, "ACMYK"

    goto :goto_2

    :cond_2
    const-string v7, "CMYK"

    :goto_2
    move-object/from16 v17, v7

    move-object/from16 v12, p0

    move/from16 v16, v6

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v18}, Lmagick/MagickImage;->dispatchImage(IIIILjava/lang/String;[B)Z

    new-instance v6, Ljava/awt/image/DataBufferByte;

    invoke-direct {v6, v5, v2}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const/4 v8, 0x4

    filled-new-array {v11, v7, v5, v2, v8}, [I

    move-result-object v2

    goto :goto_3

    :cond_3
    filled-new-array {v11, v7, v5, v2}, [I

    move-result-object v2

    :goto_3
    move-object v11, v2

    iget v7, v1, Ljava/awt/Dimension;->width:I

    iget v8, v1, Ljava/awt/Dimension;->height:I

    mul-int v9, v7, v3

    sget-object v12, Lcom/twelvemonkeys/image/MagickUtil;->h:Ljava/awt/Point;

    move v10, v3

    invoke-static/range {v6 .. v12}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v1, v0, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2
.end method

.method public static c(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lmagick/MagickImage;->getDimension()Ljava/awt/Dimension;

    move-result-object v1

    iget v5, v1, Ljava/awt/Dimension;->width:I

    iget v6, v1, Ljava/awt/Dimension;->height:I

    mul-int v2, v5, v6

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    move v14, v3

    goto :goto_0

    :cond_0
    move v14, v9

    :goto_0
    mul-int v10, v2, v14

    new-array v11, v10, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v2, "AI"

    goto :goto_1

    :cond_1
    const-string v2, "I"

    :goto_1
    move-object v7, v2

    move-object/from16 v2, p0

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lmagick/MagickImage;->dispatchImage(IIIILjava/lang/String;[B)Z

    new-instance v2, Ljava/awt/image/DataBufferByte;

    invoke-direct {v2, v11, v10}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    filled-new-array {v9, v3}, [I

    move-result-object v3

    goto :goto_2

    :cond_2
    filled-new-array {v3}, [I

    move-result-object v3

    :goto_2
    move-object v15, v3

    iget v11, v1, Ljava/awt/Dimension;->width:I

    iget v12, v1, Ljava/awt/Dimension;->height:I

    mul-int v13, v11, v14

    sget-object v16, Lcom/twelvemonkeys/image/MagickUtil;->h:Ljava/awt/Point;

    move-object v10, v2

    invoke-static/range {v10 .. v16}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    new-instance v2, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/twelvemonkeys/image/MagickUtil;->d:Ljava/awt/image/ColorModel;

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/twelvemonkeys/image/MagickUtil;->e:Ljava/awt/image/ColorModel;

    :goto_3
    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2
.end method

.method public static createIndexColorModel([Lmagick/PixelPacket;Z)Ljava/awt/image/IndexColorModel;
    .locals 8

    array-length v2, p0

    new-array v3, v2, [I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v6, v0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    aget-object v1, p0, v0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lmagick/PixelPacket;->getOpacity()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v1}, Lmagick/PixelPacket;->getRed()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-virtual {v1}, Lmagick/PixelPacket;->getGreen()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {v1}, Lmagick/PixelPacket;->getBlue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lmagick/PixelPacket;->getRed()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    invoke-virtual {v1}, Lmagick/PixelPacket;->getGreen()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {v1}, Lmagick/PixelPacket;->getBlue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    const/16 v1, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(II[IIZII)V

    return-object p0
.end method

.method public static d(Ljava/awt/image/BufferedImage;Z)Lmagick/MagickImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    new-instance v0, Lmagick/MagickImage;

    invoke-direct {v0}, Lmagick/MagickImage;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    invoke-static {p0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getParent()Ljava/awt/image/Raster;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/awt/Rectangle;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/awt/image/BufferedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-eqz p1, :cond_2

    const-string p1, "ABGR"

    goto :goto_2

    :cond_2
    const-string p1, "I"

    :goto_2
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v1}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, p0, p1, v1}, Lmagick/MagickImage;->constituteImage(IILjava/lang/String;[B)V

    return-object v0
.end method

.method public static e(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Z)Lmagick/MagickImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/twelvemonkeys/image/MagickUtil;->h(Ljava/awt/image/BufferedImage;Z)Lmagick/MagickImage;

    move-result-object p0

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lmagick/MagickImage;->setNumberColors(I)V

    return-object p0
.end method

.method public static f(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmagick/MagickImage;->getColormap()[Lmagick/PixelPacket;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twelvemonkeys/image/MagickUtil;->createIndexColorModel([Lmagick/PixelPacket;Z)Ljava/awt/image/IndexColorModel;

    move-result-object v0
    :try_end_0
    .catch Lmagick/MagickException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/MagickUtil;->g(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {v0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    :try_start_1
    sget-object v2, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {p1, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    :cond_1
    :goto_1
    new-instance p1, Lcom/twelvemonkeys/image/CopyDither;

    invoke-direct {p1, v0}, Lcom/twelvemonkeys/image/CopyDither;-><init>(Ljava/awt/image/IndexColorModel;)V

    invoke-interface {p1, p0, v1}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    return-object v1

    :catch_0
    invoke-static {p0, p1}, Lcom/twelvemonkeys/image/MagickUtil;->g(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    invoke-virtual {p0}, Lmagick/MagickImage;->getDimension()Ljava/awt/Dimension;

    move-result-object v0

    iget v4, v0, Ljava/awt/Dimension;->width:I

    iget v5, v0, Ljava/awt/Dimension;->height:I

    mul-int v1, v4, v5

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    move v10, v2

    mul-int v8, v1, v10

    new-array v9, v8, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v1, "ABGR"

    goto :goto_1

    :cond_1
    const-string v1, "BGR"

    :goto_1
    move-object v6, v1

    move-object v1, p0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lmagick/MagickImage;->dispatchImage(IIIILjava/lang/String;[B)Z

    new-instance v6, Ljava/awt/image/DataBufferByte;

    invoke-direct {v6, v9, v8}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    if-eqz p1, :cond_2

    sget-object p0, Lcom/twelvemonkeys/image/MagickUtil;->f:[I

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/twelvemonkeys/image/MagickUtil;->g:[I

    :goto_2
    move-object v11, p0

    iget v7, v0, Ljava/awt/Dimension;->width:I

    iget v8, v0, Ljava/awt/Dimension;->height:I

    mul-int v9, v7, v10

    sget-object v12, Lcom/twelvemonkeys/image/MagickUtil;->h:Ljava/awt/Point;

    invoke-static/range {v6 .. v12}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    new-instance v0, Ljava/awt/image/BufferedImage;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/twelvemonkeys/image/MagickUtil;->b:Ljava/awt/image/ColorModel;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/twelvemonkeys/image/MagickUtil;->c:Ljava/awt/image/ColorModel;

    :goto_3
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public static h(Ljava/awt/image/BufferedImage;Z)Lmagick/MagickImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    new-instance v0, Lmagick/MagickImage;

    invoke-direct {v0}, Lmagick/MagickImage;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    invoke-static {p0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getParent()Ljava/awt/image/Raster;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/awt/Rectangle;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/awt/image/BufferedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-eqz p1, :cond_2

    const-string p1, "ABGR"

    goto :goto_2

    :cond_2
    const-string p1, "BGR"

    :goto_2
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v1}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, p0, p1, v1}, Lmagick/MagickImage;->constituteImage(IILjava/lang/String;[B)V

    return-object v0
.end method

.method public static toBuffered(Lmagick/MagickImage;)Ljava/awt/image/BufferedImage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    const-string v0, " ms"

    const-string v1, "Conversion to BufferedImage: "

    const-string v2, " to BufferedImage: "

    const-string v3, "Converted JMagick image type: "

    if-eqz p0, :cond_3

    sget-boolean v4, Lcom/twelvemonkeys/image/MagickUtil;->i:Z

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmagick/MagickImage;->getImageType()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    :pswitch_0
    invoke-static {p0, v8}, Lcom/twelvemonkeys/image/MagickUtil;->b(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_1
    invoke-static {p0, v9}, Lcom/twelvemonkeys/image/MagickUtil;->b(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_2
    invoke-static {p0, v8}, Lcom/twelvemonkeys/image/MagickUtil;->g(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_3
    invoke-static {p0, v9}, Lcom/twelvemonkeys/image/MagickUtil;->g(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_4
    invoke-static {p0, v8}, Lcom/twelvemonkeys/image/MagickUtil;->f(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_5
    invoke-static {p0, v9}, Lcom/twelvemonkeys/image/MagickUtil;->f(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_6
    invoke-static {p0, v8}, Lcom/twelvemonkeys/image/MagickUtil;->c(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_7
    invoke-static {p0, v9}, Lcom/twelvemonkeys/image/MagickUtil;->c(Lmagick/MagickImage;Z)Ljava/awt/image/BufferedImage;

    move-result-object v7

    goto :goto_1

    :pswitch_8
    invoke-static {p0}, Lcom/twelvemonkeys/image/MagickUtil;->a(Lmagick/MagickImage;)Ljava/awt/image/BufferedImage;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmagick/MagickImage;->getImageType()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object v7

    :goto_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown JMagick image type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmagick/MagickImage;->getImageType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    sget-boolean v7, Lcom/twelvemonkeys/image/MagickUtil;->i:Z

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmagick/MagickImage;->getImageType()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    throw v4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toMagick(Ljava/awt/image/BufferedImage;)Lmagick/MagickImage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmagick/MagickException;
        }
    .end annotation

    const-string v0, " ms"

    const-string v1, "Conversion to MagickImage: "

    if-eqz p0, :cond_8

    sget-boolean v2, Lcom/twelvemonkeys/image/MagickUtil;->i:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    instance-of v6, v5, Ljava/awt/image/IndexColorModel;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/awt/image/IndexColorModel;

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v5

    invoke-static {p0, v6, v5}, Lcom/twelvemonkeys/image/MagickUtil;->e(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Z)Lmagick/MagickImage;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object p0

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/twelvemonkeys/image/MagickUtil;->d(Ljava/awt/image/BufferedImage;Z)Lmagick/MagickImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-object p0

    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown buffered image type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/twelvemonkeys/image/MagickUtil;->h(Ljava/awt/image/BufferedImage;Z)Lmagick/MagickImage;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-object p0

    :catchall_0
    move-exception p0

    sget-boolean v2, Lcom/twelvemonkeys/image/MagickUtil;->i:Z

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
