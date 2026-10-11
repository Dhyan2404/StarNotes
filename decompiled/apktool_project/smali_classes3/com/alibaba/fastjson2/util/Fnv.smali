.class public final Lcom/alibaba/fastjson2/util/Fnv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAGIC_HASH_CODE:J = -0x340d631b7bdddcdbL

.field public static final MAGIC_PRIME:J = 0x100000001b3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode64(Ljava/lang/String;)J
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_5

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_5

    add-int/lit8 v3, v0, -0x1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_3
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    if-ne v3, v10, :cond_3

    int-to-byte v7, v9

    int-to-long v7, v7

    goto :goto_4

    :cond_3
    shl-long/2addr v7, v2

    int-to-long v9, v9

    add-long/2addr v7, v9

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    cmp-long v2, v7, v5

    if-eqz v2, :cond_5

    return-wide v7

    :cond_5
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_5
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-wide v2
.end method

.method public static hashCode64LCase(Ljava/lang/String;)J
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x5f

    const/16 v6, 0x2d

    const/16 v7, 0x20

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xff

    if-gt v8, v9, :cond_3

    if-nez v3, :cond_0

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-eq v8, v6, :cond_1

    if-eq v8, v5, :cond_1

    if-ne v8, v7, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_2
    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-eqz v3, :cond_a

    sub-int v3, v1, v4

    const/16 v4, 0x8

    if-gt v3, v4, :cond_a

    add-int/lit8 v3, v1, -0x1

    const-wide/16 v10, 0x0

    move v14, v2

    move-wide v12, v10

    :goto_3
    if-ltz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v6, :cond_8

    if-eq v15, v5, :cond_8

    if-ne v15, v7, :cond_5

    goto :goto_5

    :cond_5
    if-lt v15, v9, :cond_6

    if-gt v15, v8, :cond_6

    add-int/lit8 v15, v15, 0x20

    int-to-char v15, v15

    :cond_6
    if-nez v14, :cond_7

    int-to-byte v12, v15

    int-to-long v12, v12

    goto :goto_4

    :cond_7
    shl-long/2addr v12, v4

    int-to-long v8, v15

    add-long/2addr v12, v8

    :goto_4
    add-int/lit8 v14, v14, 0x1

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, -0x1

    const/16 v8, 0x5a

    const/16 v9, 0x41

    goto :goto_3

    :cond_9
    cmp-long v3, v12, v10

    if-eqz v3, :cond_a

    return-wide v12

    :cond_a
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_6
    if-ge v2, v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_d

    if-eq v8, v5, :cond_d

    if-ne v8, v7, :cond_b

    goto :goto_7

    :cond_b
    const/16 v9, 0x41

    const/16 v10, 0x5a

    if-lt v8, v9, :cond_c

    if-gt v8, v10, :cond_c

    add-int/lit8 v8, v8, 0x20

    int-to-char v8, v8

    :cond_c
    int-to-long v11, v8

    xor-long/2addr v3, v11

    const-wide v11, 0x100000001b3L

    mul-long/2addr v3, v11

    goto :goto_8

    :cond_d
    :goto_7
    const/16 v9, 0x41

    const/16 v10, 0x5a

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    return-wide v3
.end method
