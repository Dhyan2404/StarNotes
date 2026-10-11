.class public Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;
.super Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfExtCreateFontIndirectW"
.end annotation


# instance fields
.field fontIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfFont;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emf/HemfFont;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->fontIdx:I

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->extCreateFontIndirectW:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getFontIdx()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->fontIdx:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/uyh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/uyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;)V

    new-instance v1, Lcom/sunia/HTREnginev2/vyh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vyh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;)V

    const-string p0, "base"

    const-string v2, "fontIdx"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p4, p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;->fontIdx:I

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    const-wide/16 p4, 0x4

    sub-long/2addr p2, p4

    long-to-int p2, p2

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfFont;->init(Lorg/apache/poi/util/LittleEndianInputStream;J)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr p0, p4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
