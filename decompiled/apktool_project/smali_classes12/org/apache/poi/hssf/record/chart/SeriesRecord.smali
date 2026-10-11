.class public final Lorg/apache/poi/hssf/record/chart/SeriesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final BUBBLE_SERIES_TYPE_DATES:S = 0x0s

.field public static final BUBBLE_SERIES_TYPE_NUMERIC:S = 0x1s

.field public static final BUBBLE_SERIES_TYPE_SEQUENCE:S = 0x2s

.field public static final BUBBLE_SERIES_TYPE_TEXT:S = 0x3s

.field public static final CATEGORY_DATA_TYPE_DATES:S = 0x0s

.field public static final CATEGORY_DATA_TYPE_NUMERIC:S = 0x1s

.field public static final CATEGORY_DATA_TYPE_SEQUENCE:S = 0x2s

.field public static final CATEGORY_DATA_TYPE_TEXT:S = 0x3s

.field public static final VALUES_DATA_TYPE_DATES:S = 0x0s

.field public static final VALUES_DATA_TYPE_NUMERIC:S = 0x1s

.field public static final VALUES_DATA_TYPE_SEQUENCE:S = 0x2s

.field public static final VALUES_DATA_TYPE_TEXT:S = 0x3s

.field public static final sid:S = 0x1003s


# instance fields
.field private field_1_categoryDataType:S

.field private field_2_valuesDataType:S

.field private field_3_numCategories:S

.field private field_4_numValues:S

.field private field_5_bubbleSeriesType:S

.field private field_6_numBubbleValues:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    .line 8
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->copy()Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/SeriesRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    return-object v0
.end method

.method public getBubbleSeriesType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    return p0
.end method

.method public getCategoryDataType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xc

    return p0
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

    const-string v0, "categoryDataType"

    new-instance v1, Lcom/sunia/HTREnginev2/khm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/khm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    const-string v2, "valuesDataType"

    new-instance v3, Lcom/sunia/HTREnginev2/lhm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/lhm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    const-string v4, "numCategories"

    new-instance v5, Lcom/sunia/HTREnginev2/mhm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/mhm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    const-string v6, "numValues"

    new-instance v7, Lcom/sunia/HTREnginev2/nhm;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/nhm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    const-string v8, "bubbleSeriesType"

    new-instance v9, Lcom/sunia/HTREnginev2/ohm;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/ohm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    const-string v10, "numBubbleValues"

    new-instance v11, Lcom/sunia/HTREnginev2/phm;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/phm;-><init>(Lorg/apache/poi/hssf/record/chart/SeriesRecord;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SERIES:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumBubbleValues()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    return p0
.end method

.method public getNumCategories()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    return p0
.end method

.method public getNumValues()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1003

    return p0
.end method

.method public getValuesDataType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBubbleSeriesType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_5_bubbleSeriesType:S

    return-void
.end method

.method public setCategoryDataType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_1_categoryDataType:S

    return-void
.end method

.method public setNumBubbleValues(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_6_numBubbleValues:S

    return-void
.end method

.method public setNumCategories(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_3_numCategories:S

    return-void
.end method

.method public setNumValues(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_4_numValues:S

    return-void
.end method

.method public setValuesDataType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesRecord;->field_2_valuesDataType:S

    return-void
.end method
