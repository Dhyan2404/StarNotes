.class public final Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final LINK_TYPE_CATEGORIES:B = 0x2t

.field public static final LINK_TYPE_SECONDARY_CATEGORIES:B = 0x3t

.field public static final LINK_TYPE_TITLE_OR_TEXT:B = 0x0t

.field public static final LINK_TYPE_VALUES:B = 0x1t

.field public static final REFERENCE_TYPE_DEFAULT_CATEGORIES:B = 0x0t

.field public static final REFERENCE_TYPE_DIRECT:B = 0x1t

.field public static final REFERENCE_TYPE_ERROR_REPORTED:B = 0x4t

.field public static final REFERENCE_TYPE_NOT_USED:B = 0x3t

.field public static final REFERENCE_TYPE_WORKSHEET:B = 0x2t

.field private static final customNumberFormat:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1051s


# instance fields
.field private field_1_linkType:B

.field private field_2_referenceType:B

.field private field_3_options:S

.field private field_4_indexNumberFmtRecord:S

.field private field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

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

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 14
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    .line 4
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    .line 7
    iget-object p1, p1, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->copy()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->copy()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->copy()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public getFormulaOfLink()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "linkType"

    new-instance v1, Lcom/sunia/HTREnginev2/jzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jzi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v6

    const-string v7, "CATEGORIES"

    const-string v8, "SECONDARY_CATEGORIES"

    const-string v9, "TITLE_OR_TEXT"

    const-string v10, "VALUES"

    filled-new-array {v9, v10, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v6, "referenceType"

    new-instance v7, Lcom/sunia/HTREnginev2/kzi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/kzi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    const/4 v8, 0x4

    filled-new-array {v2, v3, v4, v5, v8}, [I

    move-result-object v2

    const-string v3, "NOT_USED"

    const-string v4, "ERROR_REPORTED"

    const-string v5, "DEFAULT_CATEGORIES"

    const-string v8, "DIRECT"

    const-string v9, "WORKSHEET"

    filled-new-array {v5, v8, v9, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v3

    const-string v4, "options"

    new-instance v5, Lcom/sunia/HTREnginev2/lzi;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/lzi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    const-string v7, "customNumberFormat"

    new-instance v8, Lcom/sunia/HTREnginev2/mzi;

    invoke-direct {v8, p0}, Lcom/sunia/HTREnginev2/mzi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    const-string v9, "indexNumberFmtRecord"

    new-instance v10, Lcom/sunia/HTREnginev2/nzi;

    invoke-direct {v10, p0}, Lcom/sunia/HTREnginev2/nzi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    const-string v11, "formulaOfLink"

    new-instance v12, Lcom/sunia/HTREnginev2/ozi;

    invoke-direct {v12, p0}, Lcom/sunia/HTREnginev2/ozi;-><init>(Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;)V

    move-object v2, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->LINKED_DATA:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getIndexNumberFmtRecord()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    return p0
.end method

.method public getLinkType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    return p0
.end method

.method public getReferenceType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1051

    return p0
.end method

.method public isCustomNumberFormat()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCustomNumberFormat(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->customNumberFormat:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    return-void
.end method

.method public setFormulaOfLink([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_5_formulaOfLink:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setIndexNumberFmtRecord(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_4_indexNumberFmtRecord:S

    return-void
.end method

.method public setLinkType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_1_linkType:B

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_3_options:S

    return-void
.end method

.method public setReferenceType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LinkedDataRecord;->field_2_referenceType:B

    return-void
.end method
