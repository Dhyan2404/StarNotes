.class public Lorg/apache/poi/hwmf/record/HwmfFill;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibBitBlt;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfBitBlt;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchDib;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfPatBlt;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfInvertRegion;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfPaintRegion;,
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfFillRegion;,
        Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;,
        Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.method public static synthetic access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfFill;->readRasterOperation(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(JI)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfFill;->hasBitmap(JI)Z

    move-result p0

    return p0
.end method

.method private static hasBitmap(JI)Z
    .locals 2

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x3

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    int-to-double v4, p0

    int-to-double v6, v2

    int-to-double v8, v1

    int-to-double v10, v0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x8

    return p0
.end method

.method private static readRasterOperation(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p0

    return-object p0
.end method
