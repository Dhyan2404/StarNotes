.class public Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# static fields
.field static final MAX_UNSIGNED_SHORT:I = 0xfffe


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static countUTF(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static writeShortOrInt(Ljava/io/DataOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xfffe

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public writeLongUTF(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;->countUTF(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;->writeShortOrInt(I)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    const/16 v5, 0xffd

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    move v4, v2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    :goto_1
    move v4, v6

    goto :goto_3

    :cond_1
    const/16 v6, 0x7ff

    if-le v5, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    move v4, v6

    :goto_2
    add-int/lit8 v6, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeShortOrInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/util/LongUTFDataOutputStream;->writeShortOrInt(Ljava/io/DataOutputStream;I)V

    return-void
.end method
