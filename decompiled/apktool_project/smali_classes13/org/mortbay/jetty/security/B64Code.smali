.class public Lorg/mortbay/jetty/security/B64Code;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:C = '='

.field public static final b:[C

.field public static c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/mortbay/jetty/security/B64Code;->b:[C

    const/16 v1, 0x100

    new-array v2, v1, [B

    sput-object v2, Lorg/mortbay/jetty/security/B64Code;->c:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    sget-object v4, Lorg/mortbay/jetty/security/B64Code;->c:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    sget-object v3, Lorg/mortbay/jetty/security/B64Code;->c:[B

    sget-object v4, Lorg/mortbay/jetty/security/B64Code;->b:[C

    aget-char v4, v4, v1

    int-to-byte v4, v4

    aput-byte v1, v3, v4

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/security/B64Code;->c:[B

    const/16 v1, 0x3d

    aput-byte v2, v0, v1

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object p0

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decode([C)[B
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 8
    aget-char v2, p0, v0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-gez v0, :cond_2

    new-array p0, v2, [B

    return-object p0

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 9
    div-int/lit8 v0, v0, 0x4

    .line 10
    new-array v3, v0, [B

    .line 11
    div-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v5, v2

    :goto_1
    const-string v6, "Not B64 encoded"

    if-ge v2, v4, :cond_4

    .line 12
    :try_start_0
    sget-object v7, Lorg/mortbay/jetty/security/B64Code;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    add-int/lit8 v8, v5, 0x1

    :try_start_1
    aget-char v5, p0, v5

    aget-byte v5, v7, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v9, v8, 0x1

    .line 13
    :try_start_2
    aget-char v8, p0, v8

    aget-byte v8, v7, v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v10, v9, 0x1

    .line 14
    :try_start_3
    aget-char v9, p0, v9

    aget-byte v9, v7, v9
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v11, v10, 0x1

    .line 15
    :try_start_4
    aget-char v10, p0, v10

    aget-byte v7, v7, v10

    if-ltz v5, :cond_3

    if-ltz v8, :cond_3

    if-ltz v9, :cond_3

    if-ltz v7, :cond_3

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v10, v8, 0x4

    or-int/2addr v5, v10

    int-to-byte v5, v5

    .line 16
    aput-byte v5, v3, v2

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v5, v8, 0x4

    ushr-int/lit8 v8, v9, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    .line 17
    aput-byte v5, v3, v6

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v6, v9, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 18
    aput-byte v6, v3, v2

    move v2, v5

    move v5, v11

    goto :goto_1

    .line 19
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move v5, v11

    goto/16 :goto_2

    :catch_1
    move v5, v10

    goto/16 :goto_2

    :catch_2
    move v5, v9

    goto :goto_2

    :catch_3
    move v5, v8

    goto :goto_2

    :cond_4
    if-eq v0, v2, :cond_9

    .line 20
    :try_start_5
    rem-int/lit8 v0, v0, 0x3

    const/4 v4, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v4, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    sget-object v0, Lorg/mortbay/jetty/security/B64Code;->c:[B
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    add-int/lit8 v1, v5, 0x1

    :try_start_6
    aget-char v5, p0, v5

    aget-byte v5, v0, v5
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    add-int/lit8 v7, v1, 0x1

    .line 22
    :try_start_7
    aget-char v1, p0, v1

    aget-byte v1, v0, v1
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v8, v7, 0x1

    .line 23
    :try_start_8
    aget-char p0, p0, v7

    aget-byte p0, v0, p0

    if-ltz v5, :cond_6

    if-ltz v1, :cond_6

    if-ltz p0, :cond_6

    add-int/lit8 v0, v2, 0x1

    shl-int/2addr v5, v4

    ushr-int/lit8 v6, v1, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 24
    aput-byte v5, v3, v2

    shl-int/lit8 v1, v1, 0x4

    ushr-int/2addr p0, v4

    or-int/2addr p0, v1

    int-to-byte p0, p0

    .line 25
    aput-byte p0, v3, v0

    goto :goto_3

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    .line 27
    :cond_7
    :try_start_9
    sget-object v0, Lorg/mortbay/jetty/security/B64Code;->c:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    add-int/lit8 v1, v5, 0x1

    :try_start_a
    aget-char v5, p0, v5

    aget-byte v5, v0, v5
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    add-int/lit8 v7, v1, 0x1

    .line 28
    :try_start_b
    aget-char p0, p0, v1

    aget-byte p0, v0, p0

    if-ltz v5, :cond_8

    if-ltz p0, :cond_8

    shl-int/lit8 v0, v5, 0x2

    ushr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 29
    aput-byte p0, v3, v2

    goto :goto_3

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move v5, v7

    goto :goto_2

    :catch_5
    move v5, v1

    .line 31
    :catch_6
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " was not B64 encoded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    return-object v3

    .line 32
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input block size is not 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Lorg/mortbay/jetty/security/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 5
    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static encode([B)[C
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    .line 7
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    .line 8
    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v2, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 9
    aget-byte v3, p0, v3

    add-int/lit8 v7, v6, 0x1

    .line 10
    aget-byte v6, p0, v6

    add-int/lit8 v8, v7, 0x1

    .line 11
    aget-byte v7, p0, v7

    add-int/lit8 v9, v4, 0x1

    .line 12
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->b:[C

    ushr-int/lit8 v11, v3, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v10, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v11, v6, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v3, v11

    .line 13
    aget-char v3, v10, v3

    aput-char v3, v1, v9

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v6, 0x2

    and-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v6, v7, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    .line 14
    aget-char v5, v10, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0x3f

    .line 15
    aget-char v5, v10, v5

    aput-char v5, v1, v3

    move v3, v8

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_4

    .line 16
    rem-int/lit8 v0, v0, 0x3

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 17
    aget-byte v3, p0, v3

    .line 18
    aget-byte p0, p0, v0

    add-int/lit8 v0, v4, 0x1

    .line 19
    sget-object v6, Lorg/mortbay/jetty/security/B64Code;->b:[C

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v7, p0, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v3, v7

    .line 20
    aget-char v3, v6, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v4, 0x1

    shl-int/2addr p0, v5

    and-int/lit8 p0, p0, 0x3f

    .line 21
    aget-char p0, v6, p0

    aput-char p0, v1, v4

    .line 22
    aput-char v2, v1, v0

    goto :goto_1

    .line 23
    :cond_3
    aget-byte p0, p0, v3

    add-int/lit8 v0, v4, 0x1

    .line 24
    sget-object v3, Lorg/mortbay/jetty/security/B64Code;->b:[C

    ushr-int/lit8 v5, p0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v3, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    .line 25
    aget-char p0, v3, p0

    aput-char p0, v1, v0

    add-int/lit8 p0, v4, 0x1

    .line 26
    aput-char v2, v1, v4

    .line 27
    aput-char v2, v1, p0

    :cond_4
    :goto_1
    return-object v1
.end method
