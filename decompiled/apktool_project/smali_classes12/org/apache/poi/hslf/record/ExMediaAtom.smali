.class public final Lorg/apache/poi/hslf/record/ExMediaAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final FLAG_MASKS:[I

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field public static final fLoop:I = 0x1

.field public static final fNarration:I = 0x4

.field public static final fRewind:I = 0x2


# instance fields
.field private _header:[B

.field private _recdata:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/ExMediaAtom;->FLAG_MASKS:[I

    const-string v0, "REWIND"

    const-string v1, "NARRATION"

    const-string v2, "LOOP"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/ExMediaAtom;->FLAG_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_header:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExMediaAtom;->getRecordType()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 7
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 8
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    return-void
.end method


# virtual methods
.method public getFlag(I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExMediaAtom;->getMask()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    new-instance v0, Lcom/sunia/HTREnginev2/qxf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qxf;-><init>(Lorg/apache/poi/hslf/record/ExMediaAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/rxf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rxf;-><init>(Lorg/apache/poi/hslf/record/ExMediaAtom;)V

    sget-object p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->FLAG_MASKS:[I

    sget-object v2, Lorg/apache/poi/hslf/record/ExMediaAtom;->FLAG_NAMES:[Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v1, "objectId"

    const-string v2, "flags"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMask()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getObjectId()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExMediaAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public setFlag(IZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExMediaAtom;->getMask()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ExMediaAtom;->setMask(I)V

    return-void
.end method

.method public setMask(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setObjectId(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExMediaAtom;->_recdata:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
