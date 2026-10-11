.class public final Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;
.super Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;-><init>()V

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic H([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/axn;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/axn;-><init>([BII)V

    invoke-static {v0}, Lonyx/org/apache/commons/io/function/Uncheck;->get(Lonyx/org/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic f([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->w([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->H([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 1
    invoke-static {p0, v0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->builder()Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p1

    check-cast p1, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;

    invoke-virtual {p1}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$Builder;->get()Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 4
    invoke-virtual {p1}, Lonyx/org/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public static synthetic w([BII)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->builder()Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setOffset(I)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setLength(I)Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->resetImpl()V

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return p0
.end method

.method public toByteArray()[B
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArrayImpl()[B

    move-result-object p0

    return-object p0
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zwn;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zwn;-><init>()V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->toInputStream(Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method public write(I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl(I)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_1

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->writeImpl([BII)V

    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%,d, length=%,d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->writeToImpl(Ljava/io/OutputStream;)V

    return-void
.end method
