.class public final Lorg/apache/poi/hssf/record/chart/AxisParentRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final AXIS_TYPE_MAIN:S = 0x0s

.field public static final AXIS_TYPE_SECONDARY:S = 0x1s

.field public static final sid:S = 0x1041s


# instance fields
.field private field_1_axisType:S

.field private field_2_x:I

.field private field_3_y:I

.field private field_4_width:I

.field private field_5_height:I


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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    .line 7
    iget p1, p1, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->copy()Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/AxisParentRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    return-object v0
.end method

.method public getAxisType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

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

    const-string v0, "axisType"

    new-instance v1, Lcom/sunia/HTREnginev2/bl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bl;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    const-string v2, "x"

    new-instance v3, Lcom/sunia/HTREnginev2/cl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cl;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    const-string v4, "y"

    new-instance v5, Lcom/sunia/HTREnginev2/dl;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/dl;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    const-string v6, "width"

    new-instance v7, Lcom/sunia/HTREnginev2/el;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/el;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    const-string v8, "height"

    new-instance v9, Lcom/sunia/HTREnginev2/fl;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/fl;-><init>(Lorg/apache/poi/hssf/record/chart/AxisParentRecord;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->AXIS_PARENT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1041

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    return p0
.end method

.method public getX()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    return p0
.end method

.method public getY()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setAxisType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_1_axisType:S

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_5_height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_4_width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_2_x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisParentRecord;->field_3_y:I

    return-void
.end method
