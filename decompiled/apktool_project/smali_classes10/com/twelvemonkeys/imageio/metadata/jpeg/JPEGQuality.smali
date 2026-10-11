.class public final Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4

.field public static final b:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([[I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    if-eqz v3, :cond_0

    move v3, v0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v1

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v1, p0, v0

    const/16 v3, 0x35

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    aget-object p0, p0, v7

    if-eqz p0, :cond_2

    new-array v8, v6, [I

    fill-array-data v8, :array_0

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    aget v4, v1, v4

    aget v1, v1, v3

    add-int/2addr v4, v1

    aget v1, p0, v0

    add-int/2addr v4, v1

    const/16 v1, 0x3f

    aget p0, p0, v1

    add-int/2addr v4, p0

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_6

    new-array v8, v6, [I

    fill-array-data v8, :array_2

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    aget p0, v1, v4

    aget v1, v1, v3

    add-int v4, p0, v1

    :goto_2
    const/16 p0, 0x64

    if-ge v0, p0, :cond_6

    aget p0, v8, v0

    if-ge v4, p0, :cond_3

    aget v1, v6, v0

    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-gt v4, p0, :cond_4

    aget p0, v6, v0

    if-le v2, p0, :cond_5

    :cond_4
    const/16 p0, 0x32

    if-lt v0, p0, :cond_6

    :cond_5
    add-int/2addr v0, v7

    return v0

    :cond_6
    return v5

    nop

    :array_0
    .array-data 4
        0x3fc
        0x3f7
        0x3a4
        0x350
        0x30c
        0x2df
        0x2be
        0x2a7
        0x294
        0x285
        0x278
        0x26f
        0x265
        0x25f
        0x258
        0x252
        0x24d
        0x249
        0x245
        0x23b
        0x22b
        0x21e
        0x211
        0x202
        0x1ee
        0x1da
        0x1c9
        0x1b7
        0x1a8
        0x19a
        0x18d
        0x182
        0x175
        0x16c
        0x15f
        0x155
        0x14e
        0x144
        0x13d
        0x135
        0x12b
        0x126
        0x11f
        0x117
        0x112
        0x10b
        0x106
        0x101
        0xfb
        0xf7
        0xf3
        0xed
        0xe8
        0xe3
        0xde
        0xd9
        0xd5
        0xcf
        0xca
        0xc6
        0xc0
        0xbc
        0xb7
        0xb1
        0xad
        0xa8
        0xa3
        0x9d
        0x99
        0x94
        0x8f
        0x8b
        0x84
        0x80
        0x7d
        0x77
        0x73
        0x6c
        0x68
        0x63
        0x5e
        0x5a
        0x54
        0x4f
        0x4a
        0x46
        0x40
        0x3b
        0x37
        0x31
        0x2d
        0x28
        0x22
        0x1e
        0x19
        0x14
        0xf
        0xb
        0x6
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f80
        0x7f7b
        0x7e0a
        0x7b07
        0x77c9
        0x746c
        0x71da
        0x6fb7
        0x6dc8
        0x6c16
        0x6a59
        0x6865
        0x6662
        0x6474
        0x6298
        0x60d5
        0x5f35
        0x5d8a
        0x5c14
        0x593e
        0x5529
        0x516a
        0x4ded
        0x4ab1
        0x47d2
        0x44f3
        0x4266
        0x3fdd
        0x3db8
        0x3b8f
        0x39bf
        0x37f1
        0x3623
        0x34df
        0x3319
        0x319e
        0x3087
        0x2f18
        0x2e03
        0x2cf9
        0x2b7f
        0x2acb
        0x29b4
        0x2898
        0x27e0
        0x26c8
        0x2613
        0x255c
        0x2499
        0x23e9
        0x2339
        0x2276
        0x21bf
        0x210a
        0x204e
        0x1f94
        0x1ed8
        0x1e1e
        0x1d67
        0x1cb3
        0x1bf4
        0x1b41
        0x1a84
        0x19cf
        0x1916    # 8.999E-42f
        0x185c
        0x17a6
        0x16eb
        0x1634
        0x1577
        0x14b9
        0x1408
        0x1351
        0x128f
        0x121e
        0x115a
        0x1098
        0xfe1
        0xf30
        0xe72
        0xdb5
        0xcfe
        0xc43
        0xb8d
        0xad7
        0xa1a
        0x965
        0x8a8
        0x7f5
        0x736
        0x682
        0x5cb
        0x511
        0x455
        0x39f
        0x2df
        0x22a
        0x177
        0xc9
        0x80
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1fe
        0x1f9
        0x1a6
        0x17c
        0x163
        0x152
        0x146
        0x13e
        0x137
        0x131
        0x12c
        0x129
        0x125
        0x123
        0x120
        0x11e
        0x11c
        0x11b
        0x119
        0x118
        0x117
        0x116
        0x115
        0x111
        0x106
        0xfb
        0xf3
        0xe9
        0xe1
        0xda
        0xd3
        0xcd
        0xc6
        0xc1
        0xba
        0xb5
        0xb1
        0xac
        0xa8
        0xa4
        0x9e
        0x9c
        0x98
        0x94
        0x91
        0x8e
        0x8b
        0x88
        0x85
        0x83
        0x81
        0x7e
        0x7b
        0x78
        0x76
        0x73
        0x71
        0x6e
        0x6b
        0x69
        0x66
        0x64
        0x61
        0x5e
        0x5c
        0x59
        0x57
        0x53
        0x51
        0x4f
        0x4c
        0x4a
        0x46
        0x44
        0x42
        0x3f
        0x3d
        0x39
        0x37
        0x34
        0x32
        0x30
        0x2c
        0x2a
        0x27
        0x25
        0x22
        0x1f
        0x1d
        0x1a
        0x18
        0x15
        0x12
        0x10
        0xd
        0xb
        0x8
        0x6
        0x3
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3fc0
        0x3fbb
        0x3e4a
        0x3bad
        0x393f
        0x36f9
        0x3537
        0x33ae
        0x323b
        0x3110
        0x2fd0
        0x2e55
        0x2cc0
        0x2b49
        0x29da
        0x2878
        0x272b
        0x25cf
        0x2498
        0x2360
        0x21e8
        0x208b
        0x1f3b
        0x1df4
        0x1cd0
        0x1bac
        0x1aa7
        0x19a2
        0x18c9
        0x17ed
        0x1733
        0x167c
        0x15c3
        0x152d
        0x1478
        0x13de
        0x1370
        0x12dd
        0x126f
        0x1208
        0x116f
        0x1129
        0x10b8
        0x1046
        0xffc
        0xf8c
        0xf45
        0xefb
        0xeab
        0xe68
        0xe25
        0xdd5
        0xd8b
        0xd44
        0xcfb
        0xcaf
        0xc62
        0xc18
        0xbcd
        0xb88
        0xb3a
        0xaf4
        0xaa7
        0xa61
        0xa17
        0x9cd
        0x985
        0x93a
        0x8f2
        0x8a3
        0x858
        0x814
        0x7cc
        0x77b
        0x742
        0x6ed
        0x69c
        0x654
        0x610
        0x5c5
        0x576
        0x52e
        0x4e3
        0x49b
        0x455
        0x407
        0x3c1
        0x374
        0x32e
        0x2e0
        0x29b
        0x250
        0x206
        0x1b9
        0x171
        0x124
        0xdd
        0x97
        0x56
        0x40
        0x0
    .end array-data
.end method

.method public static b(Ljava/util/List;)[[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;)[[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "segments"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [[I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result v3

    const v4, 0xffdb

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v7, v6, 0xf

    shr-int/2addr v6, v0

    if-ge v7, v0, :cond_7

    aget-object v8, v1, v7

    if-nez v8, :cond_6

    if-ltz v6, :cond_5

    const/4 v8, 0x1

    if-gt v6, v8, :cond_5

    add-int/lit8 v9, v6, 0x1

    const/16 v10, 0x40

    mul-int/2addr v9, v10

    new-array v11, v9, [B

    invoke-virtual {v3, v11}, Ljava/io/DataInputStream;->readFully([B)V

    add-int/2addr v5, v9

    new-array v10, v10, [I

    aput-object v10, v1, v7

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v8, v1, v7

    div-int/lit8 v10, v6, 0x2

    aget-byte v12, v11, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, v11, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput v12, v8, v10

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_3
    if-ge v6, v9, :cond_2

    aget-object v8, v1, v7

    aget-byte v10, v11, v6

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput v10, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad DQT bit info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate DQT table index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad DQT table index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-object v1
.end method

.method public static getJPEGQuality(Ljava/util/List;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;)F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->b(Ljava/util/List;)[[I

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->a([[I)I

    move-result p0

    if-ltz p0, :cond_0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public static getJPEGQuality(Ljavax/imageio/stream/ImageInputStream;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffdb

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->readSegments(Ljavax/imageio/stream/ImageInputStream;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->getJPEGQuality(Ljava/util/List;)F

    move-result p0

    return p0
.end method

.method public static getQTables(Ljava/util/List;)[Ljavax/imageio/plugins/jpeg/JPEGQTable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;)[",
            "Ljavax/imageio/plugins/jpeg/JPEGQTable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->b(Ljava/util/List;)[[I

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    new-instance v4, Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-direct {v4, v3}, Ljavax/imageio/plugins/jpeg/JPEGQTable;-><init>([I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->getJPEGQuality(Ljavax/imageio/stream/ImageInputStream;)F

    move-result v3

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " quality: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
