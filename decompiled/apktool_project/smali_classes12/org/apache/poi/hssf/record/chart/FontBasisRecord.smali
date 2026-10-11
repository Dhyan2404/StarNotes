.class public final Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1060s


# instance fields
.field private field_1_xBasis:S

.field private field_2_yBasis:S

.field private field_3_heightBasis:S

.field private field_4_scale:S

.field private field_5_indexToFontTable:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->copy()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->copy()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->copy()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/FontBasisRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "xBasis"

    new-instance v1, Lcom/sunia/HTREnginev2/bpg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bpg;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    const-string v2, "yBasis"

    new-instance v3, Lcom/sunia/HTREnginev2/cpg;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cpg;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    const-string v4, "heightBasis"

    new-instance v5, Lcom/sunia/HTREnginev2/dpg;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/dpg;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    const-string v6, "scale"

    new-instance v7, Lcom/sunia/HTREnginev2/epg;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/epg;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    const-string v8, "indexToFontTable"

    new-instance v9, Lcom/sunia/HTREnginev2/fpg;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/fpg;-><init>(Lorg/apache/poi/hssf/record/chart/FontBasisRecord;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->FONT_BASIS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeightBasis()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    return p0
.end method

.method public getIndexToFontTable()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return p0
.end method

.method public getScale()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1060

    return p0
.end method

.method public getXBasis()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    return p0
.end method

.method public getYBasis()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setHeightBasis(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_3_heightBasis:S

    return-void
.end method

.method public setIndexToFontTable(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_5_indexToFontTable:S

    return-void
.end method

.method public setScale(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_4_scale:S

    return-void
.end method

.method public setXBasis(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_1_xBasis:S

    return-void
.end method

.method public setYBasis(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FontBasisRecord;->field_2_yBasis:S

    return-void
.end method
