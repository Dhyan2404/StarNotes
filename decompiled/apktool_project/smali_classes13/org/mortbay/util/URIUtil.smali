.class public Lorg/mortbay/util/URIUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "org.mortbay.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-gez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, v0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const-string v3, "/"

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_1
    return-object p0

    :cond_9
    :goto_2
    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    return-object p0

    :cond_a
    return-object p1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x2e

    if-lez v0, :cond_4

    sub-int v6, v0, v2

    if-eq v6, v4, :cond_2

    if-eq v6, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_4

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_0

    :cond_4
    if-lt v2, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v7, -0x1

    move v8, p0

    move v9, v7

    move v10, v9

    :goto_2
    if-lez v0, :cond_1a

    sub-int v11, v0, v2

    if-eq v11, v4, :cond_d

    if-eq v11, v3, :cond_7

    if-lez v8, :cond_16

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_16

    if-ltz v2, :cond_6

    move v10, v2

    goto :goto_3

    :cond_6
    move v10, p0

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ne v9, v11, :cond_16

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-ne v11, v5, :cond_16

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    :cond_7
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-ne v11, v5, :cond_b

    add-int/lit8 v11, v2, 0x2

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-eq v11, v5, :cond_8

    goto :goto_6

    :cond_8
    if-gez v9, :cond_9

    move v9, v0

    :cond_9
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v2, -0x1

    :goto_5
    if-ltz v0, :cond_a

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-eq v10, v1, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_2

    :cond_b
    :goto_6
    if-lez v8, :cond_16

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_16

    if-ltz v2, :cond_c

    move v10, v2

    goto :goto_7

    :cond_c
    move v10, p0

    :goto_7
    if-lez v10, :cond_16

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ne v9, v11, :cond_16

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-ne v11, v5, :cond_16

    goto :goto_4

    :cond_d
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-eq v12, v5, :cond_f

    if-lez v8, :cond_16

    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_16

    if-ltz v2, :cond_e

    move v10, v2

    goto :goto_8

    :cond_e
    move v10, p0

    :goto_8
    if-lez v10, :cond_16

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-ne v9, v11, :cond_16

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-ne v11, v5, :cond_16

    goto :goto_4

    :cond_f
    if-gez v2, :cond_10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-le v12, v4, :cond_10

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_10

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_10

    goto :goto_c

    :cond_10
    if-gez v9, :cond_11

    move v9, v0

    :cond_11
    if-ltz v2, :cond_14

    if-nez v2, :cond_12

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-ne v0, v10, :cond_13

    move v10, v11

    goto :goto_9

    :cond_13
    move v10, v2

    :goto_9
    add-int/lit8 v0, v2, -0x1

    :goto_a
    if-ltz v0, :cond_19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-eq v11, v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_14
    :goto_b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-ge v9, v10, :cond_15

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_15

    add-int/lit8 v9, v9, 0x1

    :cond_15
    move v10, v11

    :cond_16
    :goto_c
    if-gtz v8, :cond_18

    if-ltz v10, :cond_18

    if-lt v9, v10, :cond_18

    invoke-virtual {v6, v10, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    if-lez v8, :cond_17

    move v9, v0

    move v10, v7

    goto :goto_d

    :cond_17
    move v9, v7

    move v10, v9

    :cond_18
    :goto_d
    add-int/lit8 v0, v2, -0x1

    :goto_e
    if-ltz v0, :cond_19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-eq v11, v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_19
    move v13, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_2

    :cond_1a
    if-lez v8, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    if-ltz v9, :cond_1c

    invoke-virtual {v6, v10, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1c
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1d
    :goto_f
    return-object p0
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x3f

    const/16 v5, 0x2f

    const/4 v6, 0x2

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_2

    if-eq v7, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v3, v6, :cond_5

    return-object p0

    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v7, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_3
    if-ge v2, v0, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_7

    if-eq v8, v4, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v1

    goto :goto_4

    :cond_6
    sub-int/2addr v0, v2

    invoke-virtual {v6, v7, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7
    add-int/lit8 v9, v3, 0x1

    if-nez v3, :cond_8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    move v3, v9

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    :goto_6
    return-object p0
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_5

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_2

    add-int/lit8 v8, v4, 0x2

    if-ge v8, v1, :cond_2

    if-nez v0, :cond_1

    .line 3
    new-array v0, v1, [C

    .line 4
    new-array v3, v1, [B

    .line 5
    invoke-virtual {p0, v2, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x10

    const/4 v10, 0x2

    .line 6
    invoke-static {p0, v4, v10, v9}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    move v5, v7

    move v4, v8

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-lez v5, :cond_4

    .line 7
    :try_start_0
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v8, v3, v2, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 9
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v2, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 10
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v6, v5

    move v5, v2

    :cond_4
    add-int/lit8 v8, v6, 0x1

    .line 11
    aput-char v7, v0, v6

    move v6, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    return-object p0

    :cond_6
    if-lez v5, :cond_7

    .line 12
    :try_start_1
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 13
    :catch_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 14
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v6, p0

    .line 16
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    add-int v4, v2, p1

    .line 17
    aget-byte v5, p0, v4

    const/16 v6, 0x25

    if-ne v5, v6, :cond_0

    add-int/lit8 v6, v2, 0x2

    if-ge v6, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0x10

    const/4 v5, 0x2

    .line 18
    invoke-static {p0, v4, v5, v2}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v5, v2

    move v2, v6

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 19
    new-array v0, p2, [B

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_2

    add-int v6, v4, p1

    .line 20
    aget-byte v6, p0, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 21
    aput-byte v5, v0, v3

    move v3, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 22
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    sget-object p0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 12

    const/16 v0, 0x3f

    const/16 v1, 0x3e

    const/16 v2, 0x3c

    const/16 v3, 0x3b

    const/16 v4, 0x23

    const/16 v5, 0x22

    const/16 v6, 0x27

    const/16 v7, 0x25

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-nez p0, :cond_2

    move v10, v9

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 5
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_0

    if-eq v11, v7, :cond_0

    if-eq v11, v6, :cond_0

    if-eq v11, v5, :cond_0

    if-eq v11, v4, :cond_0

    if-eq v11, v3, :cond_0

    if-eq v11, v2, :cond_0

    if-eq v11, v1, :cond_0

    if-eq v11, v0, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_2
    monitor-enter p0

    .line 8
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 9
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_b

    if-eq v10, v7, :cond_a

    if-eq v10, v6, :cond_9

    if-eq v10, v5, :cond_8

    if-eq v10, v4, :cond_7

    if-eq v10, v3, :cond_6

    if-eq v10, v2, :cond_5

    if-eq v10, v1, :cond_4

    if-eq v10, v0, :cond_3

    .line 10
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v10, "%3F"

    .line 11
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v10, "%3E"

    .line 12
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v10, "%3C"

    .line 13
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const-string v10, "%3B"

    .line 14
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    const-string v10, "%23"

    .line 15
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const-string v10, "%22"

    .line 16
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    const-string v10, "%27"

    .line 17
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    const-string v10, "%25"

    .line 18
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_b
    const-string v10, "%20"

    .line 19
    invoke-virtual {p0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 20
    :cond_c
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static encodeString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x25

    if-nez p0, :cond_3

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_2
    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    monitor-enter p0

    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lorg/mortbay/util/StringUtil;->append(Ljava/lang/StringBuffer;BI)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_2
    if-lez v1, :cond_5

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static stripPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
