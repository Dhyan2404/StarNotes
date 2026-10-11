.class public final Lorg/apache/xerces/impl/dv/util/HexBin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x80

.field public static final b:I = 0x10

.field public static final c:[B

.field public static final d:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    const/16 v1, 0x10

    new-array v1, v1, [C

    sput-object v1, Lorg/apache/xerces/impl/dv/util/HexBin;->d:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_5

    const/16 v0, 0x39

    :goto_1
    const/16 v2, 0x30

    if-ge v0, v2, :cond_4

    const/16 v0, 0x46

    :goto_2
    const/16 v2, 0x41

    const/16 v3, 0xa

    if-ge v0, v2, :cond_3

    const/16 v0, 0x66

    :goto_3
    const/16 v2, 0x61

    if-ge v0, v2, :cond_2

    :goto_4
    if-lt v1, v3, :cond_1

    move v0, v3

    :goto_5
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/apache/xerces/impl/dv/util/HexBin;->d:[C

    add-int/lit8 v2, v0, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    sget-object v0, Lorg/apache/xerces/impl/dv/util/HexBin;->d:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    sget-object v2, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    add-int/lit8 v4, v0, -0x41

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sget-object v2, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    add-int/lit8 v3, v0, -0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    sget-object v3, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    return-object v2

    :cond_2
    mul-int/lit8 v4, v3, 0x2

    aget-char v5, p0, v4

    const/16 v6, 0x80

    const/4 v7, -0x1

    if-ge v5, v6, :cond_3

    sget-object v8, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    aget-byte v5, v8, v5

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    if-ne v5, v7, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    if-ge v4, v6, :cond_5

    sget-object v6, Lorg/apache/xerces/impl/dv/util/HexBin;->c:[B

    aget-byte v4, v6, v4

    goto :goto_2

    :cond_5
    move v4, v7

    :goto_2
    if-ne v4, v7, :cond_6

    return-object v0

    :cond_6
    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    aget-byte v3, p0, v2

    if-gez v3, :cond_2

    add-int/lit16 v3, v3, 0x100

    :cond_2
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Lorg/apache/xerces/impl/dv/util/HexBin;->d:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
