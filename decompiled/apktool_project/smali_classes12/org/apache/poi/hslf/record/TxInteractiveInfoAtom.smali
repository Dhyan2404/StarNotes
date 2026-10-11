.class public final Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# instance fields
.field private _data:[B

.field private _header:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->getRecordType()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

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

    iput-object p2, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 8
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

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

    new-instance v0, Lcom/sunia/HTREnginev2/oon;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/oon;-><init>(Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/pon;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pon;-><init>(Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;)V

    const-string p0, "startIndex"

    const-string v2, "endIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->TxInteractiveInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getStartIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public setEndIndex(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
