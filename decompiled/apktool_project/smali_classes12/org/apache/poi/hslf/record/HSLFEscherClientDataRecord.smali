.class public Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;
.super Lorg/apache/poi/ddf/EscherClientDataRecord;
.source "SourceFile"


# instance fields
.field private final _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherClientDataRecord;-><init>(Lorg/apache/poi/ddf/EscherClientDataRecord;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    .line 5
    iget-object p0, p1, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addChild(Lorg/apache/poi/hslf/record/Record;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->copy()Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherClientDataRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->copy()Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->copy()Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;-><init>(Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->setRemainingData([B)V

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getHSLFChildRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "HSLFClientData"

    return-object p0
.end method

.method public getRecordSize()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getRemainingData()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getRemainingData()[B
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/Record;->writeOut(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

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
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeChild(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/x6h;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/x6h;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getRemainingData()[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    array-length v2, v0

    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v0

    add-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p2
.end method

.method public setRemainingData([B)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/hslf/record/Record;->buildRecordAtOffset([BI)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method
