.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibBitBlt;
.super Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfDibBitBlt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;-><init>()V

    return-void
.end method


# virtual methods
.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->dibBitBlt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    div-long v0, p2, v0

    invoke-static {v0, v1, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$100(JI)Z

    move-result p4

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 v1, v1, 0x2

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v2}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p4, :cond_1

    new-instance p4, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {p4}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const-wide/16 v2, 0x6

    sub-long/2addr p2, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    long-to-int p2, p2

    invoke-virtual {p4, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p1

    add-int/2addr v1, p1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v5

    iget-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfDibStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return v1
.end method
