.class public Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetMapMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetMapMode"
.end annotation


# instance fields
.field protected mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetMapMode;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setMapMode(Lorg/apache/poi/hwmf/record/HwmfMapMode;)V

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateWindowMapMode()V

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

    new-instance v0, Lcom/sunia/HTREnginev2/g6i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/g6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetMapMode;)V

    const-string p0, "mapMode"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMapMode()Lorg/apache/poi/hwmf/record/HwmfMapMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetMapMode;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setMapMode:Lorg/apache/poi/hwmf/record/HwmfRecordType;

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

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfMapMode;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfMapMode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetMapMode;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    const/4 p0, 0x2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
