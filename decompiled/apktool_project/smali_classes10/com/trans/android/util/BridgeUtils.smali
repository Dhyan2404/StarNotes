.class public Lcom/trans/android/util/BridgeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCALE_BACK:F = 0.999f

.field private static final TAG:Ljava/lang/String; = "BridgeUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;Ljava/backport/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;Ljava/backport/function/Predicate;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "Ljava/lang/String;",
            "Ljava/backport/function/Predicate<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    .line 4
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    .line 5
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-gt v2, v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 8
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v3

    sub-int/2addr v3, v1

    .line 9
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v4

    sub-int/2addr v4, v1

    .line 10
    new-instance v5, Lcom/trans/android/common/AttributedData;

    invoke-direct {v5, v3, v4, v2}, Lcom/trans/android/common/AttributedData;-><init>(IILjava/util/Map;)V

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {v5, p2}, Lcom/trans/android/common/AttributedData;->removeIf(Ljava/backport/function/Predicate;)V

    .line 12
    :cond_1
    invoke-virtual {v5, v0, p1}, Lcom/trans/android/common/AttributedData;->addTo(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertBuffer(Ljava/awt/image/DataBuffer;)Ljava/nio/Buffer;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/awt/image/DataBufferDouble;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferDouble;->getData()[D

    move-result-object p0

    invoke-static {p0}, Ljava/nio/DoubleBuffer;->wrap([D)Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferFloat;->getData()[F

    move-result-object p0

    invoke-static {p0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p0, Ljava/awt/image/DataBufferInt;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object p0

    invoke-static {p0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p0, Ljava/awt/image/DataBufferShort;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferShort;->getData()[S

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast p0, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_5
    check-cast p0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyData(Landroid/graphics/Bitmap;Ljava/awt/image/WritableRaster;)V
    .locals 12

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 17
    new-array v10, v8, [I

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v9, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    .line 18
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 19
    invoke-static {p1, v10}, Lcom/trans/android/util/ColorUtils;->toJavaPixels(Ljava/awt/image/Raster;[I)[I

    move-result-object v5

    move-object v0, p1

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyData(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    .line 5
    new-instance v4, Ljava/awt/Rectangle;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 6
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 7
    invoke-virtual {v4, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    .line 10
    iget v8, v0, Ljava/awt/Rectangle;->height:I

    .line 11
    iget v9, v0, Ljava/awt/Rectangle;->x:I

    .line 12
    iget v0, v0, Ljava/awt/Rectangle;->y:I

    const/4 v2, 0x0

    move v10, v0

    move-object v7, v2

    :goto_0
    add-int v2, v0, v8

    if-ge v10, v2, :cond_1

    const/4 v6, 0x1

    move-object v2, p0

    move v3, v9

    move v4, v10

    move v5, v1

    .line 13
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v11

    move-object v2, p1

    move-object v7, v11

    .line 14
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAlignmentFromAttributeData(Lcom/trans/android/common/AttributedData;)Landroid/text/Layout$Alignment;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v1}, Lcom/trans/android/batik/BatikUtils;->isBatikAlignmentAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/trans/android/batik/BatikUtils;->getAlignment(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Landroid/text/Layout$Alignment;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlignmentFromAttributeData(Ljava/util/List;)Landroid/text/Layout$Alignment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;)",
            "Landroid/text/Layout$Alignment;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/common/AttributedData;

    .line 3
    invoke-static {v0}, Lcom/trans/android/util/BridgeUtils;->getAlignmentFromAttributeData(Lcom/trans/android/common/AttributedData;)Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getConfigByImageType(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method public static getFontFromAttributedData(Ljava/util/List;Ljava/awt/Font;)Ljava/awt/Font;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;",
            "Ljava/awt/Font;",
            ")",
            "Ljava/awt/Font;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v3, v0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/trans/android/common/AttributedData;

    invoke-virtual {v4}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v0

    move-object v5, v1

    move-object v7, v5

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    if-ne v9, v10, :cond_3

    instance-of v9, v8, Ljava/awt/Font;

    if-eqz v9, :cond_2

    move-object v5, v8

    check-cast v5, Ljava/awt/Font;

    goto :goto_1

    :cond_3
    sget-object v10, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    if-ne v9, v10, :cond_4

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v10, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    if-ne v9, v10, :cond_5

    instance-of v9, v8, Ljava/lang/Number;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_5
    sget-object v10, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    if-ne v9, v10, :cond_6

    instance-of v9, v8, Ljava/lang/Float;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    goto :goto_1

    :cond_6
    sget-object v10, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    if-ne v9, v10, :cond_2

    instance-of v9, v8, Ljava/lang/Float;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/awt/Font;->getSize2D()F

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v5}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/awt/Font;->getSize2D()F

    move-result v6

    invoke-virtual {v5}, Ljava/awt/Font;->getStyle()I

    :cond_8
    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1

    move v3, v6

    move-object v2, v7

    goto/16 :goto_0

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const/4 p0, 0x0

    cmpg-float p0, v3, p0

    if-gez p0, :cond_b

    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v3

    :cond_b
    new-instance p0, Ljava/awt/Font;

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;IF)V

    return-object p0
.end method

.method public static getFontFromAttributedMap(Ljava/util/Map;Ljava/awt/Font;)Ljava/awt/Font;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/awt/Font;",
            ")",
            "Ljava/awt/Font;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Font;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    sget-object p1, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    sget-object v2, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    sget-object v2, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-ltz p0, :cond_5

    or-int/lit8 p1, p1, 0x2

    :cond_5
    new-instance p0, Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;IF)V

    return-object p0
.end method

.method public static getImageTypeByConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 1

    sget-object v0, Lcom/trans/android/util/BridgeUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/16 p0, 0xc

    return p0
.end method

.method public static getLinearGradient(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[Ljava/awt/Color;[FLandroid/graphics/Shader$TileMode;)Landroid/graphics/LinearGradient;
    .locals 8

    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->isNaN(Ljava/awt/geom/Point2D;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/trans/android/util/BridgeUtils;->isNaN(Ljava/awt/geom/Point2D;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p1

    invoke-virtual {p0, p2, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p0

    new-instance p2, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v1, v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    double-to-float v4, p0

    invoke-static {p3}, Lcom/trans/android/util/ColorUtils;->toColorInt([Ljava/awt/Color;)[I

    move-result-object v5

    move-object v0, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p2

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getPaintFromAttributeMap(Ljava/util/Map;)Ljava/awt/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Paint;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Paint;

    :goto_0
    return-object p0
.end method

.method public static getRadialGradient(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;D[Ljava/awt/Color;[FLandroid/graphics/Shader$TileMode;)Landroid/graphics/RadialGradient;
    .locals 14

    move-object v0, p0

    move-wide/from16 v1, p3

    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->isNaN(Ljava/awt/geom/Point2D;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/trans/android/util/BridgeUtils;->isNaN(Ljava/awt/geom/Point2D;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    invoke-virtual {p0, p1, v4}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-virtual {p0, v5, v4}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v4

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v7

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    mul-double/2addr v7, v1

    double-to-float v0, v7

    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_1

    double-to-float v0, v1

    :cond_1
    move v10, v0

    mul-float v0, v10, v10

    sub-float v1, v6, v5

    sub-float v2, v4, v3

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    const v9, 0x3f7fbe77    # 0.999f

    mul-float/2addr v0, v9

    float-to-double v11, v0

    cmpl-double v0, v7, v11

    if-lez v0, :cond_2

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    add-float v6, v5, v1

    add-float v4, v3, v2

    :cond_2
    move v9, v4

    move v8, v6

    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-static/range {p5 .. p5}, Lcom/trans/android/util/ColorUtils;->toColorInt([Ljava/awt/Color;)[I

    move-result-object v11

    move-object v7, v0

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v4
.end method

.method public static getValue(Ljava/util/Map;Ljava/awt/font/TextAttribute;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/awt/font/TextAttribute;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isNaN(Ljava/awt/geom/Point2D;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isScript(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    if-eq v0, p0, :cond_0

    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setFontSpannable(Landroid/text/Spannable;Lcom/trans/android/common/AttributedData;)V
    .locals 6

    invoke-virtual {p1}, Lcom/trans/android/common/AttributedData;->getBeginIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/trans/android/common/AttributedData;->getEndIndex()I

    move-result v1

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v2}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sget-object v3, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v3}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sget-object v4, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    sget-object v3, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v3}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v4}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    sget-object v5, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v5}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/awt/Font;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/awt/Font;->getSize2D()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    sget-object v5, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1, v5}, Lcom/trans/android/common/AttributedData;->getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p1

    sget-object v5, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    if-eq v5, p1, :cond_4

    sget-object v5, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    if-ne v5, p1, :cond_5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_5
    if-nez v3, :cond_6

    new-instance p1, Lcom/trans/android/style/StyleSpan;

    invoke-direct {p1, v2}, Lcom/trans/android/style/StyleSpan;-><init>(I)V

    invoke-static {p0, p1, v0, v1}, Lcom/trans/android/util/BridgeUtils;->setSpannable(Landroid/text/Spannable;Ljava/lang/Object;II)V

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {p0, p1, v0, v1}, Lcom/trans/android/util/BridgeUtils;->setSpannable(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/awt/Font;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {p1, v3, v2, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;IF)V

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-instance v3, Lcom/trans/android/style/TextAppearanceSpan;

    invoke-direct {v3, p1, v2}, Lcom/trans/android/style/TextAppearanceSpan;-><init>(Ljava/awt/Font;I)V

    invoke-static {p0, v3, v0, v1}, Lcom/trans/android/util/BridgeUtils;->setSpannable(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :goto_1
    return-void
.end method

.method public static setSpannable(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x21

    .line 24
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static setSpannable(Landroid/text/Spannable;Ljava/util/Map$Entry;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/Map$Entry<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/trans/android/batik/BatikUtils;->isBatikAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v1, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_2

    .line 5
    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_8

    .line 6
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_4

    .line 8
    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lcom/trans/android/style/ForegroundColorSpan;

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/trans/android/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v0, p1, Ljava/awt/Paint;

    if-eqz v0, :cond_8

    .line 11
    new-instance v0, Lcom/trans/android/style/ForegroundPaintSpan;

    check-cast p1, Ljava/awt/Paint;

    invoke-direct {v0, p1}, Lcom/trans/android/style/ForegroundPaintSpan;-><init>(Ljava/awt/Paint;)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_5

    .line 13
    sget-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    if-ne v0, p1, :cond_8

    .line 14
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto :goto_0

    .line 15
    :cond_5
    sget-object v1, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_6

    .line 16
    sget-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_8

    .line 17
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto :goto_0

    .line 18
    :cond_6
    sget-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_8

    .line 19
    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    if-ne v0, p1, :cond_7

    .line 20
    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    goto :goto_0

    .line 21
    :cond_7
    sget-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    if-ne v0, p1, :cond_8

    .line 22
    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/trans/android/util/BridgeUtils;->setSpannable(Landroid/text/Spannable;Ljava/lang/Object;II)V

    return-void
.end method

.method public static setSpannableWithAttributeData(Landroid/text/Spannable;Lcom/trans/android/common/AttributedData;)V
    .locals 4

    .line 4
    invoke-virtual {p1}, Lcom/trans/android/common/AttributedData;->getBeginIndex()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/trans/android/common/AttributedData;->getEndIndex()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/trans/android/common/AttributedData;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-static {p0, v3, v0, v1}, Lcom/trans/android/util/BridgeUtils;->setSpannable(Landroid/text/Spannable;Ljava/util/Map$Entry;II)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/trans/android/util/BridgeUtils;->setFontSpannable(Landroid/text/Spannable;Lcom/trans/android/common/AttributedData;)V

    return-void
.end method

.method public static setSpannableWithAttributeData(Landroid/text/Spannable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/onyx/common/util/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trans/android/common/AttributedData;

    .line 3
    invoke-static {p0, v0}, Lcom/trans/android/util/BridgeUtils;->setSpannableWithAttributeData(Landroid/text/Spannable;Lcom/trans/android/common/AttributedData;)V

    goto :goto_0

    :cond_1
    return-void
.end method
