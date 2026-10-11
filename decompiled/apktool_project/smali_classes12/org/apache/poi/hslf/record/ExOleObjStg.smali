.class public Lorg/apache/poi/hslf/record/ExOleObjStg;
.super Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/record/PersistRecord;


# static fields
.field private static final MAX_RECORD_LENGTH:I = 0x5f5e100


# instance fields
.field private _data:[B

.field private final _header:[B

.field private _persistId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 3
    iput-object v2, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    const/16 v2, 0x10

    .line 4
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjStg;->getRecordType()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 6
    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 8
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    add-int/lit8 p3, p3, -0x8

    const p2, 0x5f5e100

    .line 9
    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjStg;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    const/4 v2, 0x4

    array-length v3, p0

    invoke-direct {v1, p0, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance p0, Lorg/apache/commons/io/input/BoundedInputStream;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    int-to-long v0, v0

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjStg;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    array-length p0, p0

    return p0
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

    const-string v0, "compressed"

    new-instance v1, Lcom/sunia/HTREnginev2/ayf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ayf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V

    const-string v2, "persistId"

    new-instance v3, Lcom/sunia/HTREnginev2/byf;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/byf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V

    const-string v4, "dataLength"

    new-instance v5, Lcom/sunia/HTREnginev2/cyf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/cyf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V

    const-string v6, "data"

    new-instance v7, Lcom/sunia/HTREnginev2/dyf;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/dyf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjStg;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPersistId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_persistId:I

    return p0
.end method

.method public getRawData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    return-object p0
.end method

.method public getRecordInstance()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExOleObjStg:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public isCompressed()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setData([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x4

    :try_start_1
    new-array v3, v2, [B

    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    array-length v3, p1

    invoke-virtual {v1, p1, v5, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    array-length p1, p1

    invoke-static {p0, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public setPersistId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_persistId:I

    return-void
.end method

.method public updateOtherRecordReferences(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjStg;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
