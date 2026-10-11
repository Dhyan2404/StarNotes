.class public Lnet/sf/saxon/s9api/DocumentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/DocumentBuilder$a;
    }
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/s9api/SchemaValidator;

.field public c:Z

.field public d:Z

.field public e:Lnet/sf/saxon/om/TreeModel;

.field public f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

.field public g:Ljava/net/URI;

.field public h:Lnet/sf/saxon/s9api/XQueryExecutable;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    iput-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    sget-object v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->UNSPECIFIED:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    iput-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ParseOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    sget-object v1, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->UNSPECIFIED:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    sget-object v3, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->IGNORABLE:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    if-eq v0, v3, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "When schema validation is used, the whitespace stripping policy must be IGNORABLE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "When DTD validation is used, the whitespace stripping policy must be IGNORABLE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iget-boolean v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->c:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->isLax()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    :cond_4
    invoke-virtual {v0, v4}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getDocumentElementName()Lnet/sf/saxon/s9api/QName;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getDocumentElementName()Lnet/sf/saxon/s9api/QName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelElement(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_5
    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getDocumentElementType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getDocumentElementType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    :cond_6
    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->isUseXsiSchemaLocation()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setUseXsiSchemaLocation(Z)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->isExpandAttributeDefaults()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getValidationParameters()Lnet/sf/saxon/type/ValidationParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setValidationParams(Lnet/sf/saxon/type/ValidationParams;)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/SchemaValidator;->getInvalidityHandler()Lnet/sf/saxon/lib/InvalidityHandler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setInvalidityHandler(Lnet/sf/saxon/lib/InvalidityHandler;)V

    :cond_7
    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    if-eqz v3, :cond_8

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setModel(Lnet/sf/saxon/om/TreeModel;)V

    :cond_8
    iget-object v3, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    if-eqz v3, :cond_a

    if-eq v3, v1, :cond_a

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->ordinal()I

    move-result v1

    if-ne v1, v2, :cond_9

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->makeStripper()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_a
    :goto_2
    iget-boolean v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->d:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->g:Ljava/net/URI;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->h:Lnet/sf/saxon/s9api/XQueryExecutable;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->makeDocumentProjector(Lnet/sf/saxon/query/XQueryExpression;)Lnet/sf/saxon/event/FilterFactory;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_c
    instance-of p0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz p0, :cond_d

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    :cond_d
    return-object v0
.end method

.method public final b(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->obtainDefaultSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lnet/sf/saxon/s9api/SchemaValidator;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p2}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    instance-of p2, p0, Lnet/sf/saxon/event/ProxyReceiver;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lnet/sf/saxon/event/ProxyReceiver;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/event/ProxyReceiver;->setUnderlyingReceiver(Lnet/sf/saxon/event/Receiver;)V

    :cond_0
    return-object p0

    :cond_1
    return-object p1
.end method

.method public build(Ljava/io/File;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p0

    return-object p0
.end method

.method public build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->a(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    .line 4
    new-instance p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->g:Ljava/net/URI;

    return-object p0
.end method

.method public getDocumentProjectionQuery()Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->h:Lnet/sf/saxon/s9api/XQueryExecutable;

    return-object p0
.end method

.method public getSchemaValidator()Lnet/sf/saxon/s9api/SchemaValidator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    return-object p0
.end method

.method public getTreeModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    return-object p0
.end method

.method public getWhitespaceStrippingPolicy()Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    return-object p0
.end method

.method public isDTDValidation()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->c:Z

    return p0
.end method

.method public isLineNumbering()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->d:Z

    return p0
.end method

.method public newBuildingContentHandler()Lnet/sf/saxon/s9api/BuildingContentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->g:Ljava/net/URI;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->d:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    new-instance v1, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/s9api/DocumentBuilder;->b(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/s9api/DocumentBuilder$a;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/s9api/DocumentBuilder$a;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)V

    return-object v1
.end method

.method public newBuildingStreamWriter()Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->d:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    new-instance v1, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/s9api/DocumentBuilder;->b(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/s9api/BuildingStreamWriterImpl;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;)V

    return-object v1
.end method

.method public parse(Ljava/io/File;Lnet/sf/saxon/s9api/Destination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/DocumentBuilder;->parse(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    return-void
.end method

.method public parse(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->a(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    .line 3
    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    invoke-interface {p2, p0, v1}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBaseURI(Ljava/net/URI;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->g:Ljava/net/URI;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied base URI must be absolute"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDTDValidation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->c:Z

    return-void
.end method

.method public setDocumentProjectionQuery(Lnet/sf/saxon/s9api/XQueryExecutable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->h:Lnet/sf/saxon/s9api/XQueryExecutable;

    return-void
.end method

.method public setLineNumbering(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->d:Z

    return-void
.end method

.method public setSchemaValidator(Lnet/sf/saxon/s9api/SchemaValidator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->b:Lnet/sf/saxon/s9api/SchemaValidator;

    return-void
.end method

.method public setTreeModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->e:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public setWhitespaceStrippingPolicy(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->f:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    return-void
.end method

.method public wrap(Ljava/lang/Object;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/s9api/XdmNode;

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied NodeInfo was created using a different Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    iget-object p0, p0, Lnet/sf/saxon/s9api/DocumentBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmItem;->wrapItem(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a recognized external node type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
