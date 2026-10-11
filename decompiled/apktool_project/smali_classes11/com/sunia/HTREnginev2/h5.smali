.class public abstract Lcom/sunia/HTREnginev2/h5;
.super Lnet/sf/saxon/jaxp/IdentityTransformer;
.source "SourceFile"


# instance fields
.field public final i:Lnet/sf/saxon/s9api/XsltExecutable;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XsltExecutable;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltExecutable;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/jaxp/IdentityTransformer;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/h5;->j:Ljava/util/Map;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    return-void
.end method


# virtual methods
.method public b(Ljavax/xml/transform/Result;)Lnet/sf/saxon/s9api/Destination;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltExecutable;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltExecutable;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/Writer;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    :try_start_2
    const-string v2, "file"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltExecutable;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/s9api/Serializer;->setCloseOnCompletion(Z)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getLocalOutputProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://saxon.sf.net/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "next-in-chain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_6
    invoke-static {v1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Failed to create output file"

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create output file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System ID in Result object is not a valid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "StreamResult supplies neither an OutputStream nor a Writer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of p0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz p0, :cond_9

    new-instance p0, Lnet/sf/saxon/s9api/SAXDestination;

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SAXDestination;-><init>(Lorg/xml/sax/ContentHandler;)V

    :goto_2
    move-object p1, p0

    goto :goto_4

    :cond_9
    instance-of p0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz p0, :cond_b

    move-object p0, p1

    check-cast p0, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p0}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_a

    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1, p0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    :goto_3
    new-instance p1, Lnet/sf/saxon/s9api/DOMDestination;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/DOMDestination;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_4

    :cond_b
    instance-of p0, p1, Lnet/sf/saxon/event/Receiver;

    if-eqz p0, :cond_d

    new-instance p0, Lnet/sf/saxon/jaxp/ReceivingDestination;

    check-cast p1, Lnet/sf/saxon/event/Receiver;

    invoke-direct {p0, p1}, Lnet/sf/saxon/jaxp/ReceivingDestination;-><init>(Lnet/sf/saxon/event/Receiver;)V

    goto :goto_2

    :cond_c
    :goto_4
    return-object p1

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public clearParameters()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h5;->j:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h5;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheetOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltExecutable;->getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUnderlyingController()Lnet/sf/saxon/Controller;
.end method

.method public getUnderlyingXsltExecutable()Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    return-object p0
.end method

.method public abstract newXMLFilter()Lorg/xml/sax/XMLFilter;
.end method

.method public abstract setConvertedParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h5;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h5;->i:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltExecutable;->getGlobalParameters()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;->getUnderlyingDeclaredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    :try_start_0
    instance-of v2, p2, Lnet/sf/saxon/om/Sequence;

    if-eqz v2, :cond_1

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    goto :goto_0

    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v2, :cond_3

    new-instance v2, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {v2, p2}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/h5;->getUnderlyingController()Lnet/sf/saxon/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_4

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-direct {v2, v5, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, p2, v0, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-static {p2}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/h5;->setConvertedParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
