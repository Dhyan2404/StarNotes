.class public Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfCreateFontIndirect"
.end annotation


# instance fields
.field protected final font:Lorg/apache/poi/hwmf/record/HwmfFont;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFont;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfFont;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setFont(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getFont()Lorg/apache/poi/hwmf/record/HwmfFont;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

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

    new-instance v0, Lcom/sunia/HTREnginev2/v9i;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/v9i;-><init>(Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;)V

    const-string p0, "font"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->createFontIndirect:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfFont;->init(Lorg/apache/poi/util/LittleEndianInputStream;J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
