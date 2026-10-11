.class public final Lcom/sagittarius/v6/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)[B
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v7, v0

    :goto_0
    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v12, :cond_0

    if-ne v0, v9, :cond_1

    :cond_0
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_1
    int-to-long v0, v7

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-array v4, v0, [B

    move v5, v6

    move v1, v6

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v5, v7, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x41

    if-lt v0, v8, :cond_2

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_2

    add-int/lit8 v0, v0, -0x41

    :goto_2
    shl-int/lit8 v1, v1, 0x6

    int-to-byte v0, v0

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_e

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v0

    aput-byte v8, v4, v3

    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v8, 0x61

    if-lt v0, v8, :cond_3

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_3

    add-int/lit8 v0, v0, -0x47

    goto :goto_2

    :cond_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    const/16 v8, 0x2b

    if-eq v0, v8, :cond_5

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    :cond_5
    const/16 v0, 0x3e

    goto :goto_2

    :cond_6
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_7

    const/16 v8, 0x5f

    if-ne v0, v8, :cond_8

    :cond_7
    const/16 v0, 0x3f

    goto :goto_2

    :cond_8
    if-eq v0, v10, :cond_f

    if-eq v0, v11, :cond_f

    if-eq v0, v12, :cond_f

    if-eq v0, v9, :cond_f

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_9
    rem-int/lit8 v0, v2, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v4, v3

    move v3, v0

    :cond_b
    :goto_5
    array-length v0, v4

    if-ne v3, v0, :cond_d

    move-object v0, v4

    goto :goto_4

    :cond_c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    shl-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    goto :goto_5

    :cond_d
    new-array v0, v3, [B

    invoke-static {v4, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_e
    move v2, v3

    goto :goto_3

    :cond_f
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_3
.end method
