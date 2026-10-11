.class public final Lorg/apache/poi/ddf/EscherBSERecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0

.field public static final RECORD_ID:S


# instance fields
.field private _remainingData:[B

.field private field_10_unused2:B

.field private field_11_unused3:B

.field private field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

.field private field_1_blipTypeWin32:B

.field private field_2_blipTypeMacOS:B

.field private final field_3_uid:[B

.field private field_4_tag:S

.field private field_5_size:I

.field private field_6_ref:I

.field private field_7_offset:I

.field private field_8_usage:B

.field private field_9_name:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSE:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherBSERecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 4
    sget-short v0, Lorg/apache/poi/ddf/EscherBSERecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherBSERecord;)V
    .locals 4

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;-><init>(Lorg/apache/poi/ddf/EscherRecord;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 6
    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 7
    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 8
    iget-byte v2, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    .line 9
    iget-byte v2, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    .line 10
    iget-object v2, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    array-length v3, v0

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-short v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    iput-short v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    .line 12
    iget v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    .line 13
    iget v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    .line 14
    iget v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    .line 15
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    .line 16
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    .line 17
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    .line 18
    iget-byte v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    .line 19
    iget-object v0, p1, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->copy()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 20
    iget-object p1, p1, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/ddf/EscherBSERecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/ddf/EscherBSERecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->copy()Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->copy()Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    return-object p0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result v0

    add-int/lit8 p2, p2, 0x8

    aget-byte v1, p1, p2

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    add-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p2, 0x12

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    add-int/lit8 v1, p2, 0x14

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    add-int/lit8 v1, p2, 0x20

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    add-int/lit8 v1, p2, 0x21

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    add-int/lit8 v1, p2, 0x22

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    add-int/lit8 v1, p2, 0x23

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    add-int/lit8 v0, v0, -0x24

    if-lez v0, :cond_1

    add-int/lit8 v1, p2, 0x24

    invoke-interface {p3, p1, v1}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    instance-of v3, v2, Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/ddf/EscherBlipRecord;

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v2, p1, v1, p3}, Lorg/apache/poi/ddf/EscherBlipRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result p3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Did not have a EscherBlipRecord: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move p3, v4

    :goto_0
    add-int/lit8 v1, p3, 0x24

    add-int/2addr p2, v1

    sub-int/2addr v0, p3

    sget p3, Lorg/apache/poi/ddf/EscherBSERecord;->MAX_RECORD_LENGTH:I

    invoke-static {p1, p2, v0, p3}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x24

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    return v0
.end method

.method public getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-object p0
.end method

.method public getBlipTypeMacOS()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return p0
.end method

.method public getBlipTypeWin32()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/sunia/HTREnginev2/bsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "blipTypeWin32"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/msf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/msf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "pictureTypeWin32"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "blipTypeMacOS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/osf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/osf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "pictureTypeMacOS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/psf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/psf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "suid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/csf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/csf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "tag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/esf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/esf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "ref"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "usage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/isf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/isf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "unused2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "unused3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ksf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ksf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string v2, "blipRecord"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lsf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lsf;-><init>(Lorg/apache/poi/ddf/EscherBSERecord;)V

    const-string p0, "remainingData"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSE:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getName()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return p0
.end method

.method public getPictureTypeMacOS()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->forNativeID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    return-object p0
.end method

.method public getPictureTypeWin32()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->forNativeID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object p0

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSE:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-eqz p0, :cond_1

    array-length v1, p0

    :cond_1
    add-int/lit8 v0, v0, 0x2c

    add-int/2addr v0, v1

    return v0
.end method

.method public getRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return p0
.end method

.method public getRemainingData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return p0
.end method

.method public getTag()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return p0
.end method

.method public getUid()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    return-object p0
.end method

.method public getUnused2()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return p0
.end method

.method public getUnused3()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return p0
.end method

.method public getUsage()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return p0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x24

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    aput-byte v2, p2, v0

    add-int/lit8 v2, p1, 0x9

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    aput-byte v3, p2, v2

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    add-int/lit8 v3, p1, 0xa

    const/16 v4, 0x10

    invoke-static {v2, v1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1a

    iget-short v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {p2, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x1c

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {p2, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, p1, 0x20

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {p2, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, p1, 0x24

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {p2, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, p1, 0x28

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    aput-byte v3, p2, v2

    add-int/lit8 v2, p1, 0x29

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    aput-byte v3, p2, v2

    add-int/lit8 v2, p1, 0x2a

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    aput-byte v3, p2, v2

    add-int/lit8 v2, p1, 0x2b

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    aput-byte v3, p2, v2

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v2, :cond_2

    add-int/lit8 v3, p1, 0x2c

    new-instance v4, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v4}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v2, v3, p2, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    add-int/lit8 v4, p1, 0x2c

    add-int/2addr v4, v2

    array-length v5, v3

    invoke-static {v3, v1, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x24

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length p2, p2

    add-int/2addr v0, p2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v0, p1

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-void
.end method

.method public setBlipTypeMacOS(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return-void
.end method

.method public setBlipTypeWin32(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    return-void
.end method

.method public setName(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return-void
.end method

.method public setRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return-void
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return-void
.end method

.method public setTag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return-void
.end method

.method public setUid([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uid must be byte[16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUnused2(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return-void
.end method

.method public setUnused3(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return-void
.end method

.method public setUsage(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return-void
.end method
