.class public Ljavax/imageio/ImageWriteParam;
.super Ljavax/imageio/IIOParam;
.source "SourceFile"


# static fields
.field private static final MAX_MODE:I = 0x3

.field public static final MODE_COPY_FROM_METADATA:I = 0x3

.field public static final MODE_DEFAULT:I = 0x1

.field public static final MODE_DISABLED:I = 0x0

.field public static final MODE_EXPLICIT:I = 0x2


# instance fields
.field protected canOffsetTiles:Z

.field protected canWriteCompressed:Z

.field protected canWriteProgressive:Z

.field protected canWriteTiles:Z

.field protected compressionMode:I

.field protected compressionQuality:F

.field protected compressionType:Ljava/lang/String;

.field protected compressionTypes:[Ljava/lang/String;

.field protected locale:Ljava/util/Locale;

.field protected preferredTileSizes:[Ljava/awt/Dimension;

.field protected progressiveMode:I

.field protected tileGridXOffset:I

.field protected tileGridYOffset:I

.field protected tileHeight:I

.field protected tileWidth:I

.field protected tilingMode:I

.field protected tilingSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljavax/imageio/IIOParam;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteTiles:Z

    const/4 v1, 0x3

    .line 3
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->preferredTileSizes:[Ljava/awt/Dimension;

    .line 5
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    .line 6
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileWidth:I

    .line 7
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileHeight:I

    .line 8
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canOffsetTiles:Z

    .line 9
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridXOffset:I

    .line 10
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridYOffset:I

    .line 11
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    .line 12
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->progressiveMode:I

    .line 13
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    .line 14
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    .line 15
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    .line 16
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    .line 18
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljavax/imageio/IIOParam;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteTiles:Z

    const/4 v1, 0x3

    .line 21
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v2, 0x0

    .line 22
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->preferredTileSizes:[Ljava/awt/Dimension;

    .line 23
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    .line 24
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileWidth:I

    .line 25
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileHeight:I

    .line 26
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canOffsetTiles:Z

    .line 27
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridXOffset:I

    .line 28
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridYOffset:I

    .line 29
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    .line 30
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->progressiveMode:I

    .line 31
    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    .line 32
    iput v1, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    .line 33
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    .line 34
    iput-object v2, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    .line 36
    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static a([Ljava/awt/Dimension;)[Ljava/awt/Dimension;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/awt/Dimension;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/awt/Dimension;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/awt/Dimension;-><init>(Ljava/awt/Dimension;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canOffsetTiles()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageWriteParam;->canOffsetTiles:Z

    return p0
.end method

.method public canWriteCompressed()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    return p0
.end method

.method public canWriteProgressive()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    return p0
.end method

.method public canWriteTiles()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageWriteParam;->canWriteTiles:Z

    return p0
.end method

.method public getBitRate(F)F
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No compression type set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Quality out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Compression not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionMode()I
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionQuality()F
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionQualityValues()[F
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionTypes()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getLocalizedCompressionTypeName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreferredTileSizes()[Ljava/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljavax/imageio/ImageWriteParam;->preferredTileSizes:[Ljava/awt/Dimension;

    invoke-static {p0}, Ljavax/imageio/ImageWriteParam;->a([Ljava/awt/Dimension;)[Ljava/awt/Dimension;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProgressiveMode()I
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->progressiveMode:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Progressive output not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileGridXOffset()I
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->tileGridXOffset:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling parameters not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileGridYOffset()I
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->tileGridYOffset:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling parameters not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileHeight()I
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->tileHeight:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling parameters not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTileWidth()I
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->tileWidth:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling parameters not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTilingMode()I
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Ljavax/imageio/ImageWriteParam;->tilingMode:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCompressionLossless()Z
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompressionMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->compressionMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->unsetCompression()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal value for mode!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Compression not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompressionQuality(F)V
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No compression type set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Quality out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Compression not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompressionType(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown compression type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No settable compression types"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Compression not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProgressiveMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->progressiveMode:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MODE_EXPLICIT not supported for progressive output"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal value for mode!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Progressive output not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTiling(IIII)V
    .locals 6

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canOffsetTiles()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t offset tiles!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget-object v2, p0, Ljavax/imageio/ImageWriteParam;->preferredTileSizes:[Ljava/awt/Dimension;

    if-eqz v2, :cond_8

    move v2, v0

    :goto_3
    iget-object v3, p0, Ljavax/imageio/ImageWriteParam;->preferredTileSizes:[Ljava/awt/Dimension;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget-object v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    iget v5, v4, Ljava/awt/Dimension;->width:I

    if-lt p1, v5, :cond_6

    iget v5, v3, Ljava/awt/Dimension;->width:I

    if-gt p1, v5, :cond_6

    iget v4, v4, Ljava/awt/Dimension;->height:I

    if-lt p2, v4, :cond_6

    iget v3, v3, Ljava/awt/Dimension;->height:I

    if-le p2, v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal tile size!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_5
    iput-boolean v1, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->tileWidth:I

    iput p2, p0, Ljavax/imageio/ImageWriteParam;->tileHeight:I

    iput p3, p0, Ljavax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput p4, p0, Ljavax/imageio/ImageWriteParam;->tileGridYOffset:I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tile dimensions are non-positive!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tiling not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTilingMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->unsetTiling()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal value for mode!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tiling not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsetCompression()V
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsetTiling()V
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/imageio/ImageWriteParam;->tilingSet:Z

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileWidth:I

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileHeight:I

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->tileGridYOffset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
