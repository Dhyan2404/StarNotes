.class public Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WMF_HEADER_MAGIC:I = -0x65393229


# instance fields
.field final bounds:Ljava/awt/geom/Rectangle2D;

.field final unitsPerInch:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v3

    new-instance v13, Ljava/awt/geom/Rectangle2D$Double;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v5, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v7, v4

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v9, v0

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v11, v0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v13, p0, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->unitsPerInch:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    :cond_0
    return-void
.end method

.method public static readHeader(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;->mark(I)V

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    const v1, -0x65393229

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->reset()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getUnitsPerInch()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfPlaceableHeader;->unitsPerInch:I

    return p0
.end method
