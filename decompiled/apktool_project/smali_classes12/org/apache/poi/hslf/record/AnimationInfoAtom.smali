.class public final Lorg/apache/poi/hslf/record/AnimationInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field public static final AnimateBg:I = 0x4000

.field public static final Automatic:I = 0x4

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field public static final Hide:I = 0x1000

.field public static final Play:I = 0x100

.field public static final Reverse:I = 0x1

.field public static final Sound:I = 0x10

.field public static final StopSound:I = 0x40

.field public static final Synchronous:I = 0x400


# instance fields
.field private final _header:[B

.field private final _recdata:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->FLAGS_MASKS:[I

    const-string v1, "REVERSE"

    const-string v2, "AUTOMATIC"

    const-string v3, "SOUND"

    const-string v4, "STOP_SOUND"

    const-string v5, "PLAY"

    const-string v6, "SYNCHRONOUS"

    const-string v7, "HIDE"

    const-string v8, "ANIMATE_BG"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->FLAGS_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x10
        0x40
        0x100
        0x400
        0x1000
        0x4000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_header:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getRecordType()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-short p0, p0

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 p0, 0x4

    .line 6
    array-length v0, v0

    invoke-static {v1, p0, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 8
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 9
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    return-void
.end method


# virtual methods
.method public getDelayTime()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getDimColor()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getFlag(I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getMask()I

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

    const-string v0, "dimColor"

    new-instance v1, Lcom/sunia/HTREnginev2/ya;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ya;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    const-string v2, "flags"

    new-instance v3, Lcom/sunia/HTREnginev2/za;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/za;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    sget-object v4, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->FLAGS_MASKS:[I

    sget-object v5, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v3

    const-string v4, "soundIdRef"

    new-instance v5, Lcom/sunia/HTREnginev2/ab;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ab;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    const-string v6, "delayTime"

    new-instance v7, Lcom/sunia/HTREnginev2/bb;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/bb;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    const-string v8, "orderID"

    new-instance v9, Lcom/sunia/HTREnginev2/cb;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/cb;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    const-string v10, "slideCount"

    new-instance v11, Lcom/sunia/HTREnginev2/db;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/db;-><init>(Lorg/apache/poi/hslf/record/AnimationInfoAtom;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMask()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getOrderID()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->AnimationInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getSlideCount()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x12

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getSoundIdRef()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public setDelayTime(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setDimColor(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setFlag(IZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getMask()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->setMask(I)V

    return-void
.end method

.method public setMask(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setOrderID(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x10

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setSlideCount(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x12

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setSoundIdRef(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getMask()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimationInfoAtom\n\tDimColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getDimColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Reverse: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Automatic: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Sound: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  StopSound: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Play: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Synchronous: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  Hide: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\t  AnimateBg: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getFlag(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\tSoundIdRef: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getSoundIdRef()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\tDelayTime: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getDelayTime()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\tOrderID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getOrderID()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n\tSlideCount: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->getSlideCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/AnimationInfoAtom;->_recdata:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
