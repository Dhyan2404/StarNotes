.class public Lnet/sf/saxon/s9api/Processor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/Configuration$ApiProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/Processor$a;
    }
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Lnet/sf/saxon/s9api/SchemaManager;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/Configuration;->readConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->a()Lnet/sf/saxon/s9api/SchemaManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->f:Lnet/sf/saxon/s9api/SchemaManager;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    return-void

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->a()Lnet/sf/saxon/s9api/SchemaManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->f:Lnet/sf/saxon/s9api/SchemaManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->a()Lnet/sf/saxon/s9api/SchemaManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->f:Lnet/sf/saxon/s9api/SchemaManager;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lnet/sf/saxon/Configuration;

    invoke-direct {p1}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Comparator;)Lnet/sf/saxon/lib/StringCollator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/lib/StringCollator;"
        }
    .end annotation

    instance-of v0, p1, Ljava/text/RuleBasedCollator;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;

    check-cast p1, Ljava/text/RuleBasedCollator;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/RuleBasedSubstringMatcher;-><init>(Ljava/lang/String;Ljava/text/RuleBasedCollator;)V

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/sort/SimpleCollation;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/SimpleCollation;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/s9api/SchemaManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declareCollation(Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lnet/sf/saxon/s9api/Processor;->b(Ljava/lang/String;Ljava/util/Comparator;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->registerCollation(Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot redeclare the HTML5 caseblind collation URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot redeclare the Unicode codepoint collation URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sf/saxon/lib/Feature<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSaxonEdition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSaxonProductVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaManager()Lnet/sf/saxon/s9api/SchemaManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->f:Lnet/sf/saxon/s9api/SchemaManager;

    return-object p0
.end method

.method public getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXMLVersion()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const-string p0, "1.0"

    return-object p0

    :cond_0
    const-string p0, "1.1"

    return-object p0
.end method

.method public isSchemaAware()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result p0

    return p0
.end method

.method public newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/DocumentBuilder;

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/DocumentBuilder;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public newJsonBuilder()Lnet/sf/saxon/s9api/JsonBuilder;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/JsonBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/JsonBuilder;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public newPush(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/s9api/push/Push;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    new-instance v1, Lnet/sf/saxon/event/PushToReceiver;

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/event/PushToReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object v1
.end method

.method public newSerializer()Lnet/sf/saxon/s9api/Serializer;
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/s9api/Serializer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Serializer;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    return-object v0
.end method

.method public newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;
    .locals 1

    .line 6
    new-instance v0, Lnet/sf/saxon/s9api/Serializer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Serializer;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    .line 7
    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Serializer;->setOutputFile(Ljava/io/File;)V

    return-object v0
.end method

.method public newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/s9api/Serializer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Serializer;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    .line 3
    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public newSerializer(Ljava/io/Writer;)Lnet/sf/saxon/s9api/Serializer;
    .locals 1

    .line 4
    new-instance v0, Lnet/sf/saxon/s9api/Serializer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/Serializer;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    .line 5
    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Serializer;->setOutputWriter(Ljava/io/Writer;)V

    return-object v0
.end method

.method public newXPathCompiler()Lnet/sf/saxon/s9api/XPathCompiler;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XPathCompiler;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XPathCompiler;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    return-object v0
.end method

.method public newXQueryCompiler()Lnet/sf/saxon/s9api/XQueryCompiler;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XQueryCompiler;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XQueryCompiler;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    return-object v0
.end method

.method public newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XsltCompiler;-><init>(Lnet/sf/saxon/s9api/Processor;)V

    return-object v0
.end method

.method public registerCollection(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceCollection;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->registerCollection(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceCollection;)V

    return-void
.end method

.method public registerExtensionFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    .locals 0

    .line 3
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->registerExtensionFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerExtensionFunction(Lnet/sf/saxon/s9api/ExtensionFunction;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/s9api/Processor$a;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/Processor$a;-><init>(Lnet/sf/saxon/s9api/ExtensionFunction;)V

    .line 2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/Processor;->registerExtensionFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V

    return-void
.end method

.method public varargs setCatalogFiles([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/lib/ConfigurableResourceResolver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ConfigurableResourceResolver;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/CommandLineOptions;->setCatalogFiles(Lnet/sf/saxon/lib/ConfigurableResourceResolver;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "http://saxon.sf.net/feature/configuration"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sf/saxon/lib/Feature<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lnet/sf/saxon/lib/Feature;->CONFIGURATION:Lnet/sf/saxon/lib/Feature;

    if-ne p1, v0, :cond_0

    .line 5
    check-cast p2, Lnet/sf/saxon/Configuration;

    iput-object p2, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->setXMLVersion(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XmlVersion"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->setXMLVersion(I)V

    :goto_0
    return-void
.end method

.method public writeXdmValue(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    instance-of v0, p2, Lnet/sf/saxon/s9api/Serializer;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/s9api/Serializer;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/s9api/Serializer;->serializeXdmValue(Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->obtainDefaultSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->iterator()Lnet/sf/saxon/s9api/XdmSequenceIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/high16 v2, 0x80000

    invoke-virtual {v0, p1, v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
