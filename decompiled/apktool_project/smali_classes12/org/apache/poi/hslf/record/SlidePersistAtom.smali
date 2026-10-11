.class public final Lorg/apache/poi/hslf/record/SlidePersistAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final HAS_SHAPES_OTHER_THAN_PLACEHOLDERS:I = 0x4

.field private static final MAX_RECORD_LENGTH:I = 0x20

.field private static final _type:J = 0x3f3L


# instance fields
.field private final _header:[B

.field private flags:I

.field private numPlaceholderTexts:I

.field private refID:I

.field private reservedFields:[B

.field private slideIdentifier:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->FLAGS_MASKS:[I

    const-string v0, "HAS_SHAPES_OTHER_THAN_PLACEHOLDERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->_header:[B

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x2

    const/16 v2, 0x3f3

    .line 11
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0x14

    const/4 v2, 0x4

    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 13
    iput v2, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->flags:I

    new-array v0, v2, [B

    .line 14
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->reservedFields:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->_header:[B

    .line 3
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->refID:I

    add-int/lit8 v0, p2, 0xc

    .line 4
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->flags:I

    add-int/lit8 v0, p2, 0x10

    .line 5
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->numPlaceholderTexts:I

    add-int/lit8 v0, p2, 0x14

    .line 6
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->slideIdentifier:I

    add-int/lit8 p2, p2, 0x18

    add-int/lit8 p3, p3, -0x18

    const/16 v0, 0x20

    .line 7
    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->reservedFields:[B

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/SlidePersistAtom;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/SlidePersistAtom;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    const-string v0, "refID"

    new-instance v1, Lcom/sunia/HTREnginev2/ttm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ttm;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V

    const-string v2, "flags"

    new-instance v3, Lcom/sunia/HTREnginev2/utm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/utm;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V

    sget-object v4, Lorg/apache/poi/hslf/record/SlidePersistAtom;->FLAGS_MASKS:[I

    sget-object v5, Lorg/apache/poi/hslf/record/SlidePersistAtom;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v3

    const-string v4, "numPlaceholderTexts"

    new-instance v5, Lcom/sunia/HTREnginev2/vtm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/vtm;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V

    const-string v6, "slideIdentifier"

    new-instance v7, Lcom/sunia/HTREnginev2/wtm;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/wtm;-><init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHasShapesOtherThanPlaceholders()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNumPlaceholderTexts()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->numPlaceholderTexts:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    const-wide/16 v0, 0x3f3

    return-wide v0
.end method

.method public getRefID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->refID:I

    return p0
.end method

.method public getSlideIdentifier()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->slideIdentifier:I

    return p0
.end method

.method public setRefID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->refID:I

    return-void
.end method

.method public setSlideIdentifier(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->slideIdentifier:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->refID:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->flags:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->numPlaceholderTexts:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->slideIdentifier:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlidePersistAtom;->reservedFields:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
