.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfBitBlt;
.super Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfBitBlt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;-><init>()V

    return-void
.end method


# virtual methods
.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->bitBlt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    invoke-static {p2, p3, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$100(JI)Z

    move-result p2

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    new-instance p3, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p3}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-static {p1, p3}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 p4, p4, 0x2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v0}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v0

    add-int/2addr p4, v0

    if-eqz p2, :cond_1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-direct {p2}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p1

    add-int/2addr p4, p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v3

    iget-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return p4
.end method
