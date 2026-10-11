.class public Lorg/apache/poi/hwpf/model/NilPICFAndBinData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_SIZE:I = 0x186a0


# instance fields
.field private _binData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->fillFields([BI)V

    return-void
.end method


# virtual methods
.method public fillFields([BI)V
    .locals 6

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NilPICFAndBinData at offset {} cbHeader 0x{} != 0x44"

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    int-to-long v2, v0

    const v4, 0x186a0

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    int-to-long v2, v1

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    add-int/2addr v0, p2

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    return-void
.end method

.method public getBinData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    return-object p0
.end method

.method public serialize([BI)I
    .locals 3

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x44

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    add-int/lit8 p2, p2, 0x44

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    array-length p0, p0

    add-int/lit8 p0, p0, 0x44

    return p0
.end method

.method public serialize()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    array-length v1, v0

    const/16 v2, 0x44

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2
    array-length v0, v0

    add-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/NilPICFAndBinData;->_binData:[B

    array-length v0, p0

    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
