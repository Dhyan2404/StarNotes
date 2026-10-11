.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfSetTextColor"
.end annotation


# instance fields
.field protected final colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    return-void
.end method

.method public getColorRef()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/iai;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/iai;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;)V

    const-string p0, "colorRef"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->setTextColor:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;->colorRef:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
