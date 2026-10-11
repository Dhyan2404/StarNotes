.class public final Lsun/font/BidiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NUMLEVELS:C = '>'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeContiguousOrder([III)[I
    .locals 7

    sub-int/2addr p2, p1

    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, v2, p1

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    aget v3, p0, v3

    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, p2, :cond_2

    aget v6, v0, v4

    aget v6, p0, v6

    if-ge v6, v3, :cond_1

    move v5, v4

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget v3, v0, v2

    aget v4, v0, v5

    aput v4, v0, v2

    aput v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    move p0, v1

    :goto_3
    if-ge p0, p2, :cond_4

    aget v2, v0, p0

    sub-int/2addr v2, p1

    aput v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v1, p2, :cond_5

    aget p0, v0, v1

    if-ne p0, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    if-ne v1, p2, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-static {v0}, Lsun/font/BidiUtils;->createInverseMap([I)[I

    move-result-object p0

    return-object p0
.end method

.method public static createContiguousOrder([I)[I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lsun/font/BidiUtils;->computeContiguousOrder([III)[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static createInverseMap([I)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aput v1, v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createNormalizedMap([I[BII)[I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-nez p2, :cond_0

    array-length v1, p0

    if-ne p3, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v3, v1

    move p1, v2

    move v4, p1

    goto :goto_3

    :cond_1
    aget-byte v3, p1, p2

    add-int/lit8 v4, p3, -0x1

    aget-byte v4, p1, v4

    if-ne v3, v4, :cond_7

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    move v5, p2

    :goto_1
    if-ge v5, p3, :cond_5

    aget-byte v6, p1, v5

    if-lt v6, v3, :cond_5

    if-eqz v4, :cond_4

    if-ne v6, v3, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-ne v5, p3, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    move p1, v1

    goto :goto_3

    :cond_7
    move p1, v1

    move v3, p1

    move v4, v3

    :goto_3
    if-nez p1, :cond_8

    invoke-static {p0, p2, p3}, Lsun/font/BidiUtils;->computeContiguousOrder([III)[I

    move-result-object p0

    return-object p0

    :cond_8
    if-eqz v4, :cond_9

    return-object v0

    :cond_9
    sub-int p1, p3, p2

    new-array v0, p1, [I

    and-int/2addr v3, v2

    if-eqz v3, :cond_a

    sub-int/2addr p3, v2

    aget p3, p0, p3

    goto :goto_4

    :cond_a
    aget p3, p0, p2

    :goto_4
    if-nez p3, :cond_b

    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_b
    :goto_5
    if-ge v1, p1, :cond_c

    add-int v2, v1, p2

    aget v2, p0, v2

    sub-int/2addr v2, p3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    return-object v0
.end method

.method public static createVisualToLogicalMap([B)[I
    .locals 10

    array-length v0, p0

    new-array v1, v0, [I

    const/16 v2, 0x3f

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    aput v4, v1, v4

    aget-byte v6, p0, v4

    if-le v6, v5, :cond_0

    move v5, v6

    :cond_0
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_1

    if-ge v6, v2, :cond_1

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v5, v2, :cond_8

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_4

    aget-byte v6, p0, v4

    if-lt v6, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v6, v4, 0x1

    array-length v7, p0

    if-ne v4, v7, :cond_5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    goto :goto_1

    :cond_5
    :goto_4
    if-ge v6, v0, :cond_6

    aget-byte v7, p0, v6

    if-lt v7, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v6, -0x1

    :goto_5
    if-ge v4, v7, :cond_7

    aget v8, v1, v4

    aget v9, v1, v7

    aput v9, v1, v4

    aput v8, v1, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_7
    move v4, v6

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method public static getLevels(Ljava/text/Bidi;[BI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    add-int/2addr v0, p2

    if-ltz p2, :cond_2

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v3

    add-int/2addr v3, p2

    .line 5
    invoke-virtual {p0, v1}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v4

    int-to-byte v4, v4

    :goto_1
    if-ge v2, v3, :cond_0

    add-int/lit8 v5, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levels.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " start: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " limit: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLevels(Ljava/text/Bidi;)[B
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Lsun/font/BidiUtils;->getLevels(Ljava/text/Bidi;[BI)V

    return-object v0
.end method

.method public static reorderVisually([B[Ljava/lang/Object;)V
    .locals 9

    array-length v0, p0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v5, p0, v3

    if-le v5, v4, :cond_0

    move v4, v5

    :cond_0
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_1

    if-ge v5, v1, :cond_1

    move v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v4, v1, :cond_8

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_4

    aget-byte v5, p0, v3

    if-lt v5, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v3, 0x1

    array-length v6, p0

    if-ne v3, v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    goto :goto_1

    :cond_5
    :goto_4
    if-ge v5, v0, :cond_6

    aget-byte v6, p0, v5

    if-lt v6, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v5, -0x1

    :goto_5
    if-ge v3, v6, :cond_7

    aget-object v7, p1, v3

    aget-object v8, p1, v6

    aput-object v8, p1, v3

    aput-object v7, p1, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    return-void
.end method
