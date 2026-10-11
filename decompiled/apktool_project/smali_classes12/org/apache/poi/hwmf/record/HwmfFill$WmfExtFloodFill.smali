.class public Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;
.super Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfExtFloodFill"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;
    }
.end annotation


# instance fields
.field protected mode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/m3i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/m3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;)V

    const-string p0, "mode"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMode()Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;->mode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->extFloodFill:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;->values()[Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill;->mode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfExtFloodFill$HwmfFloodFillMode;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/poi/hwmf/record/HwmfFill$WmfFloodFill;->init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method
