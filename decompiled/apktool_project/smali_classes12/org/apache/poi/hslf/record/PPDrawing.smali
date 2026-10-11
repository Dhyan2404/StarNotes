.class public final Lorg/apache/poi/hslf/record/PPDrawing;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/record/RecordAtom;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ddf/EscherRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final _header:[B

.field private _type:J

.field private dg:Lorg/apache/poi/ddf/EscherDgRecord;

.field private final dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_header:[B

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 5
    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->PPDrawing:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    new-array v0, v2, [Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    .line 7
    iput-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->create()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    .line 10
    new-instance p3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p3}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    add-int/lit8 v0, p2, 0x8

    .line 11
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_header:[B

    const/4 v1, 0x2

    .line 12
    invoke-static {p2, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_type:J

    .line 13
    new-instance p2, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;

    invoke-direct {p2}, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;-><init>()V

    .line 14
    invoke-virtual {p3, p1, v0, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 15
    invoke-virtual {p3}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    sget-object p2, Lorg/apache/poi/ddf/EscherRecordTypes;->DG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short p2, p2, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    if-ne p1, p2, :cond_0

    .line 16
    sget-object p1, Lorg/apache/poi/ddf/EscherRecordTypes;->DG:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short p1, p1, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-virtual {p3, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherDgRecord;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dg:Lorg/apache/poi/ddf/EscherDgRecord;

    .line 17
    invoke-static {p3}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    .line 18
    invoke-static {p2}, Lorg/apache/poi/hslf/record/PPDrawing;->findEscherContainer(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Function;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ddf/EscherRecordTypes;->SP_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    .line 19
    invoke-static {p2}, Lorg/apache/poi/hslf/record/PPDrawing;->findEscherContainer(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Function;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/vkk;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/vkk;-><init>()V

    .line 20
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/wkk;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/wkk;-><init>()V

    .line 21
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected record type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/RecordTypes;Lorg/apache/poi/hslf/record/Record;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$sameHSLF$3(Lorg/apache/poi/hslf/record/RecordTypes;Lorg/apache/poi/hslf/record/Record;)Z

    move-result p0

    return p0
.end method

.method private create()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->DG_CONTAINER:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dg:Lorg/apache/poi/ddf/EscherDgRecord;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dg:Lorg/apache/poi/ddf/EscherDgRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    iget-object v3, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dg:Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    sget-short v3, Lorg/apache/poi/ddf/EscherContainerRecord;->SPGR_CONTAINER:S

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {v3, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    sget-short v4, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v5, Lorg/apache/poi/ddf/EscherSpgrRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/EscherSpgrRecord;-><init>()V

    invoke-virtual {v5, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    sget-object v5, Lorg/apache/poi/sl/usermodel/ShapeType;->NOT_PRIMITIVE:Lorg/apache/poi/sl/usermodel/ShapeType;

    iget v5, v5, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    iget-object v2, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v1, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    sget-object v2, Lorg/apache/poi/sl/usermodel/ShapeType;->RECT:Lorg/apache/poi/sl/usermodel/ShapeType;

    iget v2, v2, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/16 v2, 0xc00

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v1, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    sget-short v2, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v2, Lorg/apache/poi/ddf/EscherRGBProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v4, 0x8000000

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherRGBProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v4, 0x8000005

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__RECTRIGHT:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v4, 0x99936e

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__RECTBOTTOM:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v4, 0x76b1be

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherBoolProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v4, 0x120012

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherBoolProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v4, 0x80000

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHAPE__BLACKANDWHITESETTINGS:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHAPE__BACKGROUNDSHAPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v4, 0x10001

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    return-void
.end method

.method public static synthetic d(Lorg/apache/poi/ddf/EscherRecord;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$firstEscherRecord$5(Lorg/apache/poi/ddf/EscherRecord;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$findEscherContainer$6(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static findEscherContainer(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ")",
            "Ljava/util/function/Function<",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mkk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mkk;-><init>(Lorg/apache/poi/ddf/EscherRecordTypes;)V

    return-object v0
.end method

.method private static findInProgBinaryTag(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/record/Record;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/poi/hslf/record/StyleTextProp9Atom;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Record;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    instance-of v1, v0, Lorg/apache/poi/hslf/record/CString;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v2, p0, v1

    instance-of v2, v2, Lorg/apache/poi/hslf/record/BinaryTagDataBlob;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/apache/poi/hslf/record/CString;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "___PPT9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object p0, p0, v1

    check-cast p0, Lorg/apache/poi/hslf/record/BinaryTagDataBlob;

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->StyleTextProp9Atom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static findInSpContainer(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/apache/poi/hslf/record/StyleTextProp9Atom;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/record/PPDrawing;->firstEscherRecord(Ljava/lang/Iterable;Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/pkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pkk;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/dyo;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dyo;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/sym;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sym;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ProgTags:Lorg/apache/poi/hslf/record/RecordTypes;

    invoke-static {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->sameHSLF(Lorg/apache/poi/hslf/record/RecordTypes;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/qkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qkk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->ProgBinaryTag:Lorg/apache/poi/hslf/record/RecordTypes;

    invoke-static {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->sameHSLF(Lorg/apache/poi/hslf/record/RecordTypes;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/rkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rkk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static firstEscherRecord(Ljava/lang/Iterable;Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ")",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/poi/hslf/record/PPDrawing;->sameEscher(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/okk;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/okk;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getTextboxHelper(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static getTextboxHelper(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lorg/apache/poi/hslf/record/EscherTextboxWrapper;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/record/PPDrawing;->firstEscherRecord(Ljava/lang/Iterable;Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v1, v0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;-><init>(Lorg/apache/poi/ddf/EscherTextboxRecord;)V

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->findInSpContainer(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/xkk;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/xkk;-><init>(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/record/PPDrawing;->firstEscherRecord(Ljava/lang/Iterable;Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ykk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ykk;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/zkk;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/zkk;-><init>(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$getNumberedListInfo$2(I)[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$sameEscher$4(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->findInProgBinaryTag(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$findInSpContainer$1(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->findInSpContainer(Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findEscherContainer$6(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherContainerRecord;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildContainers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->sameEscher(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findInSpContainer$1(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Record;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$firstEscherRecord$5(Lorg/apache/poi/ddf/EscherRecord;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$getNumberedListInfo$2(I)[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-object p0
.end method

.method private static synthetic lambda$sameEscher$4(Lorg/apache/poi/ddf/EscherRecordTypes;Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$sameHSLF$3(Lorg/apache/poi/hslf/record/RecordTypes;Lorg/apache/poi/hslf/record/Record;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(I)[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->lambda$new$0(I)[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object p0

    return-object p0
.end method

.method private static sameEscher(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/alk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/alk;-><init>(Lorg/apache/poi/ddf/EscherRecordTypes;)V

    return-object v0
.end method

.method private static sameHSLF(Lorg/apache/poi/hslf/record/RecordTypes;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/record/RecordTypes;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/nkk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nkk;-><init>(Lorg/apache/poi/hslf/record/RecordTypes;)V

    return-object v0
.end method


# virtual methods
.method public addTextboxWrapper(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    array-length v0, v0

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-void
.end method

.method public getChildRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDgContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object p0
.end method

.method public getEscherDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dg:Lorg/apache/poi/ddf/EscherDgRecord;

    return-object p0
.end method

.method public getEscherRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

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

    new-instance v0, Lcom/sunia/HTREnginev2/lkk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lkk;-><init>(Lorg/apache/poi/hslf/record/PPDrawing;)V

    const-string p0, "escherRecords"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumberedListInfo()[Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->findEscherContainer(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {v0}, Lorg/apache/poi/hslf/record/PPDrawing;->findEscherContainer(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/kkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kkk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/skk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/skk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/tkk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tkk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ukk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ukk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_type:J

    return-wide v0
.end method

.method public getTextboxWrappers()[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getEscherRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getEscherRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->textboxWrappers:[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->writeOut(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordSize()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_header:[B

    const/4 v3, 0x4

    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/PPDrawing;->_header:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawing;->dgContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p0, v2, v0}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[B)I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
