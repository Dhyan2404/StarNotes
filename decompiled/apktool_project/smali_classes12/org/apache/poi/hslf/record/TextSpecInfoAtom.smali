.class public final Lorg/apache/poi/hslf/record/TextSpecInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _type:J


# instance fields
.field private _data:[B

.field private final _header:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->TextSpecInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_header:[B

    const/4 v1, 0x4

    .line 3
    sget-wide v2, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_type:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->reset(I)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 6
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 7
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    return-void
.end method


# virtual methods
.method public getCharactersCovered()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->getTextSpecInfoRuns()[Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
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

    new-instance v0, Lcom/sunia/HTREnginev2/gfn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/hfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoAtom;)V

    const-string p0, "charactersCovered"

    const-string v2, "textSpecInfoRuns"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_type:J

    return-wide v0
.end method

.method public getTextSpecInfoRuns()[Lorg/apache/poi/hslf/record/TextSpecInfoRun;
    .locals 4

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->getReadIndex()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    invoke-direct {v2, v0}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;-><init>(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    return-object p0
.end method

.method public reset(I)V
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;-><init>(I)V

    new-instance p1, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->writeOut(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_header:[B

    const/4 v0, 0x4

    array-length p1, p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setParentSize(I)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->getTextSpecInfoRuns()[Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->getLength()I

    move-result v6

    if-gt v6, p1, :cond_0

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_1

    :cond_0
    invoke-virtual {v5, p1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->setLength(I)V

    move v6, p1

    :cond_1
    sub-int/2addr p1, v6

    invoke-virtual {v5, v0}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->writeOut(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_header:[B

    array-length p1, p1

    const/4 v1, 0x4

    invoke-static {p0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

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
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setTextSize(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

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

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
