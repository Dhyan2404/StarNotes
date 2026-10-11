.class public final Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/serialize/charcode/CharacterSet;


# static fields
.field public static final a:Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->a:Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeUTF8([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-byte v4, p0, v2

    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Byte "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in UTF-8 sequence has wrong top bits"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_3

    if-ne p1, v1, :cond_2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTF8 single byte expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    and-int/lit16 v0, p0, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    :goto_1
    add-int/2addr p0, v3

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTF8 sequence of two bytes expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTF8 sequence of three bytes expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    and-int/lit16 v0, p0, 0xf8

    const/16 v1, 0xf8

    if-ne v0, v1, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x18

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTF8 sequence of four bytes expected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTF8 invalid first byte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Lnet/sf/saxon/z/IntIterator;)[B
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x6

    new-array v2, v1, [B

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    if-ltz v3, :cond_3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0xc0

    const/16 v7, 0x1f

    :goto_1
    and-int/lit8 v8, v3, 0x3f

    or-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    shr-int/2addr v3, v1

    not-int v8, v7

    and-int/2addr v8, v3

    if-nez v8, :cond_2

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-lez v5, :cond_0

    add-int/lit8 v5, v5, -0x1

    aget-byte v3, v2, v5

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_2
    shr-int/lit8 v6, v6, 0x1

    or-int/2addr v6, v4

    shr-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No negative code point allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->a:Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;

    return-object v0
.end method

.method public static getUTF8Encoding(CC[B)I
    .locals 8

    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    aput-byte p0, p2, v2

    return v1

    :cond_0
    const/16 v0, 0x7ff

    const/4 v3, 0x2

    if-gt p0, v0, :cond_1

    shr-int/lit8 p1, p0, 0x6

    and-int/lit8 p1, p1, 0x1f

    or-int/lit16 p1, p1, 0xc0

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v1

    return v3

    :cond_1
    const v0, 0xd800

    const v4, 0xdfff

    const v5, 0xdc00

    const/4 v6, 0x3

    if-lt p0, v0, :cond_3

    const v0, 0xdbff

    if-gt p0, v0, :cond_3

    if-lt p1, v5, :cond_2

    if-gt p1, v4, :cond_2

    and-int/lit8 v0, p1, 0x3f

    int-to-byte v0, v0

    and-int/lit8 v4, p0, 0x3

    const/4 v5, 0x4

    shl-int/2addr v4, v5

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v4

    int-to-byte p1, p1

    shr-int/lit8 v4, p0, 0x2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p0, v1

    int-to-byte p0, p0

    shr-int/lit8 v7, p0, 0x2

    and-int/lit8 v7, v7, 0x7

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, p2, v2

    and-int/2addr p0, v6

    shl-int/2addr p0, v5

    or-int/lit16 p0, p0, 0x80

    or-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, p2, v1

    or-int/lit16 p0, p1, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v3

    or-int/lit16 p0, v0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v6

    return v5

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed Unicode Surrogate Pair ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-lt p0, v5, :cond_4

    if-gt p0, v4, :cond_4

    return v2

    :cond_4
    shr-int/lit8 p1, p0, 0xc

    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xe0

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    shr-int/lit8 p1, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v3

    return v6
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public inCharset(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
