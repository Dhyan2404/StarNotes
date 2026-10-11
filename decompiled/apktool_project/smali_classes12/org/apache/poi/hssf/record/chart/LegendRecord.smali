.class public final Lorg/apache/poi/hssf/record/chart/LegendRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final SPACING_CLOSE:B = 0x0t

.field public static final SPACING_MEDIUM:B = 0x1t

.field public static final SPACING_OPEN:B = 0x2t

.field public static final TYPE_BOTTOM:B = 0x0t

.field public static final TYPE_CORNER:B = 0x1t

.field public static final TYPE_LEFT:B = 0x4t

.field public static final TYPE_RIGHT:B = 0x3t

.field public static final TYPE_TOP:B = 0x2t

.field public static final TYPE_UNDOCKED:B = 0x7t

.field private static final autoPosition:Lorg/apache/poi/util/BitField;

.field private static final autoSeries:Lorg/apache/poi/util/BitField;

.field private static final autoXPositioning:Lorg/apache/poi/util/BitField;

.field private static final autoYPositioning:Lorg/apache/poi/util/BitField;

.field private static final dataTable:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1015s

.field private static final vertical:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_xAxisUpperLeft:I

.field private field_2_yAxisUpperLeft:I

.field private field_3_xSize:I

.field private field_4_ySize:I

.field private field_5_type:B

.field private field_6_spacing:B

.field private field_7_options:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    .line 8
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    .line 9
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->copy()Lorg/apache/poi/hssf/record/chart/LegendRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->copy()Lorg/apache/poi/hssf/record/chart/LegendRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->copy()Lorg/apache/poi/hssf/record/chart/LegendRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/LegendRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "xAxisUpperLeft"

    new-instance v2, Lcom/sunia/HTREnginev2/qxi;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/qxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const-string v3, "yAxisUpperLeft"

    new-instance v4, Lcom/sunia/HTREnginev2/rxi;

    invoke-direct {v4, v0}, Lcom/sunia/HTREnginev2/rxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const-string v5, "xSize"

    new-instance v6, Lcom/sunia/HTREnginev2/sxi;

    invoke-direct {v6, v0}, Lcom/sunia/HTREnginev2/sxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const-string v7, "ySize"

    new-instance v8, Lcom/sunia/HTREnginev2/txi;

    invoke-direct {v8, v0}, Lcom/sunia/HTREnginev2/txi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const-string v9, "type"

    new-instance v10, Lcom/sunia/HTREnginev2/uxi;

    invoke-direct {v10, v0}, Lcom/sunia/HTREnginev2/uxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const/4 v11, 0x6

    new-array v12, v11, [I

    fill-array-data v12, :array_0

    const-string v13, "BOTTOM"

    const-string v14, "CORNER"

    const-string v15, "TOP"

    const-string v16, "RIGHT"

    const-string v17, "LEFT"

    const-string v18, "UNDOCKED"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v10

    const-string v12, "spacing"

    new-instance v13, Lcom/sunia/HTREnginev2/vxi;

    invoke-direct {v13, v0}, Lcom/sunia/HTREnginev2/vxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v11, 0x2

    move-object/from16 v17, v12

    filled-new-array {v14, v15, v11}, [I

    move-result-object v12

    const-string v11, "MEDIUM"

    const-string v15, "OPEN"

    const-string v14, "CLOSE"

    filled-new-array {v14, v11, v15}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v12, v11}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v11

    const-string v12, "options"

    new-instance v13, Lcom/sunia/HTREnginev2/wxi;

    invoke-direct {v13, v0}, Lcom/sunia/HTREnginev2/wxi;-><init>(Lorg/apache/poi/hssf/record/chart/LegendRecord;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/poi/util/BitField;

    sget-object v14, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    const/4 v15, 0x0

    aput-object v14, v0, v15

    sget-object v14, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    const/4 v15, 0x1

    aput-object v14, v0, v15

    sget-object v14, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    const/4 v15, 0x2

    aput-object v14, v0, v15

    const/4 v14, 0x3

    sget-object v15, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    aput-object v15, v0, v14

    const/4 v14, 0x4

    sget-object v15, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    aput-object v15, v0, v14

    const/4 v14, 0x5

    sget-object v15, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    aput-object v15, v0, v14

    const-string v18, "AUTO_POSITION"

    const-string v19, "AUTO_SERIES"

    const-string v20, "AUTO_X_POSITIONING"

    const-string v21, "AUTO_Y_POSITIONING"

    const-string v22, "VERTICAL"

    const-string v23, "DATA_TABLE"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v0, v14}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v13

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v17

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x7
    .end array-data
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->LEGEND:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1015

    return p0
.end method

.method public getSpacing()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    return p0
.end method

.method public getType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    return p0
.end method

.method public getXAxisUpperLeft()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    return p0
.end method

.method public getXSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    return p0
.end method

.method public getYAxisUpperLeft()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    return p0
.end method

.method public getYSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    return p0
.end method

.method public isAutoPosition()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutoSeries()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutoXPositioning()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutoYPositioning()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isDataTable()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isVertical()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutoPosition(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoSeries(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoXPositioning(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoYPositioning(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setDataTable(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setSpacing(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    return-void
.end method

.method public setType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    return-void
.end method

.method public setVertical(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setXAxisUpperLeft(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    return-void
.end method

.method public setXSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    return-void
.end method

.method public setYAxisUpperLeft(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    return-void
.end method

.method public setYSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    return-void
.end method
