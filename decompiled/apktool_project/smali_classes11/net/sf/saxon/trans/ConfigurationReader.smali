.class public Lnet/sf/saxon/trans/ConfigurationReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/lang/StringBuilder;

.field public i:Ljava/lang/ClassLoader;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XmlProcessingError;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lnet/sf/saxon/trans/packages/PackageLibrary;

.field public l:Lnet/sf/saxon/trans/packages/PackageDetails;

.field public m:Lnet/sf/saxon/Configuration;

.field public n:Lnet/sf/saxon/event/PipelineConfiguration;

.field public final o:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected targetConfig:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->f:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->h:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->i:Ljava/lang/ClassLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->o:Ljava/util/Stack;

    iput-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->p:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->q:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/ConfigurationReader;->b(Ljava/lang/String;)Z

    move-result p4

    const-string v1, "Property "

    const-string v2, "#element"

    if-nez p4, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is not available in SaxonCS"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p4, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-static {p3}, Lnet/sf/saxon/lib/FeatureIndex;->getData(I)Lnet/sf/saxon/lib/FeatureData;

    move-result-object p3

    iget-object p3, p3, Lnet/sf/saxon/lib/FeatureData;->uri:Ljava/lang/String;

    invoke-virtual {p4, p3, v0}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "Value"

    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string p4, "Unknown configuration property"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is not available in Saxon-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {p4}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "J"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid configuration element "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "/@"

    if-nez p3, :cond_1

    new-instance p3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing configuration property "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p2, p3

    goto :goto_1

    :cond_1
    const-string v1, "is not available in"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid configuration property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Supplied value: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; required: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final d(Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/ConfigurationReader;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "uri"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v4, "collation specified with no uri"

    invoke-direct {v3, v4}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :try_start_0
    sget-object p1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    iget-object v3, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-interface {p1, v3, v0, v2}, Lnet/sf/saxon/Platform;->makeCollation(Lnet/sf/saxon/Configuration;Ljava/util/Properties;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v3, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/Configuration;->registerCollation(Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V

    return-void
.end method

.method public endDocument()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/CompilerInfo;->setPackageLibrary(Lnet/sf/saxon/trans/packages/PackageLibrary;)V

    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    const/4 v2, 0x3

    const-string v3, "resources"

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "externalObjectModel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v7}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/ExternalObjectModel;

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->registerExternalObjectModel(Lnet/sf/saxon/lib/ExternalObjectModel;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v9, v1

    const-string v5, "externalObjectModel"

    const/4 v6, 0x0

    const-class v8, Lnet/sf/saxon/lib/ExternalObjectModel;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lnet/sf/saxon/trans/ConfigurationReader;->errorClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "extensionFunction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v7}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->registerExtensionFunction(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v9, v1

    const-string v5, "extensionFunction"

    const/4 v6, 0x0

    const-class v8, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lnet/sf/saxon/trans/ConfigurationReader;->errorClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string v1, "schemaDocument"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/ConfigurationReader;->d(Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->addSchemaSource(Ljavax/xml/transform/Source;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v4, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v4, v1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "schemaComponentModel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/ConfigurationReader;->d(Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->importComponents(Ljavax/xml/transform/Source;)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v4, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v4, v1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "catalogFile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->p:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "fileExtension"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    iget-object v2, p0, Lnet/sf/saxon/trans/ConfigurationReader;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/lib/CatalogResourceResolver;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    :cond_7
    iget v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->h:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public error(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public errorClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid configuration property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/@"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Supplied value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', required value is the name of a class that implements \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setCause(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    const-string v0, "extension"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaType"

    invoke-interface {p1, v2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "fileExtension"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v3, v0, v4, v4}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v3, v2, v4, v4}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/Configuration;->registerFileExtension(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "#element"

    const-string v1, "global"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "allowedProtocols"

    const/16 v1, 0x7c

    const-string v2, "JN"

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "allowExternalFunctions"

    const/4 v1, 0x1

    const-string v3, "J"

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "allowMultiThreading"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "allowOldJavaUriFormat"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "allowSyntaxExtensions"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "collationUriResolver"

    const/4 v1, 0x7

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "collectionFinder"

    const/16 v1, 0x9

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "compileWithTracing"

    const/16 v1, 0xc

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "debugByteCode"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "debugByteCodeDirectory"

    const/16 v1, 0x10

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "defaultCollation"

    const/16 v1, 0x11

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "defaultCollection"

    const/16 v1, 0x12

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "defaultRegexEngine"

    const/16 v1, 0x15

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "displayByteCode"

    const/16 v1, 0x17

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "dtdValidation"

    const/16 v1, 0x18

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "dtdValidationRecoverable"

    const/16 v1, 0x19

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "eagerEvaluation"

    const/16 v1, 0x1a

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "entityResolver"

    const/16 v1, 0x1b

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "errorListener"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "environmentVariableResolver"

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "expandAttributeDefaults"

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "generateByteCode"

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "ignoreSAXSourceParser"

    const/16 v1, 0x22

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "lineNumbering"

    const/16 v1, 0x26

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "markDefaultedAttributes"

    const/16 v1, 0x27

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "maxCompiledClasses"

    const/16 v1, 0x28

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "monitorHotSpotByteCode"

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "optimizationLevel"

    const/16 v1, 0x30

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "parser"

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "preEvaluateDoc"

    const/16 v1, 0x33

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "recognizeUriQueryParameters"

    const/16 v1, 0x35

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "resourceResolver"

    const/16 v1, 0x81

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "retainNodeForDiagnostics"

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "schemaValidation"

    const/16 v1, 0x3d

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "serializerFactory"

    const/16 v1, 0x3e

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "sourceResolver"

    const/16 v1, 0x40

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "stableCollectionUri"

    const/16 v1, 0x41

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "stableUnparsedText"

    const/16 v1, 0x42

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "standardErrorOutputFile"

    const/16 v1, 0x43

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "streamability"

    const/16 v1, 0x44

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "streamingFallback"

    const/16 v1, 0x46

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "stripSpace"

    const/16 v1, 0x47

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "styleParser"

    const/16 v1, 0x48

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "suppressEvaluationExpiryWarning"

    const/16 v1, 0x49

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "suppressXPathWarnings"

    const/16 v1, 0x4a

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "suppressXsltNamespaceCheck"

    const/16 v1, 0x4b

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "thresholdForHotspotByteCode"

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "timing"

    const/16 v1, 0x4d

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "traceExternalFunctions"

    const/16 v1, 0x4e

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "traceListener"

    const/16 v1, 0x50

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "traceListenerOutputFile"

    const/16 v1, 0x51

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "traceOptimizerDecisions"

    const/16 v1, 0x52

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "treeModel"

    const/16 v1, 0x54

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "unparsedTextUriResolver"

    const/16 v1, 0x56

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "uriResolver"

    const/16 v1, 0x57

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "usePiDisableOutputEscaping"

    const/16 v1, 0x58

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "useTypedValueCache"

    const/16 v1, 0x59

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "validationComments"

    const/16 v1, 0x5b

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "validationWarnings"

    const/16 v1, 0x5c

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "versionOfXml"

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "xInclude"

    const/16 v1, 0x5e

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "zipUriPattern"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->n:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "lang"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLocalizerFactory()Lnet/sf/saxon/lib/LocalizerFactory;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/lib/LocalizerFactory;->setLanguageProperties(Ljava/lang/String;Ljava/util/Properties;)V

    :cond_3
    return-void
.end method

.method public final i(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "defaultLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    const-string v3, "http://saxon.sf.net/feature/defaultLanguage"

    invoke-virtual {v1, v3, v0}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "defaultCountry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    const-string v2, "http://saxon.sf.net/feature/defaultCountry"

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j(Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 8

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    move-object v0, v7

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setSerializationProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZLnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    new-instance v2, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v2, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v7}, Lnet/sf/saxon/Configuration;->setDefaultSerializationProperties(Ljava/util/Properties;)V

    return-void
.end method

.method public final k(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "#element"

    const-string v1, "xquery"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "allowUpdate"

    const/16 v1, 0x62

    const-string v2, "JN"

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "constructionMode"

    const/16 v1, 0x63

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "defaultElementNamespace"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "defaultFunctionNamespace"

    const/16 v1, 0x65

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "emptyLeast"

    const/16 v1, 0x66

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "inheritNamespaces"

    const/16 v1, 0x67

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "moduleUriResolver"

    const/16 v1, 0x2b

    const-string v3, "J"

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "preserveBoundarySpace"

    const/16 v1, 0x69

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "preserveNamespaces"

    const/16 v1, 0x6a

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "requiredContextItemType"

    const/16 v1, 0x6b

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "schemaAware"

    const/16 v1, 0x6c

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "staticErrorListener"

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "version"

    const/16 v1, 0x6e

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final l(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "#element"

    const-string v1, "xsd"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "assertionsCanSeeComments"

    const/4 v1, 0x5

    const-string v2, "JN"

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "implicitSchemaImports"

    const/16 v1, 0x23

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "multipleSchemaImports"

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "occurrenceLimits"

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x3b

    const-string v1, "J"

    const-string v3, "schemaUriResolver"

    invoke-virtual {p0, v0, v3, p1, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "thresholdForCompilingTypes"

    const/16 v1, 0x4c

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "useXsiSchemaLocation"

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "version"

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final m(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "#element"

    const-string v1, "xslt"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "disableXslEvaluate"

    const/16 v1, 0x16

    const-string v2, "JN"

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "enableAssertions"

    const/16 v1, 0x70

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "initialMode"

    const/16 v1, 0x71

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "initialTemplate"

    const/16 v1, 0x72

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "messageEmitter"

    const/16 v1, 0x29

    const-string v3, "J"

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "outputUriResolver"

    const/16 v1, 0x32

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "recoveryPolicy"

    const/16 v1, 0x37

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "resultDocumentThreads"

    const/16 v1, 0x38

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "schemaAware"

    const/16 v1, 0x73

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "staticErrorListener"

    const/16 v1, 0x74

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "staticUriResolver"

    const/16 v1, 0x75

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "strictStreamability"

    const/16 v1, 0x45

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "styleParser"

    const/16 v1, 0x48

    invoke-virtual {p0, v0, p1, v1, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "version"

    const/16 v1, 0x76

    invoke-virtual {p0, v0, p1, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->a(Ljava/util/Properties;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public makeConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->m:Lnet/sf/saxon/Configuration;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->n:Lnet/sf/saxon/event/PipelineConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->n:Lnet/sf/saxon/event/PipelineConfiguration;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->n:Lnet/sf/saxon/event/PipelineConfiguration;

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->setSystemId(Ljava/lang/String;)V

    sget-object v1, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v1, p1, v0}, Lnet/sf/saxon/Platform;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/lib/ActiveSource;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    iget-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    if-nez p1, :cond_3

    new-instance p1, Lnet/sf/saxon/lib/StandardErrorReporter;

    invoke-direct {p1}, Lnet/sf/saxon/lib/StandardErrorReporter;-><init>()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-interface {v1}, Lnet/sf/saxon/s9api/XmlProcessingError;->asWarning()Lnet/sf/saxon/s9api/XmlProcessingError;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->fromXmlProcessingError(Lnet/sf/saxon/s9api/XmlProcessingError;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->m:Lnet/sf/saxon/Configuration;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->importLicenseDetails(Lnet/sf/saxon/Configuration;)V

    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public readExtensionElement(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 2

    new-instance p1, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extension elements are not available in Saxon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/sf/saxon/Version;->getSoftwarePlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readWithParam(Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->l:Lnet/sf/saxon/trans/packages/PackageDetails;

    iget-object v0, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->exportLocation:Ljavax/xml/transform/Source;

    const-string v1, "withParam"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Not allowed when @exportLocation exists"

    invoke-virtual {p0, v1, v2, v2, v0}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1, v0, v2, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v4, Lnet/sf/saxon/om/QNameParser;

    invoke-direct {v4, p2}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object v4

    :try_start_0
    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lnet/sf/saxon/om/QNameParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Requires valid QName"

    invoke-virtual {p0, v1, v0, v3, v4}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    const-string v3, "select"

    invoke-interface {p1, v3}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v1, v3, v2, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    iget-object v3, p0, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v3}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-direct {p2}, Lnet/sf/saxon/expr/parser/XPathParser;-><init>()V

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p2, p1, v3, v3, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/ConfigurationReader;->error(Lnet/sf/saxon/trans/XPathException;)V

    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->l:Lnet/sf/saxon/trans/packages/PackageDetails;

    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->staticParams:Ljava/util/Map;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->staticParams:Ljava/util/Map;

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->l:Lnet/sf/saxon/trans/packages/PackageDetails;

    iget-object p0, p0, Lnet/sf/saxon/trans/packages/PackageDetails;->staticParams:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readXsltPackage(Lnet/sf/saxon/om/AttributeMap;)V
    .locals 10

    const-string v0, "name"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requires a valid URI."

    const-string v2, "sourceLocation"

    const-string v3, "exportLocation"

    const-string v4, "package"

    const/4 v5, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1, v3}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v4, v2, v5, v5}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/ConfigurationReader;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0, v4, v2, v0, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Ljava/io/File;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/ConfigurationReader;->error(Lnet/sf/saxon/trans/XPathException;)V

    goto/16 :goto_6

    :cond_2
    const-string v6, "version"

    invoke-interface {p1, v6}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "1"

    :cond_3
    new-instance v8, Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-direct {v8}, Lnet/sf/saxon/trans/packages/PackageDetails;-><init>()V

    :try_start_2
    new-instance v9, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-direct {v9, v0, v7}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-virtual {p0, v4, v6, v7, v5}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v5

    :goto_2
    iput-object v9, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    iput-object v8, p0, Lnet/sf/saxon/trans/ConfigurationReader;->l:Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-interface {p1, v2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_3
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/ConfigurationReader;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    goto :goto_3

    :catch_3
    invoke-virtual {p0, v4, v2, v0, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iput-object v5, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->sourceLocation:Ljavax/xml/transform/Source;

    :cond_4
    invoke-interface {p1, v3}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_4
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/ConfigurationReader;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v5, v2

    goto :goto_4

    :catch_4
    invoke-virtual {p0, v4, v3, v0, v1}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iput-object v5, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->exportLocation:Ljavax/xml/transform/Source;

    :cond_5
    const-string v0, "priority"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->priority:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    const-string v2, "Requires an integer."

    invoke-virtual {p0, v4, v0, v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    const-string v0, "base"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->baseName:Ljava/lang/String;

    const-string v0, "shortName"

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v8, Lnet/sf/saxon/trans/packages/PackageDetails;->shortName:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/trans/ConfigurationReader;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-virtual {p0, v8}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V

    :goto_6
    return-void
.end method

.method public setBaseConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->m:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->i:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->n:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/ConfigurationReader;->p:Ljava/lang/String;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lnet/sf/saxon/trans/ConfigurationReader;->o:Ljava/util/Stack;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lnet/sf/saxon/trans/ConfigurationReader;->h:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "http://saxon.sf.net/ns/configuration"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1e

    iget v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v0, :cond_9

    const-string v0, "configuration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1, v4, v9, v9, v0}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v10, "edition"

    invoke-interface {v2, v10}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "HE"

    if-nez v11, :cond_1

    move-object v11, v12

    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_0
    move v13, v7

    goto :goto_1

    :sswitch_0
    const-string v13, "PE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    :cond_2
    move v13, v8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    move v13, v5

    goto :goto_1

    :sswitch_2
    const-string v13, "EE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_0

    :cond_4
    move v13, v6

    :goto_1
    packed-switch v13, :pswitch_data_0

    const-string v13, "HE|PE|EE"

    invoke-virtual {v1, v0, v10, v11, v13}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    goto :goto_2

    :pswitch_0
    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->i:Ljava/lang/ClassLoader;

    const-string v10, "com.saxonica.config.ProfessionalConfiguration"

    invoke-static {v0, v10}, Lnet/sf/saxon/Configuration;->makeLicensedConfiguration(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    goto :goto_2

    :pswitch_1
    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    goto :goto_2

    :pswitch_2
    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->i:Ljava/lang/ClassLoader;

    const-string v10, "com.saxonica.config.EnterpriseConfiguration"

    invoke-static {v0, v10}, Lnet/sf/saxon/Configuration;->makeLicensedConfiguration(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    :goto_2
    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->m:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_5

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-virtual {v10, v0}, Lnet/sf/saxon/Configuration;->setNamePool(Lnet/sf/saxon/om/NamePool;)V

    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->m:Lnet/sf/saxon/Configuration;

    invoke-virtual {v10}, Lnet/sf/saxon/Configuration;->getDocumentNumberAllocator()Lnet/sf/saxon/tree/util/DocumentNumberAllocator;

    move-result-object v10

    invoke-virtual {v0, v10}, Lnet/sf/saxon/Configuration;->setDocumentNumberAllocator(Lnet/sf/saxon/tree/util/DocumentNumberAllocator;)V

    :cond_5
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageLibrary;

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v10}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v10

    invoke-direct {v0, v10}, Lnet/sf/saxon/trans/packages/PackageLibrary;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    const-string v0, "licenseFileLocation"

    invoke-interface {v2, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/trans/ConfigurationReader;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v10, v0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object v11, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    const-string v12, "http://saxon.sf.net/feature/licenseFileLocation"

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v11, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to process license at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setCause(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    const-string v0, "targetEdition"

    invoke-interface {v2, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-virtual {v10}, Lnet/sf/saxon/trans/packages/PackageLibrary;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v10

    invoke-virtual {v10, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setTargetEdition(Ljava/lang/String;)V

    :cond_7
    const-string v0, "label"

    invoke-interface {v2, v0}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v10, v0}, Lnet/sf/saxon/Configuration;->setLabel(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->targetConfig:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;

    move-result-object v0

    iget-object v10, v1, Lnet/sf/saxon/trans/ConfigurationReader;->i:Ljava/lang/ClassLoader;

    invoke-interface {v0, v10}, Lnet/sf/saxon/lib/IDynamicLoader;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    iget v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    const-string v10, "localizations"

    const-string v11, "xslt"

    const-string v12, "xsltPackages"

    const-string v13, "collations"

    const-string v14, "resources"

    if-ne v0, v5, :cond_13

    iput-object v4, v1, Lnet/sf/saxon/trans/ConfigurationReader;->f:Ljava/lang/String;

    const-string v0, "global"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->g(Lnet/sf/saxon/om/AttributeMap;)V

    goto/16 :goto_6

    :cond_a
    const-string v0, "serialization"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->j(Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;)V

    goto/16 :goto_6

    :cond_b
    const-string v0, "xquery"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->k(Lnet/sf/saxon/om/AttributeMap;)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->m(Lnet/sf/saxon/om/AttributeMap;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_6

    :cond_e
    const-string v0, "xsd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->l(Lnet/sf/saxon/om/AttributeMap;)V

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->q:Ljava/util/ArrayList;

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->i(Lnet/sf/saxon/om/AttributeMap;)V

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v1, v4, v9, v9, v9}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const-string v15, "package"

    const/4 v6, 0x3

    if-ne v0, v8, :cond_1c

    iput-object v4, v1, Lnet/sf/saxon/trans/ConfigurationReader;->g:Ljava/lang/String;

    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_4
    move v6, v7

    goto :goto_5

    :sswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    const/4 v6, 0x4

    goto :goto_5

    :sswitch_4
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4

    :sswitch_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    move v6, v8

    goto :goto_5

    :sswitch_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    move v6, v5

    goto :goto_5

    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    const/4 v6, 0x0

    :cond_18
    :goto_5
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "localization"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v1, v4, v9, v9, v0}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->h(Lnet/sf/saxon/om/AttributeMap;)V

    goto :goto_6

    :pswitch_4
    const-string v0, "extensionElement"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->readExtensionElement(Lnet/sf/saxon/om/AttributeMap;)V

    goto :goto_6

    :cond_1a
    invoke-virtual {v1, v4, v9, v9, v9}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->readXsltPackage(Lnet/sf/saxon/om/AttributeMap;)V

    goto :goto_6

    :pswitch_6
    const-string v0, "collation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v1, v4, v9, v9, v0}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->e(Lnet/sf/saxon/om/AttributeMap;)V

    goto :goto_6

    :pswitch_7
    const-string v0, "fileExtension"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ConfigurationReader;->f(Lnet/sf/saxon/om/AttributeMap;)V

    goto :goto_6

    :cond_1c
    if-ne v0, v6, :cond_1f

    iget-object v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->g:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "withParam"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/trans/ConfigurationReader;->readWithParam(Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v1, v4, v9, v9, v9}, Lnet/sf/saxon/trans/ConfigurationReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1e
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v2, "Configuration elements must be in namespace http://saxon.sf.net/ns/configuration"

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lnet/sf/saxon/trans/ConfigurationReader;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_6
    iget v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    add-int/2addr v0, v5

    iput v0, v1, Lnet/sf/saxon/trans/ConfigurationReader;->e:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8a0 -> :sswitch_2
        0x8fd -> :sswitch_1
        0x9f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x763341db -> :sswitch_7
        -0x6db30df6 -> :sswitch_6
        -0x13647030 -> :sswitch_5
        0x3849c3 -> :sswitch_4
        0x239f0cfa -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
