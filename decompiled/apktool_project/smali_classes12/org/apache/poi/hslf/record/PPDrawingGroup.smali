.class public final Lorg/apache/poi/hslf/record/PPDrawingGroup;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final MAX_RECORD_LENGTH:I = 0xa00000


# instance fields
.field private final _header:[B

.field private dgg:Lorg/apache/poi/ddf/EscherDggRecord;

.field private final dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->_header:[B

    const/high16 v0, 0xa00000

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;

    invoke-direct {p2}, Lorg/apache/poi/hslf/record/HSLFEscherRecordFactory;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {v0, p3}, Lorg/apache/poi/ddf/EscherRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-void
.end method


# virtual methods
.method public getChildRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object p0
.end method

.method public getEscherDggRecord()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    instance-of v2, v1, Lorg/apache/poi/ddf/EscherDggRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/ddf/EscherDggRecord;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

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

    new-instance v0, Lcom/sunia/HTREnginev2/blk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/blk;-><init>(Lorg/apache/poi/hslf/record/PPDrawingGroup;)V

    const-string p0, "dggContainer"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->PPDrawingGroup:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x2c

    new-array v2, v2, [B

    new-instance v3, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v4, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v5, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v10

    sget-short v11, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    if-ne v10, v11, :cond_1

    check-cast v6, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v4}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->reset()V

    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherContainerRecord;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v11, v8, v2}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[B)I

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v10

    invoke-static {v1, v8, v10}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v6

    invoke-static {v1, v7, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {v4}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v1, v9, v6}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4, v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->_header:[B

    add-int/lit8 v5, v1, 0x8

    invoke-static {v2, v9, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v2, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->_header:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v2

    invoke-static {v0, v8, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/PPDrawingGroup;->dggContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p0

    invoke-static {v0, v7, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-static {v0, v9, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

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
    invoke-virtual {v4}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
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
    invoke-virtual {v3}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method
