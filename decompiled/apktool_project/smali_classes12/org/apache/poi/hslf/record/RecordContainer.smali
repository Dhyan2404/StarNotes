.class public abstract Lorg/apache/poi/hslf/record/RecordContainer;
.super Lorg/apache/poi/hslf/record/Record;
.source "SourceFile"


# instance fields
.field protected _children:[Lorg/apache/poi/hslf/record/Record;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/Record;-><init>()V

    return-void
.end method

.method private addChildAt(Lorg/apache/poi/hslf/record/Record;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChild(Lorg/apache/poi/hslf/record/Record;)I

    iget-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->moveChildRecords(III)V

    return-void
.end method

.method private appendChild(Lorg/apache/poi/hslf/record/Record;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    const-class v2, [Lorg/apache/poi/hslf/record/Record;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/Record;

    iget-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, v1

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length p0, v0

    return p0
.end method

.method private findChildLocation(Lorg/apache/poi/hslf/record/Record;)I
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static handleParentAwareRecords(Lorg/apache/poi/hslf/record/RecordContainer;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    instance-of v4, v3, Lorg/apache/poi/hslf/record/ParentAwareRecord;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hslf/record/ParentAwareRecord;

    invoke-interface {v4, p0}, Lorg/apache/poi/hslf/record/ParentAwareRecord;->setParentRecord(Lorg/apache/poi/hslf/record/RecordContainer;)V

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/hslf/record/RecordContainer;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/hslf/record/RecordContainer;

    invoke-static {v3}, Lorg/apache/poi/hslf/record/RecordContainer;->handleParentAwareRecords(Lorg/apache/poi/hslf/record/RecordContainer;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private moveChildRecords(III)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    add-int v0, p1, p3

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v1, p0

    if-gt v0, v1, :cond_2

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/util/ArrayUtil;->arrayMoveWithin([Ljava/lang/Object;III)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to move more records than there are!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->findChildLocation(Lorg/apache/poi/hslf/record/Record;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAt(Lorg/apache/poi/hslf/record/Record;I)V

    return p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to add a new child after another record, but that record wasn\'t one of our children!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addChildBefore(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->findChildLocation(Lorg/apache/poi/hslf/record/Record;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAt(Lorg/apache/poi/hslf/record/Record;I)V

    return p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to add a new child before another record, but that record wasn\'t one of our children!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChild(Lorg/apache/poi/hslf/record/Record;)I

    move-result p0

    return p0
.end method

.method public findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnAtom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    if-eq v6, p1, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v3, v6

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/Record;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    return-object v3
.end method

.method public setChildRecord([Lorg/apache/poi/hslf/record/Record;)V
    .locals 0

    invoke-virtual {p1}, [Lorg/apache/poi/hslf/record/Record;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/Record;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    return-void
.end method

.method public writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    aput-byte p2, v1, p1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    new-array p1, v0, [B

    long-to-int p2, p3

    int-to-short p2, p2

    invoke-static {p1, v2, p2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x4

    new-array p2, p1, [B

    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    array-length p2, p5

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object p3, p5, v2

    invoke-virtual {p3, p0}, Lorg/apache/poi/hslf/record/Record;->writeOut(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p3, p2

    add-int/lit8 p3, p3, -0x8

    invoke-static {p2, p1, p3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p6, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
