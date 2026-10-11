.class public Lcom/sunia/HTREnginev2/qji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/qji$b;,
        Lcom/sunia/HTREnginev2/qji$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xff

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0xff00

.field public static final g:I = 0x0

.field public static final h:I = 0x100

.field public static final i:I = 0x200

.field public static final j:I = 0xff0000

.field public static final k:I = 0x0

.field public static final l:I = 0x10000

.field public static final m:I = 0x20000

.field public static final n:I = 0x30000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    const v3, 0xffffff

    invoke-virtual {p0, v2, v1, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/IndexColorModel;
    .locals 17

    invoke-static/range {p2 .. p2}, Lcom/sunia/HTREnginev2/qji;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v4, 0x1000

    new-array v4, v4, [Ljava/util/List;

    invoke-static/range {p2 .. p2}, Lcom/sunia/HTREnginev2/qji;->m(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    mul-int v5, v2, v3

    div-int/lit16 v5, v5, 0x4000

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v8, v2, :cond_6

    rem-int v10, v8, v5

    :goto_3
    if-ge v10, v3, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, p0

    invoke-virtual {v11, v8, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v12, v13

    const/high16 v13, 0xf00000

    and-int/2addr v13, v12

    ushr-int/lit8 v13, v13, 0xc

    const v14, 0xf000

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    and-int/lit16 v14, v12, 0xf0

    ushr-int/lit8 v14, v14, 0x4

    or-int/2addr v13, v14

    aget-object v14, v4, v13

    if-nez v14, :cond_2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/sunia/HTREnginev2/qji$a;

    invoke-direct {v15, v12}, Lcom/sunia/HTREnginev2/qji$a;-><init>(I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-object v14, v4, v13

    goto :goto_4

    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sunia/HTREnginev2/qji$a;

    invoke-virtual {v15, v12}, Lcom/sunia/HTREnginev2/qji$a;->a(I)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_4

    :cond_4
    new-instance v13, Lcom/sunia/HTREnginev2/qji$a;

    invoke-direct {v13, v12}, Lcom/sunia/HTREnginev2/qji$a;-><init>(I)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v10, v5

    goto :goto_3

    :cond_5
    move-object/from16 v11, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    new-array v2, v1, [Lcom/sunia/HTREnginev2/qji$b;

    new-instance v3, Lcom/sunia/HTREnginev2/qji$b;

    invoke-direct {v3, v4, v9}, Lcom/sunia/HTREnginev2/qji$b;-><init>([Ljava/util/List;I)V

    aput-object v3, v2, v7

    move v3, v7

    :cond_7
    :goto_5
    if-ge v6, v1, :cond_10

    :cond_8
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/qji$b;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_8

    :cond_9
    if-ne v3, v6, :cond_a

    goto :goto_a

    :cond_a
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/qji$b;->c()Lcom/sunia/HTREnginev2/qji$b;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v8, v5, Lcom/sunia/HTREnginev2/qji$b;->e:I

    iget v9, v4, Lcom/sunia/HTREnginev2/qji$b;->e:I

    if-le v8, v9, :cond_b

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    :cond_b
    iget v8, v4, Lcom/sunia/HTREnginev2/qji$b;->e:I

    add-int/lit8 v9, v3, 0x1

    move v10, v3

    :goto_6
    if-ge v9, v6, :cond_d

    aget-object v11, v2, v9

    iget v12, v11, Lcom/sunia/HTREnginev2/qji$b;->e:I

    if-ge v12, v8, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v12, v10, 0x1

    aput-object v11, v2, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_6

    :cond_d
    :goto_7
    add-int/lit8 v8, v10, 0x1

    aput-object v4, v2, v10

    iget v4, v5, Lcom/sunia/HTREnginev2/qji$b;->e:I

    :goto_8
    if-ge v8, v6, :cond_f

    aget-object v9, v2, v8

    iget v9, v9, Lcom/sunia/HTREnginev2/qji$b;->e:I

    if-ge v9, v4, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    add-int/lit8 v4, v8, 0x1

    sub-int v9, v6, v8

    invoke-static {v2, v8, v2, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    :goto_a
    if-eqz v0, :cond_11

    add-int/lit8 v1, v6, 0x1

    move v10, v1

    goto :goto_b

    :cond_11
    move v10, v6

    :goto_b
    new-array v11, v10, [B

    if-eqz v0, :cond_12

    add-int/lit8 v1, v6, 0x1

    goto :goto_c

    :cond_12
    move v1, v6

    :goto_c
    new-array v12, v1, [B

    if-eqz v0, :cond_13

    add-int/lit8 v1, v6, 0x1

    goto :goto_d

    :cond_13
    move v1, v6

    :goto_d
    new-array v13, v1, [B

    :goto_e
    if-ge v7, v6, :cond_14

    aget-object v1, v2, v7

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/qji$b;->a()I

    move-result v1

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v11, v7

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v12, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_14
    const/16 v9, 0x8

    if-eqz v0, :cond_15

    new-instance v0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    add-int/lit8 v14, v10, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(II[B[B[BI)V

    goto :goto_f

    :cond_15
    new-instance v0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    const/16 v9, 0x8

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(II[B[B[B)V

    :goto_f
    return-object v0
.end method

.method public static c(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 5

    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/awt/image/BufferedImage;->copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->isAlphaPremultiplied()Z

    move-result v4

    invoke-direct {v0, v1, v3, v4, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    sget-object p1, Ljava/awt/AlphaComposite;->DstOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v1, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, p0}, Ljava/awt/Graphics2D;->fillRect(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    throw p0
.end method

.method public static d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/image/ImageConversionException;
        }
    .end annotation

    instance-of v0, p0, Ljava/awt/image/RenderedImage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/awt/image/RenderedImage;

    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v2, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {v0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v2

    if-gt v2, p1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/image/BufferedImageFactory;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/image/BufferedImageFactory;-><init>(Ljava/awt/Image;)V

    invoke-virtual {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    instance-of v2, p0, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v2

    if-gt v2, p1, :cond_1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/twelvemonkeys/image/BufferedImageFactory;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/RenderedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/qji;->b(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/IndexColorModel;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of p0, v1, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    if-nez p0, :cond_4

    new-instance p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    invoke-direct {p0, v1}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(Ljava/awt/image/IndexColorModel;)V

    move-object v1, p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static e(Ljava/awt/Image;IZ)Ljava/awt/image/IndexColorModel;
    .locals 0

    if-eqz p2, :cond_0

    const/16 p2, 0x100

    goto :goto_0

    :cond_0
    const/16 p2, 0x200

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sunia/HTREnginev2/qji;->g(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/awt/image/BufferedImage;II)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sunia/HTREnginev2/qji;->h(Ljava/awt/image/BufferedImage;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/awt/image/BufferedImage;ILjava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Lcom/sunia/HTREnginev2/qji;->c(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    :goto_0
    and-int/lit16 v1, p3, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v1

    if-ge v1, p1, :cond_1

    and-int/lit16 p1, p3, -0x100

    or-int/lit8 p3, p1, 0x1

    :cond_1
    invoke-static {p0, v0, p2, p3}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/awt/image/BufferedImage;Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sunia/HTREnginev2/qji;->j(Ljava/awt/image/BufferedImage;Ljava/awt/Image;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/awt/image/BufferedImage;Ljava/awt/Image;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twelvemonkeys/image/ImageConversionException;
        }
    .end annotation

    const/16 v0, 0x100

    invoke-static {p1, v0, p3}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;I)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 8

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-static {p3}, Lcom/sunia/HTREnginev2/qji;->n(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getTransparency()I

    move-result v2

    if-eq v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p0, p2}, Lcom/sunia/HTREnginev2/qji;->c(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/awt/image/BufferedImage;

    const/16 v7, 0xd

    invoke-direct {v5, v0, v1, v7, p1}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/awt/image/BufferedImage;

    const/16 v7, 0xc

    invoke-direct {v5, v0, v1, v7, p1}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    :goto_2
    and-int/lit16 p3, p3, 0xff

    if-eq p3, v4, :cond_5

    const/4 v0, 0x3

    if-eq p3, v6, :cond_3

    if-eq p3, v0, :cond_3

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    :try_start_0
    new-instance p3, Ljava/awt/RenderingHints;

    sget-object v0, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-direct {p3, v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v3, v3, p3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    throw p0

    :cond_3
    new-instance v1, Lcom/twelvemonkeys/image/DiffusionDither;

    invoke-direct {v1, p1}, Lcom/twelvemonkeys/image/DiffusionDither;-><init>(Ljava/awt/image/IndexColorModel;)V

    if-ne p3, v0, :cond_4

    invoke-virtual {v1, v4}, Lcom/twelvemonkeys/image/DiffusionDither;->setAlternateScans(Z)V

    :cond_4
    invoke-virtual {v1, p2, v5}, Lcom/twelvemonkeys/image/DiffusionDither;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    goto :goto_3

    :cond_5
    new-instance p3, Lcom/twelvemonkeys/image/CopyDither;

    invoke-direct {p3, p1}, Lcom/twelvemonkeys/image/CopyDither;-><init>(Ljava/awt/image/IndexColorModel;)V

    invoke-virtual {p3, p2, v5}, Lcom/twelvemonkeys/image/CopyDither;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    :goto_3
    if-eqz v2, :cond_6

    invoke-static {v5, p0}, Lcom/sunia/HTREnginev2/qji;->a(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)V

    :cond_6
    return-object v5
.end method

.method public static m(I)Z
    .locals 1

    const v0, 0xff00

    and-int/2addr p0, v0

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(I)Z
    .locals 1

    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const/high16 v0, 0x30000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static o([Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "\"!"

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    array-length v5, v0

    if-ge v6, v5, :cond_1a

    aget-object v5, v0, v6

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x2d

    if-ne v5, v2, :cond_1a

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x2

    if-lt v5, v2, :cond_1a

    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x73

    if-eq v2, v5, :cond_17

    aget-object v2, v0, v6

    const-string v5, "--speedtest"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x77

    if-eq v2, v5, :cond_16

    aget-object v2, v0, v6

    const-string v5, "--overwrite"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_b

    :cond_1
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x63

    if-eq v2, v5, :cond_15

    aget-object v2, v0, v6

    const-string v5, "--colors"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_a

    :cond_2
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x67

    if-eq v2, v5, :cond_14

    aget-object v2, v0, v6

    const-string v5, "--grayscale"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :cond_3
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x6d

    if-eq v2, v5, :cond_13

    aget-object v2, v0, v6

    const-string v5, "--monochrome"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_8

    :cond_4
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x64

    if-eq v2, v5, :cond_12

    aget-object v2, v0, v6

    const-string v5, "--dither"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_7

    :cond_5
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x70

    if-eq v2, v5, :cond_11

    aget-object v2, v0, v6

    const-string v5, "--palette"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_6

    :cond_6
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x71

    if-eq v2, v5, :cond_10

    aget-object v2, v0, v6

    const-string v5, "--quality"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_5

    :cond_7
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x62

    if-eq v2, v5, :cond_f

    aget-object v2, v0, v6

    const-string v5, "--bgcolor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_4

    :cond_8
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x74

    if-eq v2, v5, :cond_e

    aget-object v2, v0, v6

    const-string v5, "--transparency"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x66

    if-eq v2, v5, :cond_d

    aget-object v2, v0, v6

    const-string v5, "--outputformat"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    aget-object v2, v0, v6

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x68

    if-eq v2, v5, :cond_c

    aget-object v2, v0, v6

    const-string v5, "--help"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v10

    const-string v10, "Unknown option \""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v6, v10

    goto/16 :goto_e

    :cond_c
    :goto_1
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_2
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    aget-object v5, v0, v6

    invoke-static {v5}, Lcom/twelvemonkeys/lang/StringUtil;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_e
    :goto_3
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v19

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_4
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    :try_start_0
    aget-object v5, v0, v6

    invoke-static {v5}, Lcom/twelvemonkeys/lang/StringUtil;->toColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :cond_10
    :goto_5
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    aget-object v14, v0, v6

    goto :goto_d

    :cond_11
    :goto_6
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    aget-object v9, v0, v6

    goto :goto_d

    :cond_12
    :goto_7
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    aget-object v13, v0, v6

    goto :goto_d

    :cond_13
    :goto_8
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v19

    const/4 v4, 0x2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_14
    :goto_9
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v19

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_15
    :goto_a
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x1

    :try_start_1
    aget-object v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move v6, v2

    const/4 v5, 0x0

    goto :goto_f

    :cond_16
    :goto_b
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v19

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_17
    :goto_c
    move/from16 v19, v10

    add-int/lit8 v6, v6, 0x1

    array-length v2, v0

    if-le v2, v6, :cond_18

    aget-object v2, v0, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x2d

    if-eq v2, v10, :cond_19

    add-int/lit8 v2, v6, 0x1

    :try_start_2
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_d
    move v6, v2

    :goto_e
    move/from16 v10, v19

    goto/16 :goto_0

    :catch_1
    move v6, v2

    :goto_f
    const/4 v10, 0x1

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    :cond_19
    move/from16 v10, v19

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_1a
    move/from16 v19, v10

    const/4 v5, 0x0

    move/from16 v10, v19

    :goto_10
    if-nez v10, :cond_1c

    array-length v10, v0

    add-int/lit8 v5, v6, 0x1

    if-ge v10, v5, :cond_1b

    goto :goto_11

    :cond_1b
    move/from16 v21, v4

    move/from16 v22, v12

    goto/16 :goto_16

    :cond_1c
    :goto_11
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Usage: IndexImage [--help|-h] [--speedtest|-s <integer>] [--bgcolor|-b <color>] [--colors|-c <integer> | --grayscale|g | --monochrome|-m | --palette|-p <file>] [--dither|-d (default|diffusion|none)] [--quality|-q (default|high|low)] [--transparency|-t] [--outputformat|-f (gif|jpeg|png|wbmp|...)] [--overwrite|-w] <input> [<output>]"

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Input format names: "

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {}, Ljavax/imageio/ImageIO;->getReaderFormatNames()[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    :goto_12
    array-length v2, v5

    const-string v19, ", "

    const-string v20, "\n"

    if-ge v10, v2, :cond_1e

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move/from16 v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v12

    aget-object v12, v5, v10

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    array-length v12, v5

    if-ge v10, v12, :cond_1d

    move-object/from16 v12, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v12, v20

    :goto_13
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move/from16 v4, v21

    move/from16 v12, v22

    goto :goto_12

    :cond_1e
    move/from16 v21, v4

    move/from16 v22, v12

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Output format names: "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {}, Ljavax/imageio/ImageIO;->getWriterFormatNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_14
    array-length v5, v2

    if-ge v4, v5, :cond_20

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v2, v4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v12, v2

    if-ge v4, v12, :cond_1f

    move-object/from16 v12, v19

    goto :goto_15

    :cond_1f
    move-object/from16 v12, v20

    :goto_15
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_14

    :cond_20
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :goto_16
    new-instance v2, Ljava/io/File;

    add-int/lit8 v4, v6, 0x1

    aget-object v5, v0, v6

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "\" does not exist!"

    const-string v10, "File \""

    if-nez v5, :cond_21

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_17

    :cond_21
    move/from16 v19, v11

    :goto_17
    if-eqz v9, :cond_22

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_23

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_18

    :cond_22
    const/4 v5, 0x0

    :cond_23
    :goto_18
    array-length v6, v0

    const/16 v9, 0x2e

    if-ge v4, v6, :cond_24

    new-instance v6, Ljava/io/File;

    aget-object v0, v0, v4

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_26

    invoke-static {v6}, Lcom/twelvemonkeys/io/FileUtil;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    goto :goto_19

    :cond_24
    invoke-static {v2}, Lcom/twelvemonkeys/io/FileUtil;->getBasename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_25

    const-string v8, "png"

    :cond_25
    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_26
    :goto_19
    if-nez v7, :cond_27

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The file \""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" allready exists!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_27
    :try_start_3
    invoke-static {v2}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const-string v0, "No reader for image: \""

    if-nez v4, :cond_28

    :try_start_4
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_1a

    :catch_2
    move-exception v0

    goto :goto_1c

    :cond_28
    :goto_1a
    if-eqz v5, :cond_2a

    invoke-static {v5}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v2, :cond_29

    :try_start_5
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object v5, v2

    goto :goto_1d

    :cond_29
    :goto_1b
    move-object v5, v2

    goto :goto_1e

    :cond_2a
    const/4 v5, 0x0

    goto :goto_1e

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x0

    :goto_1d
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_1e
    const-string v0, "DIFFUSION"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v2, 0x2

    goto :goto_1f

    :cond_2b
    const-string v0, "DIFFUSION_ALTSCANS"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v2, 0x3

    goto :goto_1f

    :cond_2c
    const-string v0, "NONE"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x0

    :goto_1f
    const-string v0, "HIGH"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    or-int/lit16 v2, v2, 0x200

    goto :goto_20

    :cond_2e
    const-string v0, "LOW"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    or-int/lit16 v2, v2, 0x100

    :cond_2f
    :goto_20
    if-eqz v16, :cond_30

    const/high16 v0, 0x20000

    or-int/2addr v2, v0

    :cond_30
    if-eqz v15, :cond_31

    if-nez v5, :cond_31

    invoke-static {v4, v15}, Lcom/sunia/HTREnginev2/qji;->c(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    :cond_31
    const-string v7, "Measuring speed!"

    if-lez v3, :cond_32

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_21

    :cond_32
    const-wide/16 v12, 0x0

    :goto_21
    if-eqz v19, :cond_33

    invoke-static {}, Lcom/twelvemonkeys/image/MonochromeColorModel;->getInstance()Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-static {v4, v0, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {}, Lcom/twelvemonkeys/image/MonochromeColorModel;->getInstance()Ljava/awt/image/IndexColorModel;

    move-result-object v5

    goto :goto_22

    :cond_33
    if-eqz v22, :cond_34

    invoke-static {v4}, Lcom/twelvemonkeys/image/ImageUtil;->grayscale(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    move/from16 v14, v21

    invoke-static {v4, v14, v2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v5

    invoke-static {v4, v5, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-lez v3, :cond_36

    invoke-static {v0, v14, v2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v5

    goto :goto_22

    :cond_34
    move/from16 v14, v21

    if-eqz v5, :cond_35

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {v5, v14, v2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v5

    invoke-static {v0, v5, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_22

    :cond_35
    const/4 v10, 0x2

    invoke-static {v4, v10}, Lcom/twelvemonkeys/image/ImageUtil;->toBuffered(Ljava/awt/image/BufferedImage;I)Ljava/awt/image/BufferedImage;

    move-result-object v4

    invoke-static {v4, v14, v2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object v5

    invoke-static {v4, v5, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_36
    :goto_22
    if-lez v3, :cond_37

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Color selection + dither: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v12, v17, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_37
    :try_start_6
    invoke-static {v0, v8, v6}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No writer for format: \""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_23

    :catch_5
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_38
    :goto_23
    if-lez v3, :cond_3c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_24
    if-ge v0, v1, :cond_39

    invoke-static {v4, v5, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_39
    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    :cond_3a
    :goto_25
    const-string v1, "ms"

    if-ge v0, v3, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v15, v2}, Lcom/sunia/HTREnginev2/qji;->l(Ljava/awt/image/BufferedImage;Ljava/awt/image/IndexColorModel;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    add-long/2addr v10, v12

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v6, v0, 0xa

    if-nez v6, :cond_3a

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nAverage (after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " iterations): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v12, v0

    div-long v12, v10, v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_25

    :cond_3b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nDither only:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total time ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invocations): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Average: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    div-long/2addr v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method
