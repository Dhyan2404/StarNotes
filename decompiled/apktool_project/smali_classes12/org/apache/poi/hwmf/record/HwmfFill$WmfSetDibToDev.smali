.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetDibToDev"
.end annotation


# instance fields
.field private colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

.field private dib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected final dstBounds:Ljava/awt/geom/Rectangle2D;

.field private scanCount:I

.field protected final srcBounds:Ljava/awt/geom/Rectangle2D;

.field private startScan:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->srcBounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getBMPData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object p0

    return-object p0
.end method

.method public getColorUsage()Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    return-object p0
.end method

.method public getDstBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "colorUsage"

    new-instance v1, Lcom/sunia/HTREnginev2/v3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    const-string v2, "scanCount"

    new-instance v3, Lcom/sunia/HTREnginev2/w3i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/w3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    const-string v4, "startScan"

    new-instance v5, Lcom/sunia/HTREnginev2/x3i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/x3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    const-string v6, "srcBounds"

    new-instance v7, Lcom/sunia/HTREnginev2/y3i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/y3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    const-string v8, "dstBounds"

    new-instance v9, Lcom/sunia/HTREnginev2/z3i;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/z3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    const-string v10, "dib"

    new-instance v11, Lcom/sunia/HTREnginev2/a4i;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/a4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getScanCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->scanCount:I

    return p0
.end method

.method public getSrcBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->srcBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getStartScan()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->startScan:I

    return p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setDibToDev:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->scanCount:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->startScan:I

    new-instance p4, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p4}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-static {p1, p4}, Lorg/apache/poi/hwmf/record/HwmfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, v1}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v1}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const-wide/16 v2, 0x6

    sub-long/2addr p2, v2

    int-to-long v2, v0

    sub-long/2addr p2, v2

    long-to-int p2, p2

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p1

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v4

    iget-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetDibToDev;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return v0
.end method
