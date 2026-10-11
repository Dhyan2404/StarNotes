.class public Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    }
.end annotation


# static fields
.field public static final END_OF_STREAM:I = -0x1


# instance fields
.field public final e:[B

.field public final f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    array-length v0, p1

    const-string v1, "offset"

    invoke-static {p2, v1}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->j(ILjava/lang/String;)I

    move-result v1

    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f([BI)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f([BI)I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "offset"

    .line 4
    invoke-static {p2, v0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->j(ILjava/lang/String;)I

    const-string v0, "length"

    .line 5
    invoke-static {p3, v0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->j(ILjava/lang/String;)I

    const-string v0, "data"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [B

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->e:[B

    .line 7
    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f([BI)I

    move-result v0

    add-int/2addr v0, p3

    array-length p3, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    .line 8
    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f([BI)I

    move-result p3

    iput p3, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    .line 9
    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f([BI)I

    move-result p1

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->h:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "data"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->e:[B

    .line 12
    iput p2, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    .line 13
    iput p3, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    .line 14
    iput p4, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->h:I

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static f([BI)I
    .locals 1

    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->j(ILjava/lang/String;)I

    array-length v0, p0

    if-lez v0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static j(ILjava/lang/String;)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be negative"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    iget p0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    if-ge v0, p0, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->h:I

    return-void
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    iget v1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->e:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public read([B)I
    .locals 2

    const-string v0, "dest"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2

    const-string v0, "dest"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 6
    iget v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    iget v1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-int/2addr v1, v0

    if-ge p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-gtz p3, :cond_2

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_2
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->e:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    return p3

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->h:I

    iput v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    return-void
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->f:I

    iget v1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    move-wide v2, p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    iput p1, p0, Lonyx/org/apache/commons/io/input/UnsynchronizedByteArrayInputStream;->g:I

    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skipping backward is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
