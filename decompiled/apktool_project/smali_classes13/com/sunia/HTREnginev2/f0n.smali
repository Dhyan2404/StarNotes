.class public final Lcom/sunia/HTREnginev2/f0n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/yzn;


# static fields
.field public static final j:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field public static final k:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final l:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final m:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final n:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field public static final o:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final p:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final q:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field public e:Ljava/lang/ref/SoftReference;

.field public final f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field public final g:Lcom/sunia/HTREnginev2/tlo;

.field public h:Ljava/lang/ref/SoftReference;

.field public i:Lorg/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tlo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/f0n;->e:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/f0n;->h:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 4

    new-instance v0, Lorg/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v3}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    const-string v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v0, v1}, Lorg/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->e:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljavax/xml/transform/stream/StreamResult;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SourceResultMismatch"

    invoke-static {p0, p2, p1}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    check-cast p2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v0, Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/f0n;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/f0n;->a()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    const-string v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/tlo;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/tlo;->reset()V

    if-eqz p2, :cond_a

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->i:Lorg/apache/xml/serialize/SerializerFactory;

    if-nez v2, :cond_4

    const-string v2, "xml"

    invoke-static {v2}, Lorg/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lorg/apache/xml/serialize/SerializerFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->i:Lorg/apache/xml/serialize/SerializerFactory;

    :cond_4
    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->i:Lorg/apache/xml/serialize/SerializerFactory;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p2

    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    invoke-direct {v4}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v2, p2, v4}, Lorg/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object p2

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->i:Lorg/apache/xml/serialize/SerializerFactory;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    invoke-direct {v4}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    :goto_2
    invoke-virtual {v2, p2, v4}, Lorg/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object p2

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->i:Lorg/apache/xml/serialize/SerializerFactory;

    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    invoke-direct {v4}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0n;->h:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/parsers/SAXParser;

    if-nez v1, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->reset()V

    goto :goto_5

    :cond_8
    :goto_4
    new-instance v2, Lorg/apache/xerces/parsers/SAXParser;

    invoke-direct {v2, p1}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->h:Ljava/lang/ref/SoftReference;

    :goto_5
    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p2}, Lorg/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0n;->g:Lcom/sunia/HTREnginev2/tlo;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/tlo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "StreamResultNotInitialized"

    invoke-static {p0, p2, v3}, Lcom/sunia/HTREnginev2/oqi;->a(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object p2, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_6
    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->a(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/fzn;->b(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0n;->f:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    throw p1
.end method
