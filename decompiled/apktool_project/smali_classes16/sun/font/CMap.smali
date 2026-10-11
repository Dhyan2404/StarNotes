.class abstract Lsun/font/CMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/CMap$UVS;,
        Lsun/font/CMap$NullCMapClass;,
        Lsun/font/CMap$CMapFormat12;,
        Lsun/font/CMap$CMapFormat10;,
        Lsun/font/CMap$CMapFormat8;,
        Lsun/font/CMap$CMapFormat6;,
        Lsun/font/CMap$CMapFormat2;,
        Lsun/font/CMap$CMapFormat0;,
        Lsun/font/CMap$CMapFormat4;
    }
.end annotation


# static fields
.field static final Big5Encoding:S = 0x4s

.field static final GBKEncoding:S = 0x3s

.field static final INTMASK:I = 0x7fffffff

.field static final JohabEncoding:S = 0x6s

.field static final MSUnicodeSurrogateEncoding:S = 0xas

.field static final SHORTMASK:I = 0xffff

.field static final ShiftJISEncoding:S = 0x2s

.field static final WansungEncoding:S = 0x5s

.field static final converterMaps:[[C

.field static final noSuchChar:C = '\ufffd'

.field public static final theNullCmap:Lsun/font/CMap$NullCMapClass;


# instance fields
.field uvs:Lsun/font/CMap$UVS;

.field xlat:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [[C

    sput-object v0, Lsun/font/CMap;->converterMaps:[[C

    new-instance v0, Lsun/font/CMap$NullCMapClass;

    invoke-direct {v0}, Lsun/font/CMap$NullCMapClass;-><init>()V

    sput-object v0, Lsun/font/CMap;->theNullCmap:Lsun/font/CMap$NullCMapClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/CMap;->uvs:Lsun/font/CMap$UVS;

    return-void
.end method

.method public static createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;
    .locals 6

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    :goto_0
    int-to-long v2, v2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    int-to-long v4, p1

    add-long/2addr v4, v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    const-string v2, "Cmap subtable overflows buffer."

    invoke-static {v2}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    new-instance v0, Lsun/font/CMap$CMapFormat12;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat12;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cmap format unimplemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance v0, Lsun/font/CMap$CMapFormat10;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat10;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_4
    new-instance v0, Lsun/font/CMap$CMapFormat8;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat8;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_5
    new-instance v0, Lsun/font/CMap$CMapFormat6;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat6;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_6
    new-instance v0, Lsun/font/CMap$CMapFormat4;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat4;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_7
    new-instance v0, Lsun/font/CMap$CMapFormat2;

    invoke-direct {v0, p0, p1, p2}, Lsun/font/CMap$CMapFormat2;-><init>(Ljava/nio/ByteBuffer;I[C)V

    return-object v0

    :cond_8
    new-instance p2, Lsun/font/CMap$CMapFormat0;

    invoke-direct {p2, p0, p1}, Lsun/font/CMap$CMapFormat0;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object p2
.end method

.method private createUVS(Ljava/nio/ByteBuffer;I)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-long v2, p2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string v0, "Cmap UVS subtable overflows buffer."

    invoke-static {v0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lsun/font/CMap$UVS;

    invoke-direct {v0, p1, p2}, Lsun/font/CMap$UVS;-><init>(Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lsun/font/CMap;->uvs:Lsun/font/CMap$UVS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getConverter(S)[C
    .locals 18

    move/from16 v0, p0

    const/4 v1, 0x0

    const v2, 0x8140

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const v2, 0x8141

    const v4, 0xfdfe

    const-string v5, "Johab"

    goto :goto_0

    :cond_1
    const v2, 0xa1a1

    const v4, 0xfede

    const-string v5, "EUC_KR"

    goto :goto_0

    :cond_2
    const v2, 0xa140

    const v4, 0xfefe

    const-string v5, "Big5"

    goto :goto_0

    :cond_3
    const v4, 0xfea0

    const-string v5, "GBK"

    goto :goto_0

    :cond_4
    const v4, 0xfcfc

    const-string v5, "SJIS"

    :goto_0
    const/high16 v6, 0x10000

    :try_start_0
    new-array v7, v6, [C

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    const v10, 0xfffd

    if-ge v9, v6, :cond_5

    aput-char v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    sub-int v9, v4, v2

    const/4 v11, 0x1

    add-int/2addr v9, v11

    mul-int/lit8 v12, v9, 0x2

    new-array v13, v12, [B

    new-array v14, v9, [C

    const/16 v15, 0xdf

    const/16 v1, 0xa1

    if-ne v0, v3, :cond_7

    move v10, v2

    move/from16 v16, v8

    :goto_2
    if-gt v10, v4, :cond_8

    shr-int/lit8 v6, v10, 0x8

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v1, :cond_6

    if-gt v6, v15, :cond_6

    add-int/lit8 v6, v16, 0x1

    const/16 v17, -0x1

    aput-byte v17, v13, v16

    add-int/lit8 v16, v6, 0x1

    aput-byte v17, v13, v6

    move/from16 v6, v16

    goto :goto_3

    :cond_6
    add-int/lit8 v17, v16, 0x1

    int-to-byte v6, v6

    aput-byte v6, v13, v16

    add-int/lit8 v6, v17, 0x1

    and-int/lit16 v1, v10, 0xff

    int-to-byte v1, v1

    aput-byte v1, v13, v17

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v6

    const/16 v1, 0xa1

    const/high16 v6, 0x10000

    goto :goto_2

    :cond_7
    move v1, v2

    move v6, v8

    :goto_4
    if-gt v1, v4, :cond_8

    add-int/lit8 v10, v6, 0x1

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v6

    add-int/lit8 v6, v10, 0x1

    and-int/lit16 v15, v1, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v10

    add-int/lit8 v1, v1, 0x1

    const/16 v15, 0xdf

    goto :goto_4

    :cond_8
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    const-string v4, "\u0000"

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v13, v8, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v14, v8, v9}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    const/16 v1, 0x20

    :goto_5
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_9

    int-to-char v4, v1

    aput-char v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-ne v0, v3, :cond_a

    const/16 v0, 0xdf

    const/16 v1, 0xa1

    :goto_6
    if-gt v1, v0, :cond_a

    add-int/lit16 v3, v1, -0xa1

    const v4, 0xff61

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    invoke-static {v14, v8, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v0, 0x10000

    new-array v1, v0, [C

    :goto_7
    if-ge v8, v0, :cond_c

    aget-char v2, v7, v8

    const v3, 0xfffd

    if-eq v2, v3, :cond_b

    int-to-char v4, v8

    aput-char v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getConverterMap(S)[C
    .locals 2

    sget-object v0, Lsun/font/CMap;->converterMaps:[[C

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    invoke-static {p0}, Lsun/font/CMap;->getConverter(S)[C

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static initialize(Lsun/font/TrueTypeFont;)Lsun/font/CMap;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x636d6170

    invoke-virtual {v0, v1}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1}, Lsun/font/TrueTypeFont;->getTableSize(I)I

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_0
    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v16, 0x4

    if-ge v3, v1, :cond_3

    mul-int/lit8 v17, v3, 0x8

    add-int/lit8 v0, v17, 0x4

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-ne v0, v15, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/16 v14, 0xa

    if-eq v0, v14, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v12, v4

    goto :goto_1

    :pswitch_1
    move v11, v4

    goto :goto_1

    :pswitch_2
    move v10, v4

    goto :goto_1

    :pswitch_3
    move v9, v4

    goto :goto_1

    :pswitch_4
    move v8, v4

    goto :goto_1

    :pswitch_5
    move v7, v4

    goto :goto_1

    :pswitch_6
    move v6, v4

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    const/4 v0, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    if-ne v0, v14, :cond_2

    move v13, v15

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-eqz v4, :cond_b

    if-eqz v5, :cond_4

    invoke-static {v2, v5, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v2, v6, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    invoke-static {v2, v7, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    const/4 v1, 0x2

    invoke-static {v1}, Lsun/font/CMap;->getConverterMap(S)[C

    move-result-object v0

    invoke-static {v2, v8, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    invoke-static {v15}, Lsun/font/CMap;->getConverterMap(S)[C

    move-result-object v0

    invoke-static {v2, v9, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    invoke-static/range {v16 .. v16}, Lsun/font/CMap;->getConverterMap(S)[C

    move-result-object v0

    invoke-static {v2, v10, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_9
    if-eqz v11, :cond_a

    invoke-static {v14}, Lsun/font/CMap;->getConverterMap(S)[C

    move-result-object v0

    invoke-static {v2, v11, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_a
    if-eqz v12, :cond_c

    const/4 v0, 0x6

    invoke-static {v0}, Lsun/font/CMap;->getConverterMap(S)[C

    move-result-object v0

    invoke-static {v2, v12, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-static {v2, v1, v0}, Lsun/font/CMap;->createCMap(Ljava/nio/ByteBuffer;I[C)Lsun/font/CMap;

    move-result-object v0

    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    if-eqz v13, :cond_d

    invoke-direct {v0, v2, v13}, Lsun/font/CMap;->createUVS(Ljava/nio/ByteBuffer;I)V

    :cond_d
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getControlCodeGlyph(IZ)I
    .locals 1

    const/16 p0, 0x10

    const v0, 0xffff

    if-ge p1, p0, :cond_1

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    if-lt p1, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getFormatCharGlyph(I)C
    .locals 0

    const/16 p0, 0x200c

    if-lt p1, p0, :cond_2

    const/16 p0, 0x200f

    if-le p1, p0, :cond_1

    const/16 p0, 0x2028

    if-lt p1, p0, :cond_0

    const/16 p0, 0x202e

    if-le p1, p0, :cond_1

    :cond_0
    const/16 p0, 0x206a

    if-lt p1, p0, :cond_2

    const/16 p0, 0x206f

    if-gt p1, p0, :cond_2

    :cond_1
    const p0, 0xffff

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getGlyph(I)C
.end method

.method public getVariationGlyph(II)C
    .locals 1

    iget-object v0, p0, Lsun/font/CMap;->uvs:Lsun/font/CMap$UVS;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/font/CMap;->getGlyph(I)C

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p2}, Lsun/font/CMap$UVS;->access$000(Lsun/font/CMap$UVS;II)I

    move-result p2

    if-lez p2, :cond_1

    const p0, 0xffff

    and-int/2addr p0, p2

    int-to-char p0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lsun/font/CMap;->getGlyph(I)C

    move-result p0

    :goto_0
    return p0
.end method
