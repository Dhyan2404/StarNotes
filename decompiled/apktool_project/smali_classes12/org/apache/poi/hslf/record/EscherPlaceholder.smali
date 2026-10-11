.class public Lorg/apache/poi/hslf/record/EscherPlaceholder;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtClientTextboxPlaceholder"

.field public static final RECORD_ID:S


# instance fields
.field private placementId:B

.field private position:I

.field private size:B

.field private unused:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->OEPlaceholderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    iput v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hslf/record/EscherPlaceholder;->placementId:B

    iput-byte v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->placementId:B

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hslf/record/EscherPlaceholder;->size:B

    iput-byte v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->size:B

    .line 8
    iget-short p1, p1, Lorg/apache/poi/hslf/record/EscherPlaceholder;->unused:S

    iput-short p1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->unused:S

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/record/EscherPlaceholder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->copy()Lorg/apache/poi/hslf/record/EscherPlaceholder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->copy()Lorg/apache/poi/hslf/record/EscherPlaceholder;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/record/EscherPlaceholder;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/record/EscherPlaceholder;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;-><init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    add-int/lit8 v0, p2, 0xc

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->placementId:B

    add-int/lit8 v0, p2, 0xd

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->size:B

    add-int/lit8 p2, p2, 0xe

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->unused:S

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "base"

    new-instance v1, Lcom/sunia/HTREnginev2/puf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/puf;-><init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V

    const-string v2, "position"

    new-instance v3, Lcom/sunia/HTREnginev2/quf;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/quf;-><init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V

    const-string v4, "placementId"

    new-instance v5, Lcom/sunia/HTREnginev2/ruf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ruf;-><init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V

    const-string v6, "size"

    new-instance v7, Lcom/sunia/HTREnginev2/suf;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/suf;-><init>(Lorg/apache/poi/hslf/record/EscherPlaceholder;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->OEPlaceholderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    return-object p0
.end method

.method public getPlacementId()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->placementId:B

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "ClientTextboxPlaceholder"

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getSize()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->size:B

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->position:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget-byte v1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->placementId:B

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    add-int/lit8 v0, p1, 0xd

    iget-byte v1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->size:B

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    add-int/lit8 v0, p1, 0xe

    iget-short v1, p0, Lorg/apache/poi/hslf/record/EscherPlaceholder;->unused:S

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->getRecordSize()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherPlaceholder;->getRecordSize()I

    move-result p0

    return p0
.end method
