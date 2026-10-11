.class public final Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

.field private static final PROP_DIR:Ljava/lang/String; = "com/sun/org/apache/xml/internal/serializer/"

.field private static final PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I = 0x1c

.field private static final S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

.field private static final S_XALAN_PREFIX_LEN:I = 0x10

.field private static final S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final S_XSLT_PREFIX_LEN:I = 0xc

.field private static m_html_properties:Ljava/util/Properties;

.field private static m_synch_object:Ljava/lang/Integer;

.field private static m_text_properties:Ljava/util/Properties;

.field private static m_unknown_properties:Ljava/util/Properties;

.field private static m_xml_properties:Ljava/util/Properties;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAccessControllerClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "xslt.output."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p1, "org.apache.xslt."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{http://xml.apache.org/xalan}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string p1, "\\u003a"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    add-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static final getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    if-nez v2, :cond_0

    const-string v2, "output_xml.properties"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    goto/16 :goto_4

    :cond_1
    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    if-nez v0, :cond_2

    const-string v0, "output_html.properties"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :cond_3
    :try_start_5
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    if-nez v1, :cond_5

    const-string v1, "output_text.properties"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    sget-object v2, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    sput-object v2, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v3, "encoding"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :cond_5
    move-object v0, v2

    :goto_2
    :try_start_7
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :cond_6
    :try_start_8
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    if-nez v0, :cond_7

    const-string v0, "output_unknown.properties"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    sget-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    sput-object v1, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :cond_8
    :try_start_a
    sget-object p0, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v0

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_5
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v4, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory$1;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    const-class v3, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_3
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :try_start_4
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-object v4, v2

    :goto_3
    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-static {v0, v5}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-static {v4, v5}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_4
    if-ne p1, v3, :cond_5

    if-eq v0, v4, :cond_2

    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_a

    :catch_4
    move-exception v1

    move-object v4, v2

    :goto_5
    move-object v2, v3

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v4, v2

    :goto_6
    move-object v2, v3

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object v3, v2

    goto :goto_a

    :catch_6
    move-exception v1

    move-object v4, v2

    :goto_7
    if-nez p1, :cond_7

    :try_start_5
    throw v1

    :cond_7
    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_7
    move-exception v1

    move-object v4, v2

    :goto_8
    if-nez p1, :cond_8

    throw v1

    :cond_8
    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    move-object v3, v2

    :goto_9
    move-object v2, v4

    :goto_a
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    throw p0
.end method
