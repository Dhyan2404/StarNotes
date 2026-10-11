.class public final Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x854s


# instance fields
.field private grbitFrt:S

.field private iObjectContext:S

.field private iObjectInstance1:S

.field private iObjectInstance2:S

.field private iObjectKind:S

.field private rt:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->rt:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->grbitFrt:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectKind:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectContext:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance1:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance2:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->rt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->rt:S

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->grbitFrt:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->grbitFrt:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectKind:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectKind:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectContext:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectContext:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance1:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance1:S

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance2:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance2:S

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->rt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->grbitFrt:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectKind:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectContext:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance1:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance2:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->copy()Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    return-object v0
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

    const-string v0, "rt"

    new-instance v1, Lcom/sunia/HTREnginev2/vsd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vsd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    const-string v2, "grbitFrt"

    new-instance v3, Lcom/sunia/HTREnginev2/wsd;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/wsd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    const-string v4, "iObjectKind"

    new-instance v5, Lcom/sunia/HTREnginev2/xsd;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/xsd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    const-string v6, "iObjectContext"

    new-instance v7, Lcom/sunia/HTREnginev2/ysd;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/ysd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    const-string v8, "iObjectInstance1"

    new-instance v9, Lcom/sunia/HTREnginev2/zsd;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/zsd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    const-string v10, "iObjectInstance2"

    new-instance v11, Lcom/sunia/HTREnginev2/atd;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/atd;-><init>(Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CHART_START_OBJECT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x854

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectContext:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartObjectRecord;->iObjectInstance2:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
