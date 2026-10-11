.class public abstract Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;
    }
.end annotation


# static fields
.field public static final j:I = 0x400


# instance fields
.field protected count:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:[B

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->i:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public needNewBuffer(I)V
    .locals 2

    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    iget p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    iget-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    goto :goto_0

    :cond_1
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    :goto_0
    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    invoke-static {p1}, Lonyx/org/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public abstract reset()V
.end method

.method public resetImpl()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    iput v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->f:I

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->i:Z

    :goto_0
    return-void
.end method

.method public abstract size()I
.end method

.method public abstract toByteArray()[B
.end method

.method public toByteArrayImpl()[B
    .locals 6

    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    if-nez v0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/IOUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v1

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    if-nez v0, :cond_1

    :cond_2
    return-object v1
.end method

.method public abstract toInputStream()Ljava/io/InputStream;
.end method

.method public toInputStream(Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/io/InputStream;",
            ">(",
            "Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor<",
            "TT;>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lonyx/org/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lonyx/org/apache/commons/io/input/ClosedInputStream;

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    array-length v5, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    invoke-interface {p1, v3, v4, v5}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;->construct([BII)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v5

    if-nez v0, :cond_1

    .line 7
    :cond_2
    iput-boolean v4, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->i:Z

    .line 8
    new-instance p0, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public abstract write(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(I)V
.end method

.method public abstract write([BII)V
.end method

.method public writeImpl(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    sub-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    add-int/2addr v3, v1

    add-int/2addr v0, v1

    .line 9
    iget v4, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/2addr v4, v1

    iput v4, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    .line 10
    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v4, v1

    if-ne v0, v4, :cond_0

    .line 11
    array-length v0, v1

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    move v0, v2

    .line 12
    :cond_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v1, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public writeImpl(I)V
    .locals 3

    .line 13
    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    sub-int v1, v0, v1

    .line 14
    iget-object v2, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v1, 0x0

    .line 16
    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 17
    iget p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return-void
.end method

.method public writeImpl([BII)V
    .locals 6

    .line 1
    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    add-int v1, v0, p3

    .line 2
    iget v2, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->g:I

    sub-int/2addr v0, v2

    move v2, p3

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 3
    iget-object v3, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    .line 4
    iget-object v5, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->h:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iput v1, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeToImpl(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->count:I

    iget-object p0, p0, Lonyx/org/apache/commons/io/output/AbstractByteArrayOutputStream;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method
