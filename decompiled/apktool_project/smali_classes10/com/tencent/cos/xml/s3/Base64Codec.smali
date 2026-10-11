.class public Lcom/tencent/cos/xml/s3/Base64Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/s3/Codec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/s3/Base64Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final MASK_2BITS:I = 0x3

.field private static final MASK_4BITS:I = 0xf

.field private static final MASK_6BITS:I = 0x3f

.field private static final OFFSET_OF_0:I = -0x4

.field private static final OFFSET_OF_PLUS:I = -0x13

.field private static final OFFSET_OF_SLASH:I = -0x10

.field private static final OFFSET_OF_a:I = 0x47

.field private static final PAD:B = 0x3dt


# instance fields
.field private final alphabets:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 2
    invoke-static {v0}, Lcom/tencent/cos/xml/s3/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/s3/Base64Codec;->alphabets:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tencent/cos/xml/s3/Base64Codec;->alphabets:[B

    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .locals 7

    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_7

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    aget-byte v4, p1, v0

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x3

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-ne v2, v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Impossible"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move v3, v0

    :cond_4
    :goto_2
    div-int/lit8 p2, p2, 0x4

    mul-int/2addr p2, v0

    rsub-int/lit8 v2, v3, 0x3

    sub-int/2addr p2, v2

    new-array v6, p2, [B

    move v4, v1

    move v5, v4

    :goto_3
    rem-int/lit8 v1, v3, 0x3

    sub-int v1, p2, v1

    if-ge v5, v1, :cond_5

    invoke-virtual {p0, p1, v4, v6, v5}, Lcom/tencent/cos/xml/s3/Base64Codec;->decode4bytes([BI[BI)V

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x3

    goto :goto_3

    :cond_5
    if-ge v3, v0, :cond_6

    move-object v0, p0

    move v1, v3

    move-object v2, p1

    move v3, v4

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/cos/xml/s3/Base64Codec;->decode1to3bytes(I[BI[BI)V

    :cond_6
    return-object v6

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Input is expected to be encoded in multiple of 4 bytes but found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decode1to3bytes(I[BI[BI)V
    .locals 7

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    invoke-virtual {p0, p3}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result p3

    const/4 v2, 0x2

    shl-int/2addr p3, v2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p2, v1

    invoke-virtual {p0, v1}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    const/4 v5, 0x3

    and-int/2addr v4, v5

    or-int/2addr p3, v4

    int-to-byte p3, p3

    aput-byte p3, p4, p5

    const/16 p3, 0xf

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    invoke-static {v1, p3}, Lcom/tencent/cos/xml/s3/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_0
    add-int/lit8 p5, v0, 0x1

    and-int/2addr v1, p3

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    invoke-virtual {p0, v3}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result v3

    ushr-int/lit8 v6, v3, 0x2

    and-int/2addr p3, v6

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, v0

    if-ne p1, v2, :cond_1

    invoke-static {v3, v5}, Lcom/tencent/cos/xml/s3/CodecUtils;->sanityCheckLastPos(II)V

    return-void

    :cond_1
    and-int/lit8 p1, v3, 0x3

    shl-int/lit8 p1, p1, 0x6

    aget-byte p2, p2, v4

    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result p0

    or-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, p4, p5

    return-void
.end method

.method public decode4bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x3

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p4, v1, 0xf

    shl-int/lit8 p4, p4, 0x4

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr p4, v3

    int-to-byte p4, p4

    aput-byte p4, p3, v0

    and-int/lit8 p4, v2, 0x3

    shl-int/lit8 p4, p4, 0x6

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/s3/Base64Codec;->pos(B)I

    move-result p0

    or-int/2addr p0, p4

    int-to-byte p0, p0

    aput-byte p0, p3, p2

    return-void
.end method

.method public encode([B)[B
    .locals 6

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    move v1, v2

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode3bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    move v4, v2

    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode3bytes([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode2bytes([BI[BI)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/tencent/cos/xml/s3/Base64Codec;->encode1byte([BI[BI)V

    :goto_2
    return-object v0
.end method

.method public encode1byte([BI[BI)V
    .locals 1

    add-int/lit8 v0, p4, 0x1

    iget-object p0, p0, Lcom/tencent/cos/xml/s3/Base64Codec;->alphabets:[B

    aget-byte p1, p1, p2

    ushr-int/lit8 p2, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p0, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    aget-byte p0, p0, p1

    aput-byte p0, p3, v0

    add-int/lit8 p0, p2, 0x1

    const/16 p1, 0x3d

    aput-byte p1, p3, p2

    aput-byte p1, p3, p0

    return-void
.end method

.method public encode2bytes([BI[BI)V
    .locals 3

    add-int/lit8 v0, p4, 0x1

    iget-object p0, p0, Lcom/tencent/cos/xml/s3/Base64Codec;->alphabets:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v2, p2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p0, v2

    aput-byte v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    aget-byte p1, p1, v1

    ushr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr p2, v1

    aget-byte p2, p0, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    aput-byte p0, p3, p4

    const/16 p0, 0x3d

    aput-byte p0, p3, p2

    return-void
.end method

.method public encode3bytes([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x1

    iget-object p0, p0, Lcom/tencent/cos/xml/s3/Base64Codec;->alphabets:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    ushr-int/lit8 v2, p2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p0, v2

    aput-byte v2, p3, p4

    add-int/lit8 p4, v0, 0x1

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr p2, v3

    aget-byte p2, p0, p2

    aput-byte p2, p3, v0

    add-int/lit8 p2, p4, 0x1

    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x2

    aget-byte p1, p1, v2

    ushr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    aget-byte v0, p0, v0

    aput-byte v0, p3, p4

    and-int/lit8 p1, p1, 0x3f

    aget-byte p0, p0, p1

    aput-byte p0, p3, p2

    return-void
.end method

.method public pos(B)I
    .locals 2

    invoke-static {}, Lcom/tencent/cos/xml/s3/Base64Codec$LazyHolder;->access$000()[B

    move-result-object p0

    aget-byte p0, p0, p1

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid base 64 character: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
