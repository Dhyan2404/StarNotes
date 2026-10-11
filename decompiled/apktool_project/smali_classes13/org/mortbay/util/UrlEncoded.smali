.class public Lorg/mortbay/util/UrlEncoded;
.super Lorg/mortbay/util/MultiMap;
.source "SourceFile"


# static fields
.field public static final ENCODING:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 3
    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 4
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 5
    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/UrlEncoded;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mortbay/util/MultiMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_c

    int-to-char v5, v5

    const/16 v6, 0x25

    if-eq v5, v6, :cond_8

    const/16 v6, 0x26

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_3
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ""

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    if-eqz v3, :cond_6

    invoke-virtual {p1, v3, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, ""

    invoke-virtual {p1, v5, v3}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v5, :cond_a

    if-gez v6, :cond_9

    goto :goto_3

    :cond_9
    int-to-byte v5, v5

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v6, v6

    invoke-static {v6}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v6

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    :goto_3
    if-ltz p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-gt v4, p2, :cond_b

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-eqz v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p1, v3, p0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    :goto_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v9, 0x2b

    const/4 v10, 0x2

    const/16 v11, 0x25

    if-eqz v3, :cond_13

    invoke-static/range {p3 .. p3}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_9

    :cond_0
    move v12, v7

    :goto_0
    if-ge v12, v2, :cond_10

    add-int v13, v1, v12

    :try_start_0
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ltz v14, :cond_d

    if-le v14, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    if-ne v14, v9, :cond_3

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_3
    if-ne v14, v11, :cond_c

    add-int/lit8 v15, v12, 0x2

    if-ge v15, v2, :cond_c

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    new-array v13, v2, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move v15, v7

    :goto_1
    if-ltz v14, :cond_b

    if-gt v14, v6, :cond_b

    if-ne v14, v11, :cond_8

    add-int/lit8 v14, v12, 0x2

    if-ge v14, v2, :cond_7

    add-int/lit8 v14, v15, 0x1

    add-int v16, v1, v12

    add-int/lit8 v6, v16, 0x1

    :try_start_1
    invoke-static {v0, v6, v10, v4}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v13, v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v12, 0x3

    :cond_5
    move v15, v14

    goto :goto_4

    :catch_0
    add-int/lit8 v6, v14, -0x1

    :try_start_2
    aput-byte v11, v13, v6

    :goto_2
    add-int/lit8 v12, v12, 0x1

    add-int v6, v12, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v11, :cond_5

    add-int/lit8 v15, v14, 0x1

    if-ne v6, v9, :cond_6

    move v6, v8

    :cond_6
    int-to-byte v6, v6

    aput-byte v6, v13, v14

    move v14, v15

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v15, 0x1

    aput-byte v11, v13, v15

    goto :goto_3

    :cond_8
    if-ne v14, v9, :cond_9

    add-int/lit8 v6, v15, 0x1

    aput-byte v8, v13, v15

    goto :goto_3

    :cond_9
    add-int/lit8 v6, v15, 0x1

    int-to-byte v14, v14

    aput-byte v14, v13, v15

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v15, v6

    :goto_4
    if-lt v12, v2, :cond_a

    goto :goto_5

    :cond_a
    add-int v6, v1, v12

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0xff

    goto :goto_1

    :cond_b
    :goto_5
    add-int/lit8 v12, v12, -0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v13, v7, v15, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_f

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_d
    :goto_6
    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_e
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_f
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0xff

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_10
    if-nez v5, :cond_12

    if-nez v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_11

    return-object v0

    :cond_11
    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    :goto_9
    if-ge v7, v2, :cond_1f

    add-int v3, v1, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0xff

    if-ltz v6, :cond_1c

    if-le v6, v12, :cond_14

    goto/16 :goto_d

    :cond_14
    if-ne v6, v9, :cond_16

    if-nez v5, :cond_15

    new-instance v5, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v5, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_16
    if-ne v6, v11, :cond_1b

    add-int/lit8 v13, v7, 0x2

    if-ge v13, v2, :cond_1b

    if-nez v5, :cond_17

    new-instance v5, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v5, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    :goto_a
    if-ne v6, v11, :cond_1a

    add-int/lit8 v3, v7, 0x2

    if-ge v3, v2, :cond_1a

    add-int v3, v1, v7

    add-int/lit8 v3, v3, 0x1

    :try_start_3
    invoke-static {v0, v3, v10, v4}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v7, v7, 0x3

    goto :goto_c

    :catch_2
    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_b
    add-int/lit8 v7, v7, 0x1

    add-int v3, v7, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v11, :cond_19

    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v13

    if-ne v3, v9, :cond_18

    move v3, v8

    :cond_18
    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_19
    :goto_c
    if-ge v7, v2, :cond_17

    add-int v3, v1, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_a

    :cond_1a
    add-int/lit8 v7, v7, -0x1

    goto :goto_e

    :cond_1b
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_1c
    :goto_d
    if-nez v5, :cond_1d

    new-instance v5, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v5, v2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_1d
    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1e
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    :cond_1f
    if-nez v5, :cond_21

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_20

    return-object v0

    :cond_20
    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-virtual {v5}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_14

    const-string v0, "UTF-8"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 18
    :cond_0
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    return-void

    :cond_1
    const-string v0, "UTF-16"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    return-void

    .line 22
    :cond_2
    monitor-enter p1

    .line 23
    :try_start_0
    new-instance v0, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-direct {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    .line 24
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-lez v7, :cond_10

    int-to-char v8, v7

    const/16 v9, 0x25

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_e

    const/16 v9, 0x26

    if-eq v8, v9, :cond_a

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_9

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_6

    if-ne v4, v10, :cond_4

    int-to-byte v4, v7

    .line 25
    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    move v4, v11

    goto :goto_4

    :cond_4
    if-ne v4, v11, :cond_5

    shl-int/lit8 v4, v5, 0x4

    int-to-byte v7, v7

    .line 26
    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    move v4, v2

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    .line 28
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 29
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_8

    const-string v3, ""

    goto :goto_1

    .line 30
    :cond_8
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    :goto_1
    invoke-virtual {v0, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_4

    :cond_9
    const/16 v7, 0x20

    .line 32
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 33
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-nez v7, :cond_b

    const-string v7, ""

    goto :goto_2

    .line 34
    :cond_b
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    :goto_2
    invoke-virtual {v0, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    if-eqz v3, :cond_c

    .line 36
    invoke-virtual {p1, v3, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    if-eqz v7, :cond_d

    .line 37
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    const-string v3, ""

    .line 38
    invoke-virtual {p1, v7, v3}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_e
    move v4, v10

    :goto_4
    add-int/2addr v6, v11

    if-ltz p3, :cond_3

    if-gt v6, p3, :cond_f

    goto :goto_0

    .line 39
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-eqz v3, :cond_12

    if-nez p0, :cond_11

    const-string p0, ""

    goto :goto_5

    .line 41
    :cond_11
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    :goto_5
    invoke-virtual {v0, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    .line 43
    invoke-virtual {p1, v3, p0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    if-lez p0, :cond_13

    .line 44
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    :cond_13
    :goto_6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_14
    :goto_7
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    return-void
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 2
    :cond_0
    monitor-enter p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v4, v0

    move v3, v1

    move v5, v3

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_a

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x25

    if-eq v6, v8, :cond_9

    const/16 v8, 0x26

    if-eq v6, v8, :cond_4

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_9

    const/16 v8, 0x3d

    if-eq v6, v8, :cond_1

    goto :goto_5

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_5

    :cond_2
    if-eqz v5, :cond_3

    add-int/lit8 v4, v2, 0x1

    sub-int v2, v3, v2

    sub-int/2addr v2, v7

    .line 5
    invoke-static {p0, v4, v2, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    :goto_2
    move v5, v1

    move v2, v3

    goto :goto_5

    :cond_4
    sub-int v6, v3, v2

    sub-int/2addr v6, v7

    if-nez v6, :cond_5

    const-string v2, ""

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-eqz v5, :cond_6

    .line 6
    invoke-static {p0, v2, v6, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v4, :cond_7

    .line 7
    invoke-virtual {p1, v4, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, ""

    .line 9
    invoke-virtual {p1, v2, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_4
    move-object v4, v0

    goto :goto_2

    :cond_9
    move v5, v7

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_d

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    if-nez v0, :cond_b

    const-string p0, ""

    goto :goto_6

    :cond_b
    add-int/2addr v2, v7

    if-eqz v5, :cond_c

    .line 11
    invoke-static {p0, v2, v0, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    :goto_6
    invoke-virtual {p1, v4, p0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 13
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_f

    if-eqz v5, :cond_e

    add-int/lit8 v0, v2, 0x1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    invoke-static {p0, v0, v1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_e
    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    const-string p2, ""

    .line 15
    invoke-virtual {p1, p0, p2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    :cond_f
    :goto_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-16"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const p2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    if-ge v1, p2, :cond_1

    int-to-char v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_c

    int-to-char v5, v4

    const/16 v6, 0x25

    if-eq v5, v6, :cond_8

    const/16 v6, 0x26

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_1

    int-to-byte v4, v4

    .line 24
    invoke-virtual {v0, v4}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    int-to-byte v4, v4

    .line 25
    invoke-virtual {v0, v4}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_3

    :cond_3
    const/16 v4, 0x20

    .line 28
    invoke-virtual {v0, v4}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    .line 29
    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    :goto_1
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    if-eqz v3, :cond_6

    .line 31
    invoke-virtual {p1, v3, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, ""

    .line 33
    invoke-virtual {p1, v4, v3}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object v3, v1

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 35
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v4, :cond_a

    if-gez v5, :cond_9

    goto :goto_3

    :cond_9
    int-to-byte v4, v4

    .line 36
    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    :cond_a
    :goto_3
    if-ltz p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_b

    goto :goto_0

    .line 37
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Form too large"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-eqz v3, :cond_e

    .line 38
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    :goto_4
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 40
    invoke-virtual {p1, v3, p0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 41
    :cond_e
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_f

    .line 42
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_f
    :goto_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V

    return-void
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 5

    .line 2
    monitor-enter p3

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-ge p1, p2, :cond_9

    .line 3
    :try_start_0
    aget-byte v2, p0, p1

    and-int/lit16 v3, v2, 0xff

    int-to-char v3, v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_7

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p4, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p4, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_3

    :cond_2
    const/16 v2, 0x20

    .line 8
    invoke-virtual {p4, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_1
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p3, v1, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ""

    .line 13
    invoke-virtual {p3, v2, v1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    move-object v1, v0

    goto :goto_3

    :cond_7
    add-int/lit8 v2, p1, 0x2

    if-ge v2, p2, :cond_8

    add-int/lit8 p1, p1, 0x1

    .line 14
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 p1, p1, 0x1

    aget-byte v3, p0, p1

    invoke-static {v3}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p4, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_b

    .line 15
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_a

    const-string p0, ""

    goto :goto_4

    :cond_a
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    :goto_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 17
    invoke-virtual {p3, v1, p0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 18
    :cond_b
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_c

    .line 19
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p3, p0, p1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_c
    :goto_5
    monitor-exit p3

    return-void

    :goto_6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x26

    const/16 v5, 0x3d

    if-nez v3, :cond_2

    .line 13
    invoke-static {v2, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_7

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_7

    if-lez v6, :cond_3

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    :cond_3
    invoke-static {v1, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 17
    invoke-static {v2, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_5

    .line 18
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    invoke-static {v7, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24
    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 26
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5
    :goto_0
    array-length v1, v0

    .line 6
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v1, :cond_8

    .line 7
    aget-byte v7, v0, v5

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    add-int/lit8 v4, v6, 0x1

    const/16 v7, 0x2b

    .line 8
    aput-byte v7, v2, v6

    move v6, v4

    :goto_2
    move v4, v3

    goto :goto_4

    :cond_1
    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    :cond_2
    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    :cond_3
    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    :cond_4
    add-int/lit8 v8, v6, 0x1

    .line 9
    aput-byte v7, v2, v6

    move v6, v8

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v6, 0x1

    const/16 v8, 0x25

    .line 10
    aput-byte v8, v2, v6

    and-int/lit16 v6, v7, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    const/16 v8, 0xa

    if-lt v6, v8, :cond_6

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v6, v6, 0x41

    sub-int/2addr v6, v8

    int-to-byte v6, v6

    .line 11
    aput-byte v6, v2, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    .line 12
    aput-byte v6, v2, v4

    :goto_3
    and-int/lit8 v4, v7, 0xf

    int-to-byte v4, v4

    if-lt v4, v8, :cond_7

    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v4, v4, 0x41

    sub-int/2addr v4, v8

    int-to-byte v4, v4

    .line 13
    aput-byte v4, v2, v9

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v2, v9

    goto :goto_2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    return-object p0

    .line 15
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v6, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 16
    :catch_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v6}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mortbay/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/mortbay/util/UrlEncoded;-><init>(Lorg/mortbay/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1, p0, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
