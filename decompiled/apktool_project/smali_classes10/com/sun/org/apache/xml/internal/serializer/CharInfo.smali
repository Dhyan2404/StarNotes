.class final Lcom/sun/org/apache/xml/internal/serializer/CharInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;
    }
.end annotation


# static fields
.field private static final ASCII_MAX:I = 0x80

.field public static final HTML_ENTITIES_RESOURCE:Ljava/lang/String; = "com.sun.org.apache.xml.internal.serializer.HTMLEntities"

.field private static final LOW_ORDER_BITMASK:I = 0x1f

.field private static final SHIFT_PER_WORD:I = 0x5

.field public static final S_CARRIAGERETURN:C = '\r'

.field public static final S_HORIZONAL_TAB:C = '\t'

.field public static final S_LINEFEED:C = '\n'

.field public static final XML_ENTITIES_RESOURCE:Ljava/lang/String; = "com.sun.org.apache.xml.internal.serializer.XMLEntities"

.field private static m_getCharInfoCache:Ljava/util/Hashtable;


# instance fields
.field private array_of_bits:[I

.field private firstWordNotUsed:I

.field private isCleanTextASCII:[Z

.field private isSpecialAttrASCII:[Z

.field private isSpecialTextASCII:[Z

.field private m_charKey:Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

.field private m_charToString:Ljava/util/Hashtable;

.field final onlyQuotAmpLtGt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charToString:Ljava/util/Hashtable;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrASCII:[Z

    new-array v1, v0, [Z

    .line 6
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    new-array v1, v0, [Z

    .line 7
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    const v1, 0xffff

    .line 8
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->createEmptySetOfIntegers(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->array_of_bits:[I

    .line 9
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charKey:Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 10
    :try_start_0
    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v1

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object p1

    move p3, v7

    .line 12
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-char v9, v8

    .line 16
    invoke-direct {p0, v1, v9}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)V

    .line 17
    invoke-direct {p0, v8}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->extraEntity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v6

    goto :goto_1

    .line 18
    :cond_2
    invoke-direct {p0, v5}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->set(I)V

    .line 19
    invoke-direct {p0, v4}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->set(I)V

    goto/16 :goto_8

    :cond_3
    if-eqz p3, :cond_4

    .line 20
    :try_start_1
    const-class p3, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    :goto_2
    move-object v1, p3

    goto :goto_4

    .line 21
    :cond_4
    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_5

    .line 22
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    move-object v1, p3

    if-nez v1, :cond_6

    .line 24
    :try_start_2
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    :cond_6
    :goto_4
    if-eqz v1, :cond_13

    .line 26
    :try_start_3
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v2, v1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 27
    :catch_2
    :try_start_4
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 28
    :goto_5
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move v2, v7

    :goto_6
    if-eqz v8, :cond_b

    .line 29
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_7

    goto :goto_7

    .line 30
    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-le v9, v7, :cond_9

    .line 31
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    .line 32
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_9

    .line 33
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_8

    .line 35
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 36
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-char v9, v8

    .line 37
    invoke-direct {p0, v10, v9}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)V

    .line 38
    invoke-direct {p0, v8}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->extraEntity(I)Z

    move-result v8

    if-eqz v8, :cond_9

    move v2, v6

    .line 39
    :cond_9
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 40
    :cond_a
    :goto_7
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-direct {p0, v5}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->set(I)V

    .line 43
    invoke-direct {p0, v4}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->set(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move p3, v2

    :goto_8
    move p1, v6

    :goto_9
    const/16 v1, 0x9

    if-ge p1, v0, :cond_10

    if-le v3, p1, :cond_c

    if-eq v5, p1, :cond_c

    if-eq v4, p1, :cond_c

    if-ne v1, p1, :cond_d

    .line 45
    :cond_c
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    const/16 v1, 0x22

    if-ne v1, p1, :cond_e

    goto :goto_a

    .line 46
    :cond_e
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    aput-boolean v6, v1, p1

    .line 47
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    aput-boolean v7, v1, p1

    goto :goto_b

    .line 48
    :cond_f
    :goto_a
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    aput-boolean v7, v1, p1

    .line 49
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    aput-boolean v6, v1, p1

    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 50
    :cond_10
    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    :goto_c
    if-ge v6, v0, :cond_11

    .line 51
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrASCII:[Z

    invoke-direct {p0, v6}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->get(I)Z

    move-result p3

    aput-boolean p3, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_11
    const-string p1, "xml"

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 53
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrASCII:[Z

    aput-boolean v7, p0, v1

    :cond_12
    return-void

    .line 54
    :cond_13
    :try_start_6
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string p3, "ER_RESOURCE_COULD_NOT_FIND"

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_d

    :catch_4
    move-exception p0

    .line 55
    :try_start_7
    new-instance p2, Ljava/lang/RuntimeException;

    sget-object p3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    invoke-virtual {p3, v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_d
    if-eqz v1, :cond_14

    .line 56
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 57
    :catch_5
    :cond_14
    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/sun/org/apache/xml/internal/serializer/CharInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static arrayIndex(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static bit(I)I
    .locals 1

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private createEmptySetOfIntegers(I)[I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->firstWordNotUsed:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->arrayIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    return-object p0
.end method

.method private defineChar2StringMapping(Ljava/lang/String;C)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;-><init>(C)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charToString:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->set(I)V

    return-void
.end method

.method private defineEntity(Ljava/lang/String;C)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->defineChar2StringMapping(Ljava/lang/String;C)V

    return-void
.end method

.method private extraEntity(I)Z
    .locals 0

    const/16 p0, 0x80

    if-ge p1, p0, :cond_0

    const/16 p0, 0x22

    if-eq p1, p0, :cond_0

    const/16 p0, 0x26

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final get(I)Z
    .locals 3

    shr-int/lit8 v0, p1, 0x5

    iget v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->firstWordNotUsed:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->array_of_bits:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public static getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private static getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    return-object p0
.end method

.method private final set(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->setASCIIdirty(I)V

    shr-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->firstWordNotUsed:I

    if-ge v2, v1, :cond_0

    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->firstWordNotUsed:I

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->array_of_bits:[I

    aget v1, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method private setASCIIclean(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, p1

    :cond_0
    return-void
.end method

.method private setASCIIdirty(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getOutputStringForChar(C)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charKey:Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;->setChar(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charToString:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->m_charKey:Lcom/sun/org/apache/xml/internal/serializer/CharInfo$CharKey;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isSpecialAttrChar(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrASCII:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isSpecialTextChar(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextASCII:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isTextASCIIClean(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isCleanTextASCII:[Z

    aget-boolean p0, p0, p1

    return p0
.end method
