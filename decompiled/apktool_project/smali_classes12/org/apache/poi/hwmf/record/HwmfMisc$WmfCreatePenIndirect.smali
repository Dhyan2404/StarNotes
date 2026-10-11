.class public Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfCreatePenIndirect"
.end annotation


# instance fields
.field protected final colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field protected final dimension:Ljava/awt/geom/Dimension2D;

.field protected penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenWidth(D)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getColorRef()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getDimension()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "penStyle"

    new-instance v1, Lcom/sunia/HTREnginev2/u5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;)V

    const-string v2, "dimension"

    new-instance v3, Lcom/sunia/HTREnginev2/v5i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/v5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;)V

    const-string v4, "colorRef"

    new-instance v5, Lcom/sunia/HTREnginev2/w5i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/w5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPenStyle()Lorg/apache/poi/hwmf/record/HwmfPenStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createPenIndirect:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p3

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->dimension:Ljava/awt/geom/Dimension2D;

    int-to-double v0, p2

    int-to-double p2, p3

    invoke-virtual {p4, v0, v1, p2, p3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreatePenIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
