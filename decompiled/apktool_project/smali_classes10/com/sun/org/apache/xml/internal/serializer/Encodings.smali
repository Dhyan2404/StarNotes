.class public final Lcom/sun/org/apache/xml/internal/serializer/Encodings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_MIME_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODINGS_FILE:Ljava/lang/String; = "com/sun/org/apache/xml/internal/serializer/Encodings.properties"

.field private static final ENCODINGS_PROP:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.serialize.encodings"

.field private static final _encodingTableKeyJava:Ljava/util/Hashtable;

.field private static final _encodingTableKeyMime:Ljava/util/Hashtable;

.field private static final _encodings:[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

.field private static final m_defaultLastPrintable:I = 0x7f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->loadEncodingInfo()[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodings:[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->name:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodings:[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p0, v1, v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getEncodingInfo(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getLastPrintable()I
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method public static getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF8"

    const-string v1, "UTF-8"

    if-nez p0, :cond_2

    :try_start_0
    const-string p0, "file.encoding"

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v2, "Cp1252"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ISO8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    move-object v1, p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :catch_0
    :cond_3
    :goto_2
    return-object v1
.end method

.method public static getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodings:[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isHighUTF16Surrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLowUTF16Surrogate(C)Z
    .locals 1

    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadEncodingInfo()[Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sun.org.apache.xalan.internal.serialize.encodings"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/SecuritySupport;->getInstance()Lcom/sun/org/apache/xml/internal/serializer/SecuritySupport;

    move-result-object v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com/sun/org/apache/xml/internal/serializer/Encodings.properties"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    const/16 v6, 0x20

    if-ge v4, v0, :cond_5

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-array v2, v5, [Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-virtual {v1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move v5, v3

    move v7, v5

    :goto_3
    if-ge v5, v0, :cond_9

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_6

    goto :goto_5

    :cond_6
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-direct {v11, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-direct {v12, v10, v8}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v2, v7

    sget-object v12, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    aget-object v13, v2, v7

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_7

    sget-object v9, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    aget-object v12, v2, v7

    invoke-virtual {v9, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v9, v3

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    return-object v2

    :goto_6
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :goto_7
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static toCodePoint(C)I
    .locals 0

    .line 1
    return p0
.end method

.method public static toCodePoint(CC)I
    .locals 1

    .line 2
    const v0, 0xd800

    sub-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0xa

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method

.method private static toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_0

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_0

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    const/4 v3, 0x1

    :cond_0
    aput-char v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
