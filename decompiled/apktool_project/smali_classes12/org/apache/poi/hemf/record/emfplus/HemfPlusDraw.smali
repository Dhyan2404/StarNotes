.class public final Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawRects;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillPath;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRegion;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImage;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawImagePoints;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusFillRects;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawPath;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;
    }
.end annotation


# static fields
.field private static final MAX_OBJECT_SIZE:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readARGB(I)Ljava/awt/Color;
    .locals 4

    new-instance v0, Ljava/awt/Color;

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v0
.end method

.method private static readEmfPlusInteger(Lorg/apache/poi/util/LittleEndianInputStream;[I)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x7fff

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0
.end method

.method public static readPointF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const/16 p0, 0x8

    return p0
.end method

.method public static readPointR(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I
    .locals 5

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readEmfPlusInteger(Lorg/apache/poi/util/LittleEndianInputStream;[I)I

    move-result v2

    aget v3, v1, v0

    int-to-double v3, v3

    invoke-static {p0, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readEmfPlusInteger(Lorg/apache/poi/util/LittleEndianInputStream;[I)I

    move-result p0

    add-int/2addr v2, p0

    aget p0, v1, v0

    int-to-double v0, p0

    invoke-virtual {p1, v3, v4, v0, v1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return v2
.end method

.method public static readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    int-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const/4 p0, 0x4

    return p0
.end method

.method public static readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v6, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p0

    float-to-double v8, p0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x10

    return p0
.end method

.method public static readRectS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    int-to-double v4, v0

    int-to-double v6, v1

    int-to-double v8, v2

    int-to-double v10, p0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x8

    return p0
.end method

.method public static round10(D)D
    .locals 1

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/16 p1, 0xa

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method
