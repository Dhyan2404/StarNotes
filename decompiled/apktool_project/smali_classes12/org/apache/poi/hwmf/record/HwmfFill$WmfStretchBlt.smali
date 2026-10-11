.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfStretchBlt"
.end annotation


# instance fields
.field protected final dstBounds:Ljava/awt/geom/Rectangle2D;

.field protected rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

.field protected final srcBounds:Ljava/awt/geom/Rectangle2D;

.field protected target:Lorg/apache/poi/hwmf/record/HwmfBitmap16;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    return-void
.end method

.method public getDstBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "rasterOperation"

    new-instance v1, Lcom/sunia/HTREnginev2/c4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;)V

    const-string v2, "srcBounds"

    new-instance v3, Lcom/sunia/HTREnginev2/d4i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/d4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;)V

    const-string v4, "dstBounds"

    new-instance v5, Lcom/sunia/HTREnginev2/e4i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/e4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;)V

    const-string v6, "target"

    new-instance v7, Lcom/sunia/HTREnginev2/f4i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/f4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRasterOperation()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public getSrcBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getTarget()Lorg/apache/poi/hwmf/record/HwmfBitmap16;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->stretchBlt:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$100(JI)Z

    move-result p2

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfFill;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->rasterOperation:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->srcBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p3}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 p3, p3, 0x2

    :cond_0
    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->dstBounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hwmf/record/HwmfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p4

    add-int/2addr p3, p4

    if-eqz p2, :cond_1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-direct {p2}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfStretchBlt;->target:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    add-int/2addr p3, p0

    :cond_1
    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
