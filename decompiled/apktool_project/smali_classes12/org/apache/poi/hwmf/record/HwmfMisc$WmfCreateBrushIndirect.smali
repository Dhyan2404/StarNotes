.class public Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;
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
    name = "WmfCreateBrushIndirect"
.end annotation


# instance fields
.field protected brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field protected brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field protected colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushHatch(Lorg/apache/poi/hwmf/record/HwmfHatchStyle;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getBrushHatch()Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-object p0
.end method

.method public getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object p0
.end method

.method public getColorRef()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

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

    const-string v0, "brushStyle"

    new-instance v1, Lcom/sunia/HTREnginev2/q5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;)V

    const-string v2, "colorRef"

    new-instance v3, Lcom/sunia/HTREnginev2/r5i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/r5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;)V

    const-string v4, "brushHatch"

    new-instance v5, Lcom/sunia/HTREnginev2/s5i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/s5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createBrushIndirect:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {p2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfCreateBrushIndirect;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
