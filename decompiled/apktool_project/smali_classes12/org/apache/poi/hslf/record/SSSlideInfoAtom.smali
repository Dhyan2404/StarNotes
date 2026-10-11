.class public Lorg/apache/poi/hslf/record/SSSlideInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AUTO_ADVANCE_BIT:I = 0x400

.field public static final CURSOR_VISIBLE_BIT:I = 0x1000

.field private static final EFFECT_MASKS:[I

.field private static final EFFECT_NAMES:[Ljava/lang/String;

.field public static final HIDDEN_BIT:I = 0x4

.field public static final LOOP_SOUND_BIT:I = 0x40

.field public static final MANUAL_ADVANCE_BIT:I = 0x1

.field public static final SOUND_BIT:I = 0x10

.field public static final STOP_SOUND_BIT:I = 0x100

.field private static final _type:J


# instance fields
.field private _effectDirection:S

.field private _effectTransitionFlags:S

.field private _effectType:S

.field private final _header:[B

.field private _slideTime:I

.field private _soundIdRef:I

.field private _speed:S

.field private final _unused:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->EFFECT_MASKS:[I

    const-string v1, "MANUAL_ADVANCE"

    const-string v2, "HIDDEN"

    const-string v3, "SOUND"

    const-string v4, "LOOP_SOUND"

    const-string v5, "STOP_SOUND"

    const-string v6, "AUTO_ADVANCE"

    const-string v7, "CURSOR_VISIBLE"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->EFFECT_NAMES:[Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->SSSlideInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_type:J

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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_header:[B

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 4
    sget-wide v2, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_type:J

    long-to-int v2, v2

    int-to-short v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v2, 0x4

    const/16 v3, 0x10

    .line 5
    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v2, 0x6

    .line 6
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_unused:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x18

    if-eq p3, v0, :cond_0

    move p3, v0

    .line 9
    :cond_0
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_7

    add-int/lit8 p3, p2, 0x8

    .line 10
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    iput-object p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_header:[B

    .line 11
    array-length v0, p3

    add-int/2addr p2, v0

    const/4 v0, 0x0

    .line 12
    invoke-static {p3, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data for SSSlideInfoAtom at offset 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    .line 14
    invoke-static {p3, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->SSSlideInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    if-eq v1, v2, :cond_2

    .line 15
    sget-object v1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data for SSSlideInfoAtom at offset 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x4

    .line 16
    invoke-static {p3, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    .line 17
    sget-object v2, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data for SSSlideInfoAtom at offset 4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x6

    .line 18
    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    if-nez v3, :cond_4

    .line 19
    sget-object v3, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data for SSSlideInfoAtom at offset 6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, p3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_slideTime:I

    if-ltz p3, :cond_5

    const v2, 0x5265818

    if-le p3, v2, :cond_6

    .line 21
    :cond_5
    sget-object p3, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p3}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data for SSSlideInfoAtom - invalid slideTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_slideTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_6
    add-int/2addr p2, v1

    .line 22
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_soundIdRef:I

    add-int/2addr p2, v1

    .line 23
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p3

    iput-short p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectDirection:S

    add-int/lit8 p2, p2, 0x1

    .line 24
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p3

    iput-short p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectType:S

    add-int/lit8 p2, p2, 0x1

    .line 25
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p3

    iput-short p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    add-int/2addr p2, v0

    .line 26
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p3

    iput-short p3, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_speed:S

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p2, 0x3

    .line 27
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_unused:[B

    return-void

    .line 28
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need at least "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes with offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and array-size "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEffectDirection()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectDirection:S

    return p0
.end method

.method public getEffectTransitionFlagByBit(I)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEffectTransitionFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    return p0
.end method

.method public getEffectType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectType:S

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

    const-string v0, "effectTransitionFlags"

    new-instance v1, Lcom/sunia/HTREnginev2/yzl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yzl;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    sget-object v2, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->EFFECT_MASKS:[I

    sget-object v3, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->EFFECT_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "slideTime"

    new-instance v3, Lcom/sunia/HTREnginev2/zzl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/zzl;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    const-string v4, "soundIdRef"

    new-instance v5, Lcom/sunia/HTREnginev2/a0m;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/a0m;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    const-string v6, "effectDirection"

    new-instance v7, Lcom/sunia/HTREnginev2/b0m;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/b0m;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    const-string v8, "effectType"

    new-instance v9, Lcom/sunia/HTREnginev2/c0m;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/c0m;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    const-string v10, "speed"

    new-instance v11, Lcom/sunia/HTREnginev2/d0m;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/d0m;-><init>(Lorg/apache/poi/hslf/record/SSSlideInfoAtom;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_type:J

    return-wide v0
.end method

.method public getSlideTime()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_slideTime:I

    return p0
.end method

.method public getSoundIdRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_soundIdRef:I

    return p0
.end method

.method public getSpeed()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_speed:S

    return p0
.end method

.method public setEffectDirection(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectDirection:S

    return-void
.end method

.method public setEffectTransitionFlagByBit(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-short p2, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    or-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    goto :goto_0

    :cond_0
    iget-short p2, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    const v0, 0xffff

    xor-int/2addr p1, v0

    and-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    :goto_0
    return-void
.end method

.method public setEffectTransitionFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    return-void
.end method

.method public setEffectType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectType:S

    return-void
.end method

.method public setSlideTime(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_slideTime:I

    return-void
.end method

.method public setSoundIdRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_soundIdRef:I

    return-void
.end method

.method public setSpeed(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_speed:S

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_slideTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_soundIdRef:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-short v1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectDirection:S

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-short v1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectType:S

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-short v1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_effectTransitionFlags:S

    invoke-static {v1, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget-short v1, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_speed:S

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SSSlideInfoAtom;->_unused:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
