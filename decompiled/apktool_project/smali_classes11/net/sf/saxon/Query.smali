.class public Lnet/sf/saxon/Query;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/s9api/Processor;

.field public b:Lnet/sf/saxon/lib/Logger;

.field protected backup:Z

.field public c:Z

.field protected config:Lnet/sf/saxon/Configuration;

.field public d:Z

.field protected explainOutputFileName:Ljava/lang/String;

.field protected explaining:Z

.field protected languageVersion:Ljava/lang/String;

.field protected moduleURIResolverClass:Ljava/lang/String;

.field protected outputFileName:Ljava/lang/String;

.field protected projection:Z

.field protected queryFileName:Ljava/lang/String;

.field protected repeat:I

.field protected showTime:Z

.field protected sourceJsonFileName:Ljava/lang/String;

.field protected sourceXmlFileName:Ljava/lang/String;

.field protected streaming:Z

.field protected updating:Z

.field protected useURLs:Z

.field protected wrap:Z

.field protected writeback:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->showTime:Z

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/saxon/Query;->repeat:I

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sf/saxon/Query;->sourceXmlFileName:Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/Query;->sourceJsonFileName:Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->useURLs:Z

    iput-object v2, p0, Lnet/sf/saxon/Query;->outputFileName:Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/Query;->moduleURIResolverClass:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->explaining:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->wrap:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->projection:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->streaming:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->updating:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->writeback:Z

    iput-boolean v1, p0, Lnet/sf/saxon/Query;->backup:Z

    iput-object v2, p0, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    new-instance v2, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v2}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v2, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->c:Z

    iput-boolean v1, p0, Lnet/sf/saxon/Query;->d:Z

    const-string v0, "3.1"

    iput-object v0, p0, Lnet/sf/saxon/Query;->languageVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/XQueryEvaluator;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/Query;->e(Lnet/sf/saxon/s9api/XQueryEvaluator;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/Query;Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Controller;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/Query;->f(Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Controller;)V

    return-void
.end method

.method public static createFileIfNecessary(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/s9api/XQueryEvaluator;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setExternalVariable(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void
.end method

.method private synthetic f(Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Controller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p4}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object p4

    invoke-virtual {p4, p3}, Lnet/sf/saxon/om/DocumentPool;->getDocumentURI(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lnet/sf/saxon/Query;->backup:Z

    iget-boolean v0, p0, Lnet/sf/saxon/Query;->showTime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, p1, p4, v0}, Lnet/sf/saxon/Query;->j(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/s9api/Serializer;ZLnet/sf/saxon/lib/Logger;)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lnet/sf/saxon/Query;->showTime:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    const-string p3, "Updated document discarded because it was not read using doc()"

    invoke-virtual {p1, p3}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static h(Lnet/sf/saxon/s9api/Processor;Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->newJsonBuilder()Lnet/sf/saxon/s9api/JsonBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/JsonBuilder;->parseJson(Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/s9api/Serializer;ZLnet/sf/saxon/lib/Logger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Node to be rewritten must be a document or element node"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Cannot rewrite an element node unless it is top-level"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create backup file of "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p3, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating file "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_7
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create new file "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz p3, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overwriting file "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual {p1, v0}, Lnet/sf/saxon/s9api/Serializer;->setOutputFile(Ljava/io/File;)V

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p2

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/s9api/Processor;->writeXdmValue(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    return-void

    :catch_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SystemId of updated document is not a valid URI: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Cannot rewrite a document with no known URI"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/Query;

    invoke-direct {v0}, Lnet/sf/saxon/Query;-><init>()V

    const-string v1, "java net.sf.saxon.Query"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/Query;->doQuery([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyLocalOptions(Lnet/sf/saxon/trans/CommandLineOptions;Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public badUsage(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lnet/sf/saxon/Query;->showTime:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getProductTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    const-string v2, "Usage: see http://www.saxonica.com/documentation/index.html#!using-xquery/commandline"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/CommandLineOptions;->getCommandName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " options params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lnet/sf/saxon/trans/CommandLineOptions;

    invoke-direct {v2}, Lnet/sf/saxon/trans/CommandLineOptions;-><init>()V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/Query;->k(Lnet/sf/saxon/trans/CommandLineOptions;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Options available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CommandLineOptions;->displayPermittedOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "Use -XYZ:? for details of option XYZ or --? to list configuration features"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "Params: "

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  param=value           Set query string parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  +param=filename       Set query document parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  ?param=expression     Set query parameter using XPath"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  !param=value          Set serialization parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-boolean p0, p0, Lnet/sf/saxon/Query;->d:Z

    if-eqz p0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public compileQuery(Lnet/sf/saxon/s9api/XQueryCompiler;Ljava/lang/String;Z)Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "user.dir"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Query;->m()Ljava/io/Reader;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/XQueryCompiler;->setBaseURI(Ljava/net/URI;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XQueryCompiler;->compile(Ljava/io/Reader;)Lnet/sf/saxon/s9api/XQueryExecutable;

    move-result-object p0

    goto/16 :goto_4

    :cond_0
    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/XQueryCompiler;->setBaseURI(Ljava/net/URI;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XQueryCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XQueryExecutable;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    if-nez p3, :cond_3

    invoke-static {p2}, Lnet/sf/saxon/trans/CommandLineOptions;->isImplicitURI(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/s9api/XQueryCompiler;->setBaseURI(Ljava/net/URI;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XQueryCompiler;->compile(Ljava/io/InputStream;)Lnet/sf/saxon/s9api/XQueryExecutable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move-object p0, p1

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XQueryCompiler;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/Query;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getStandardModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_3
    invoke-interface {p3, v4, v4, v3}, Lnet/sf/saxon/lib/ModuleURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v3, :cond_6

    if-eqz v1, :cond_5

    const-string v3, "System problem: standard ModuleURIResolver returned null"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/Query;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getStandardModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p3

    goto :goto_2

    :cond_6
    array-length p2, v3

    if-ne p2, v2, :cond_7

    aget-object p2, v3, v0

    instance-of p2, p2, Ljavax/xml/transform/stream/StreamSource;

    if-nez p2, :cond_8

    :cond_7
    const-string p2, "Module URI Resolver must return a single StreamSource"

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_8
    :try_start_4
    aget-object p2, v3, v0

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    invoke-static {p2, p0}, Lnet/sf/saxon/query/QueryReader;->readSourceQuery(Ljavax/xml/transform/stream/StreamSource;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/XQueryCompiler;->compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XQueryExecutable;

    move-result-object p0
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    instance-of p1, p0, Lnet/sf/saxon/trans/XPathException;

    if-eqz p1, :cond_9

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Exception in ModuleURIResolver: "

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "XQST0059"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cli.Saxon.Cmd.DotNetQuery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Query"

    :cond_0
    return-object p0
.end method

.method public doQuery([Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "TB"

    const-string v3, "yes"

    const-string v4, "now"

    new-instance v5, Lnet/sf/saxon/trans/CommandLineOptions;

    invoke-direct {v5}, Lnet/sf/saxon/trans/CommandLineOptions;-><init>()V

    invoke-virtual {v1, v5}, Lnet/sf/saxon/Query;->k(Lnet/sf/saxon/trans/CommandLineOptions;)V

    const/4 v6, 0x2

    move-object/from16 v7, p1

    :try_start_0
    invoke-virtual {v5, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->setActualOptions([Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :goto_0
    const-string v7, "config"

    invoke-virtual {v5, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    if-eqz v7, :cond_0

    :try_start_1
    new-instance v10, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v10, v7}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lnet/sf/saxon/Configuration;->readConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object v7

    iput-object v7, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v7}, Lnet/sf/saxon/Query;->initializeConfiguration(Lnet/sf/saxon/Configuration;)V

    iget-object v7, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v7
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget-object v10, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    if-nez v10, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lnet/sf/saxon/trans/CommandLineOptions;->testIfSchemaAware()Z

    move-result v7

    :cond_1
    iget-object v10, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    if-nez v10, :cond_2

    invoke-static {}, Lnet/sf/saxon/Configuration;->newConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v10

    iput-object v10, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v10}, Lnet/sf/saxon/Query;->initializeConfiguration(Lnet/sf/saxon/Configuration;)V

    :cond_2
    new-instance v10, Lnet/sf/saxon/s9api/Processor;

    iget-object v11, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v10, v11}, Lnet/sf/saxon/s9api/Processor;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v10, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object v11, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v11, v10}, Lnet/sf/saxon/Configuration;->setProcessor(Lnet/sf/saxon/Configuration$ApiProvider;)V

    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v1, v5}, Lnet/sf/saxon/Query;->i(Lnet/sf/saxon/trans/CommandLineOptions;)V
    :try_end_2
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    :try_start_3
    iget-object v11, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v11}, Lnet/sf/saxon/s9api/Processor;->newXQueryCompiler()Lnet/sf/saxon/s9api/XQueryCompiler;

    move-result-object v11

    invoke-virtual {v11, v7}, Lnet/sf/saxon/s9api/XQueryCompiler;->setSchemaAware(Z)V

    iget-object v12, v1, Lnet/sf/saxon/Query;->languageVersion:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lnet/sf/saxon/s9api/XQueryCompiler;->setLanguageVersion(Ljava/lang/String;)V

    iget-boolean v12, v1, Lnet/sf/saxon/Query;->updating:Z
    :try_end_3
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v12, :cond_3

    :try_start_4
    invoke-virtual {v11, v10}, Lnet/sf/saxon/s9api/XQueryCompiler;->setUpdatingEnabled(Z)V
    :try_end_4
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v0

    move v3, v6

    goto/16 :goto_16

    :catch_3
    move-exception v0

    move-object v2, v0

    move v3, v6

    goto/16 :goto_17

    :cond_3
    :goto_2
    :try_start_5
    iget-object v12, v1, Lnet/sf/saxon/Query;->moduleURIResolverClass:Ljava/lang/String;
    :try_end_5
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v12, :cond_6

    :try_start_6
    iget-object v13, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v13, v12}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lnet/sf/saxon/lib/ModuleURIResolver;

    if-nez v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lnet/sf/saxon/Query;->moduleURIResolverClass:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is not a ModuleURIResolver"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_4
    instance-of v13, v12, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    if-eqz v13, :cond_5

    move-object v13, v12

    check-cast v13, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    iget-object v14, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v13, v14}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    :cond_5
    check-cast v12, Lnet/sf/saxon/lib/ModuleURIResolver;

    invoke-virtual {v11, v12}, Lnet/sf/saxon/s9api/XQueryCompiler;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V
    :try_end_6
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :cond_6
    :try_start_7
    iget-object v12, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v12}, Lnet/sf/saxon/Configuration;->displayLicenseMessage()V
    :try_end_7
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    if-eqz v7, :cond_8

    :try_start_8
    iget-object v7, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "EE"

    iget-object v8, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v8}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Installed license does not allow schema-aware query"

    invoke-virtual {v1, v7, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    const-string v7, "Schema-aware query requires Saxon Enterprise Edition"

    invoke-virtual {v1, v7, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V
    :try_end_8
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    :cond_8
    :goto_3
    :try_start_9
    iget-boolean v7, v1, Lnet/sf/saxon/Query;->explaining:Z
    :try_end_9
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    if-eqz v7, :cond_9

    :try_start_a
    iget-object v7, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    sget-object v8, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v7, v8, v10}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V
    :try_end_a
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_a .. :try_end_a} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_a .. :try_end_a} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :cond_9
    :try_start_b
    iget-boolean v7, v1, Lnet/sf/saxon/Query;->streaming:Z

    invoke-virtual {v11, v7}, Lnet/sf/saxon/s9api/XQueryCompiler;->setStreaming(Z)V

    iget-object v7, v1, Lnet/sf/saxon/Query;->sourceXmlFileName:Ljava/lang/String;
    :try_end_b
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_b .. :try_end_b} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_b .. :try_end_b} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_b .. :try_end_b} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_b .. :try_end_b} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    if-eqz v7, :cond_a

    :try_start_c
    iget-boolean v12, v1, Lnet/sf/saxon/Query;->useURLs:Z

    invoke-virtual {v1, v7, v12}, Lnet/sf/saxon/Query;->processSourceFile(Ljava/lang/String;Z)Ljavax/xml/transform/Source;

    move-result-object v7
    :try_end_c
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_c .. :try_end_c} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_c .. :try_end_c} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_c .. :try_end_c} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    :try_start_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-boolean v14, v1, Lnet/sf/saxon/Query;->showTime:Z
    :try_end_d
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_d .. :try_end_d} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_d .. :try_end_d} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    if-eqz v14, :cond_b

    :try_start_e
    iget-object v14, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Analyzing query from "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V
    :try_end_e
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_e .. :try_end_e} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_e .. :try_end_e} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :cond_b
    :try_start_f
    iget-object v8, v1, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    iget-boolean v14, v1, Lnet/sf/saxon/Query;->useURLs:Z

    invoke-virtual {v1, v11, v8, v14}, Lnet/sf/saxon/Query;->compileQuery(Lnet/sf/saxon/s9api/XQueryCompiler;Ljava/lang/String;Z)Lnet/sf/saxon/s9api/XQueryExecutable;

    move-result-object v8
    :try_end_f
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_f .. :try_end_f} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_f .. :try_end_f} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :try_start_10
    iget-boolean v11, v1, Lnet/sf/saxon/Query;->showTime:Z

    if-eqz v11, :cond_11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget-object v11, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v11}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Analysis time: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v14, v12

    long-to-double v12, v14

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " milliseconds"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V
    :try_end_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v9, v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v9, v0

    const/4 v8, 0x0

    :goto_5
    :try_start_11
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v10, v10, Lnet/sf/saxon/trans/XPathException;
    :try_end_11
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    if-eqz v10, :cond_10

    :try_start_12
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v8}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v9

    const/4 v10, -0x1

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v9

    invoke-interface {v9}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v9

    invoke-virtual {v8}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v11

    invoke-interface {v11}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_c
    move v9, v10

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v8}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v9, "Static error(s) in query"

    invoke-virtual {v1, v9, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_7

    :cond_d
    if-ne v9, v10, :cond_e

    iget-object v9, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Static error in query: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v10, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v10}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Static error at line "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    iget-object v9, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    :goto_7
    iget-boolean v9, v1, Lnet/sf/saxon/Query;->d:Z

    if-eqz v9, :cond_f

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    const/4 v8, 0x0

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    :cond_10
    :try_start_13
    invoke-virtual {v9}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_11
    :goto_8
    iget-boolean v9, v1, Lnet/sf/saxon/Query;->explaining:Z
    :try_end_13
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    if-eqz v9, :cond_15

    if-eqz v8, :cond_15

    :try_start_14
    iget-object v9, v1, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    if-eqz v9, :cond_13

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_9

    :cond_12
    iget-object v9, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v9

    goto :goto_a

    :cond_13
    :goto_9
    iget-object v9, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v10}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v9

    :goto_a
    sget-object v10, Lnet/sf/saxon/s9api/Serializer$Property;->METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

    const-string v11, "xml"

    invoke-virtual {v9, v10, v11}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    sget-object v10, Lnet/sf/saxon/s9api/Serializer$Property;->INDENT:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v9, v10, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    sget-object v10, Lnet/sf/saxon/s9api/Serializer$Property;->OMIT_XML_DECLARATION:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v9, v10, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    iget-object v3, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/Processor;->getSaxonEdition()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_INDENT_SPACES:Lnet/sf/saxon/s9api/Serializer$Property;

    const-string v10, "2"

    invoke-virtual {v9, v3, v10}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v8, v9}, Lnet/sf/saxon/s9api/XQueryExecutable;->explain(Lnet/sf/saxon/s9api/Destination;)V
    :try_end_14
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    :cond_15
    :try_start_15
    invoke-virtual {v8}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object v3

    iget-boolean v9, v1, Lnet/sf/saxon/Query;->projection:Z

    invoke-virtual {v3, v9}, Lnet/sf/saxon/query/XQueryExpression;->setAllowDocumentProjection(Z)V

    invoke-virtual {v8}, Lnet/sf/saxon/s9api/XQueryExecutable;->load()Lnet/sf/saxon/s9api/XQueryEvaluator;

    move-result-object v3

    iget-object v9, v1, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {v3, v9}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V

    invoke-virtual {v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_15
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    if-eqz v9, :cond_17

    :try_start_16
    invoke-virtual {v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v9

    iget-object v10, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v10}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v9

    instance-of v10, v9, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v10, :cond_16

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getUnderlyingQueryContext()Lnet/sf/saxon/query/DynamicQueryContext;

    move-result-object v4

    check-cast v9, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {v4, v9}, Lnet/sf/saxon/query/DynamicQueryContext;->setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V

    goto :goto_b

    :cond_16
    iget-object v9, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid dateTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (ignored)"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V
    :try_end_16
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    :cond_17
    :goto_b
    :try_start_17
    invoke-virtual {v1, v7, v8, v3}, Lnet/sf/saxon/Query;->processSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;)V

    iget-object v4, v1, Lnet/sf/saxon/Query;->sourceJsonFileName:Ljava/lang/String;
    :try_end_17
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    if-eqz v4, :cond_18

    :try_start_18
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, v1, Lnet/sf/saxon/Query;->sourceJsonFileName:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object v9, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-static {v9, v4}, Lnet/sf/saxon/Query;->h(Lnet/sf/saxon/s9api/Processor;Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/s9api/XdmValue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lnet/sf/saxon/s9api/XdmValue;->itemAt(I)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_19
    new-instance v3, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read JSON input: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_19
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    :cond_18
    const/4 v9, 0x0

    :goto_c
    :try_start_1a
    iget-object v4, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    new-instance v10, Lcom/sunia/HTREnginev2/kal;

    invoke-direct {v10, v3}, Lcom/sunia/HTREnginev2/kal;-><init>(Lnet/sf/saxon/s9api/XQueryEvaluator;)V

    invoke-virtual {v5, v4, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->setParams(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    :goto_d
    iget v4, v1, Lnet/sf/saxon/Query;->repeat:I
    :try_end_1a
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    if-ge v9, v4, :cond_22

    :try_start_1b
    iget-object v4, v1, Lnet/sf/saxon/Query;->outputFileName:Ljava/lang/String;

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/io/File;

    iget-object v15, v1, Lnet/sf/saxon/Query;->outputFileName:Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_19

    const-string v15, "Output is a directory"

    invoke-virtual {v1, v15, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_19
    iget-object v15, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v15, v4}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v4

    goto :goto_e

    :cond_1a
    iget-object v4, v1, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v15}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v4
    :try_end_1b
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    :goto_e
    :try_start_1c
    invoke-virtual {v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->setSerializationProperties(Lnet/sf/saxon/s9api/Serializer;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_7
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v15, v0

    :try_start_1d
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :goto_f
    iget-boolean v15, v1, Lnet/sf/saxon/Query;->updating:Z

    if-eqz v15, :cond_1b

    invoke-virtual {v8}, Lnet/sf/saxon/s9api/XQueryExecutable;->isUpdateQuery()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v8}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/saxon/query/XQueryExpression;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v15

    invoke-virtual {v4, v15}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperties(Ljava/util/Properties;)V

    invoke-virtual {v1, v8, v3, v4}, Lnet/sf/saxon/Query;->runUpdate(Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;Lnet/sf/saxon/s9api/Serializer;)V

    goto :goto_11

    :cond_1b
    invoke-virtual {v1, v8, v3, v7, v4}, Lnet/sf/saxon/Query;->runQuery(Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    :try_end_1d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    goto :goto_11

    :catch_8
    move-exception v0

    move-object v4, v0

    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    instance-of v15, v15, Lnet/sf/saxon/trans/XPathException;

    if-eqz v15, :cond_21

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    check-cast v15, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v15}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v15

    if-eqz v15, :cond_21

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    check-cast v15, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v15}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v15
    :try_end_1e
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1e .. :try_end_1e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    if-eqz v15, :cond_1c

    :try_start_1f
    const-string v15, "type"
    :try_end_1f
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    goto :goto_10

    :cond_1c
    :try_start_20
    const-string v15, "dynamic"

    :goto_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query failed with "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v6}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :goto_11
    iget-boolean v4, v1, Lnet/sf/saxon/Query;->showTime:Z

    if-eqz v4, :cond_20

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const/4 v4, 0x3

    if-lt v9, v4, :cond_1d

    sub-long v16, v14, v10

    add-long v12, v12, v16

    :cond_1d
    iget v4, v1, Lnet/sf/saxon/Query;->repeat:I

    const/16 v6, 0x64

    if-ge v4, v6, :cond_1e

    iget-object v4, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "Execution time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v14, v10

    invoke-static {v10, v11}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-object v3, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/trans/Timer;->showMemoryUsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/trace/Instrumentation;->report()V

    goto :goto_12

    :cond_1e
    move-object/from16 v16, v3

    const-wide v3, 0xe8d4a51000L

    cmp-long v3, v12, v3

    if-lez v3, :cond_1f

    goto :goto_14

    :cond_1f
    :goto_12
    move-wide v10, v14

    goto :goto_13

    :cond_20
    move-object/from16 v16, v3

    :goto_13
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    const/4 v6, 0x2

    goto/16 :goto_d

    :cond_21
    throw v4

    :cond_22
    :goto_14
    iget v3, v1, Lnet/sf/saxon/Query;->repeat:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_23

    iget-object v3, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Average execution time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    sub-int/2addr v9, v6

    int-to-long v6, v9

    div-long/2addr v12, v6

    invoke-static {v12, v13}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v5, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v3, v1, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/sf/saxon/Configuration;->createByteCodeReport(Ljava/lang/String;)V
    :try_end_20
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_20 .. :try_end_20} :catch_f
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_20 .. :try_end_20} :catch_a
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_20 .. :try_end_20} :catch_9
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x2

    goto :goto_16

    :catch_a
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x2

    goto :goto_17

    :catch_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal error during query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    const-string v2, " (no message)"

    goto :goto_15

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_15
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_18

    :catch_c
    move-exception v0

    move v3, v6

    move-object v2, v0

    :goto_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "Query processing failed"

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_18

    :catch_d
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query processing failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_18

    :catch_e
    move-exception v0

    move v3, v6

    move-object v2, v0

    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schema processing failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    goto :goto_18

    :catch_f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_25
    :goto_18
    return-void
.end method

.method public explain(Lnet/sf/saxon/query/XQueryExpression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Query;->c(Ljava/lang/String;)Ljavax/xml/transform/stream/StreamResult;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/Query;->l()Ljavax/xml/transform/stream/StreamResult;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-static {v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->makeDefaultProperties(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trace/ExpressionPresenter;

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/query/XQueryExpression;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public final g(Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 7

    new-instance v0, Lnet/sf/saxon/trace/XQueryTraceListener;

    invoke-direct {v0}, Lnet/sf/saxon/trace/XQueryTraceListener;-><init>()V

    const-string v1, "Tout"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trace/AbstractTraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "Tlevel"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "high"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "low"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v6, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0, v5}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v4}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v3}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    :cond_5
    :goto_2
    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0x1a354 -> :sswitch_2
        0x30dda2 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public i(Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->applyToConfiguration(Lnet/sf/saxon/s9api/Processor;)V

    const-string v0, "quit"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->d:Z

    const-string v0, "backup"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->backup:Z

    const-string v0, "explain"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->explainOutputFileName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/Query;->explaining:Z

    const-string v0, "mr"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->moduleURIResolverClass:Ljava/lang/String;

    const-string v0, "o"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->outputFileName:Ljava/lang/String;

    const-string v0, "stream"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->streaming:Z

    const-string v0, "p"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    sget-object v5, Lnet/sf/saxon/lib/Feature;->RECOGNIZE_URI_QUERY_PARAMETERS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v5, v2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    iput-boolean v2, p0, Lnet/sf/saxon/Query;->useURLs:Z

    :cond_1
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->projection:Z

    const-string v0, "q"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    :cond_2
    const-string v0, "qs"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    :cond_3
    const-string v0, "qversion"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "4.0"

    if-eqz v0, :cond_4

    const-string v6, "3.1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    const-string v5, "-qversion ignored: 3.1 is assumed"

    invoke-virtual {v0, v5}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v5, p0, Lnet/sf/saxon/Query;->languageVersion:Ljava/lang/String;

    :cond_5
    :goto_1
    const-string v0, "repeat"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/Query;->repeat:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Bad number after -repeat"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->sourceXmlFileName:Ljava/lang/String;

    const-string v0, "json"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/Query;->sourceJsonFileName:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    iget-object v5, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getProductTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    sget-object v5, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v5}, Lnet/sf/saxon/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->setTiming(Z)V

    iput-boolean v2, p0, Lnet/sf/saxon/Query;->showTime:Z

    :cond_7
    const-string v0, "traceout"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, " cannot be created"

    const-string v6, "Trace output file "

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v7, "#null"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_1
    const-string v7, "#out"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    move v8, v2

    goto :goto_3

    :sswitch_2
    const-string v7, "#err"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    move v8, v4

    :goto_3
    packed-switch v8, :pswitch_data_0

    :try_start_1
    new-instance v7, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    iput-boolean v2, p0, Lnet/sf/saxon/Query;->c:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    goto :goto_4

    :pswitch_1
    new-instance v0, Lnet/sf/saxon/lib/StandardLogger;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v7}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    :cond_b
    :goto_4
    :pswitch_2
    const-string v0, "T"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-eqz v7, :cond_d

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Query;->g(Lnet/sf/saxon/trans/CommandLineOptions;)V

    goto :goto_5

    :cond_c
    iget-object v9, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9, v7}, Lnet/sf/saxon/Configuration;->setTraceListenerClass(Ljava/lang/String;)V

    :goto_5
    iget-object v7, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7, v2}, Lnet/sf/saxon/Configuration;->setLineNumbering(Z)V

    :cond_d
    const-string v7, "Tout"

    invoke-virtual {p1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v9, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9, v7}, Lnet/sf/saxon/Configuration;->setTraceListenerOutputFile(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Query;->g(Lnet/sf/saxon/trans/CommandLineOptions;)V

    :cond_e
    const-string v0, "TB"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    sget-object v7, Lnet/sf/saxon/lib/Feature;->MONITOR_HOT_SPOT_BYTE_CODE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v7, v2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_f
    const-string v0, "TP"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v7, Lnet/sf/saxon/trace/TimingTraceListener;

    invoke-direct {v7}, Lnet/sf/saxon/trace/TimingTraceListener;-><init>()V

    iget-object v9, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9, v7}, Lnet/sf/saxon/Configuration;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    iget-object v9, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9, v2}, Lnet/sf/saxon/Configuration;->setLineNumbering(Z)V

    iget-object v9, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v9

    new-instance v10, Lnet/sf/saxon/trace/TimingCodeInjector;

    invoke-direct {v10}, Lnet/sf/saxon/trace/TimingCodeInjector;-><init>()V

    invoke-virtual {v9, v10}, Lnet/sf/saxon/query/StaticQueryContext;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    :try_start_2
    new-instance v9, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v9}, Lnet/sf/saxon/trace/TimingTraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_10
    :goto_6
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->useURLs:Z

    :cond_11
    const-string v0, "update"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iput-boolean v2, p0, Lnet/sf/saxon/Query;->updating:Z

    :cond_12
    const-string v1, "discard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->writeback:Z

    :cond_13
    const-string v0, "wrap"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/Query;->wrap:Z

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->setSourceParserClass(Ljava/lang/String;)V

    :cond_14
    const-string v0, "xsd"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, v8}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_15
    const-string v1, "xsiloc"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v1, "val"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    const-string v3, "-xsiloc is ignored when -val is absent"

    invoke-virtual {v1, v3}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    :cond_16
    iget-object v1, p0, Lnet/sf/saxon/Query;->sourceXmlFileName:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lnet/sf/saxon/Query;->sourceJsonFileName:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, "Cannot supply both -s and -json"

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_17
    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Query;->applyLocalOptions(Lnet/sf/saxon/trans/CommandLineOptions;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CommandLineOptions;->getPositionalOptions()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    if-nez v3, :cond_19

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "No query file name"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_18
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lnet/sf/saxon/Query;->queryFileName:Ljava/lang/String;

    goto :goto_7

    :cond_19
    move v2, v4

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Query;->badUsage(Ljava/lang/String;)V

    :cond_1a
    const-string v1, "scmin"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->importComponents(Ljavax/xml/transform/Source;)V

    :cond_1b
    if-eqz v0, :cond_1c

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-static {p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->loadAdditionalSchemas(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    :cond_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x117262 -> :sswitch_2
        0x11984b -> :sswitch_1
        0x220fc2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initializeConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public k(Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 14

    const-string p0, "Save updated documents before overwriting"

    const-string v0, "backup"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "Use specified catalog file to resolve URIs"

    const-string v0, "catalog"

    const/16 v2, 0x102

    invoke-virtual {p1, v0, v2, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "config"

    const-string v0, "Use specified configuration file"

    invoke-virtual {p1, p0, v2, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "Use specified collection URI resolver class"

    const-string v0, "cr"

    const/16 v3, 0x103

    invoke-virtual {p1, v0, v3, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "Validate using DTD"

    const-string v0, "dtd"

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v4, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "on"

    const-string v5, "off"

    const-string v6, "recover"

    filled-new-array {p0, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0, v7, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expand"

    const-string v7, "Expand attribute defaults from DTD or Schema"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Display compiled expression tree and optimization decisions"

    const-string v7, "explain"

    const/4 v8, 0x2

    invoke-virtual {p1, v7, v8, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "ext"

    const-string v7, "Allow calls to Java extension functions and xsl:result-document"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "User-supplied net.sf.saxon.lib.Initializer class to initialize the Saxon Configuration"

    const-string v7, "init"

    const/4 v9, 0x3

    invoke-virtual {p1, v7, v9, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "json"

    const-string v7, "Source file for primary JSON input"

    invoke-virtual {p1, v0, v2, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "l"

    const-string v7, "Maintain line numbers for source documents"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "mr"

    const-string v7, "Use named ModuleURIResolver class"

    invoke-virtual {p1, v0, v3, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x108

    const-string v7, "Run with specified current date/time"

    const-string v10, "now"

    invoke-virtual {p1, v10, v0, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "o"

    const-string v7, "Use specified file for primary output"

    invoke-virtual {p1, v0, v2, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Enable/disable optimization options [-]cfgklmnsvwx"

    const-string v7, "opt"

    const/16 v10, 0x109

    invoke-virtual {p1, v7, v10, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Action when validation of output file fails"

    const-string v7, "outval"

    const/16 v11, 0x104

    invoke-virtual {p1, v7, v11, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "fatal"

    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p1, v7, v0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p"

    const-string v7, "Recognize query parameters in URI passed to doc()"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "projection"

    const-string v7, "Use source document projection"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "q"

    const-string v7, "Query filename"

    invoke-virtual {p1, v0, v2, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "qs"

    const-string v7, "Query string (usually in quotes)"

    invoke-virtual {p1, v0, v10, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x101

    const-string v7, "Quit JVM if query fails"

    const-string v12, "quit"

    invoke-virtual {p1, v12, v0, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XQuery language version: 3.1 or 4.0. Default is 3.1"

    const-string v7, "qversion"

    invoke-virtual {p1, v7, v10, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "4.0"

    const-string v10, "3.1"

    filled-new-array {v10, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "r"

    const-string v7, "Use named URIResolver class"

    invoke-virtual {p1, v0, v3, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x105

    const-string v7, "Run N times for performance measurement"

    const-string v10, "repeat"

    invoke-virtual {p1, v10, v0, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "s"

    const-string v7, "Source file for primary XML input"

    invoke-virtual {p1, v0, v2, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "sa"

    const-string v7, "Run in schema-aware mode"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "scmin"

    const-string v7, "Pre-load schema in SCM format"

    invoke-virtual {p1, v0, v8, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "stream"

    const-string v7, "Execute in streamed mode"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Handling of whitespace text nodes in source documents"

    const-string v7, "strip"

    invoke-virtual {p1, v7, v11, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "all"

    const-string v10, "ignorable"

    const-string v12, "none"

    filled-new-array {v12, v0, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "t"

    const-string v7, "Display version and timing information"

    invoke-virtual {p1, v0, v1, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "T"

    const-string v7, "Use named TraceListener class, or standard TraceListener"

    invoke-virtual {p1, v0, v9, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TB"

    const-string v7, "Trace hotspot bytecode generation to specified XML file"

    invoke-virtual {p1, v0, v8, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Debug binding and execution of extension functions"

    const-string v7, "TJ"

    invoke-virtual {p1, v7, v1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {p0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Use specified tree model for source documents"

    const-string v7, "tree"

    invoke-virtual {p1, v7, v11, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x9

    const-string v9, "Level of detail for trace listener output"

    const-string v10, "Tlevel"

    invoke-virtual {p1, v10, v0, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "high"

    const-string v9, "low"

    const-string v13, "normal"

    filled-new-array {v12, v9, v13, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0, v13}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Tout"

    const-string v9, "File for trace listener output"

    invoke-virtual {p1, v0, v8, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TP"

    const-string v9, "Use profiling trace listener, with specified output file"

    invoke-virtual {p1, v0, v8, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "traceout"

    const-string v8, "File for output of trace() messages"

    invoke-virtual {p1, v0, v2, v8}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "tiny"

    const-string v2, "tinyc"

    const-string v8, "linked"

    filled-new-array {v8, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    const-string v2, "Interpret filename arguments as URIs"

    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "u"

    filled-new-array {p0, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update"

    const-string v2, "Enable or disable XQuery updates, or enable the syntax but discard the updates"

    invoke-virtual {p1, v0, v11, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "discard"

    filled-new-array {p0, v5, v0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "update"

    invoke-virtual {p1, v0, p0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "val"

    const-string v0, "Apply validation to source documents"

    invoke-virtual {p1, p0, v4, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "strict"

    const-string v0, "lax"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "strict"

    const-string v2, "val"

    invoke-virtual {p1, v2, p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wrap"

    const-string v0, "Wrap result sequence in XML elements"

    invoke-virtual {p1, p0, v1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "x"

    const-string v0, "Use named XMLReader class for parsing source documents"

    invoke-virtual {p1, p0, v3, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "xi"

    const-string v0, "Expand XInclude directives in source documents"

    invoke-virtual {p1, p0, v1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "xmlversion"

    const-string v0, "Indicate whether XML 1.1 is supported"

    invoke-virtual {p1, p0, v11, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "1.0"

    const-string v0, "1.1"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "xmlversion"

    invoke-virtual {p1, v0, p0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x107

    const-string v0, "List of schema documents to be preloaded"

    const-string v2, "xsd"

    invoke-virtual {p1, v2, p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "xsdversion"

    const-string v0, "Indicate whether XSD 1.1 is supported"

    invoke-virtual {p1, p0, v11, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "1.0"

    const-string v0, "1.1"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "xsdversion"

    invoke-virtual {p1, v0, p0, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xsiloc"

    const-string v0, "Load schemas named in xsi:schemaLocation (default on)"

    invoke-virtual {p1, p0, v1, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x200

    const-string v0, "Display command line help text"

    const-string v1, "?"

    invoke-virtual {p1, v1, p0, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final l()Ljavax/xml/transform/stream/StreamResult;
    .locals 1

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public final m()Ljava/io/Reader;
    .locals 1

    new-instance p0, Ljava/io/InputStreamReader;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public processSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lnet/sf/saxon/Query;->streaming:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryExecutable;->isUpdateQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/s9api/DocumentBuilder;->setTreeModel(Lnet/sf/saxon/om/TreeModel;)V

    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/Query;->showTime:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryExpression;->usesContextItem()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    const-string p1, "Source document ignored - query can be evaluated without reference to the context item"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lnet/sf/saxon/Query;->projection:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lnet/sf/saxon/s9api/DocumentBuilder;->setDocumentProjectionQuery(Lnet/sf/saxon/s9api/XQueryExecutable;)V

    iget-boolean v1, p0, Lnet/sf/saxon/Query;->explaining:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/query/XQueryExpression;->explainPathMap()V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/Query;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/s9api/DocumentBuilder;->setDTDValidation(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/Query;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION_RECOVERABLE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p0}, Lnet/sf/saxon/Query;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/lib/AugmentedSource;-><init>(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)V

    move-object p1, p2

    :cond_4
    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p0

    invoke-virtual {p3, p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->setContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :cond_5
    return-void
.end method

.method public processSourceFile(Ljava/lang/String;Z)Ljavax/xml/transform/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "user.dir"

    if-nez p2, :cond_4

    invoke-static {p1}, Lnet/sf/saxon/trans/CommandLineOptions;->isImplicitURI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    sget-object p2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Query;->quit(Ljava/lang/String;I)V

    :cond_2
    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {p0}, Lnet/sf/saxon/Platform;->isJava()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1, p0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p2, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {p2}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p1, p2, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string p1, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object p1, p2, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p1, "source document"

    iput-object p1, p2, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Lnet/sf/saxon/lib/ResourceResolver;

    iget-object p0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-virtual {p2, p1}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public quit(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lnet/sf/saxon/Query;->d:Z

    if-eqz p0, :cond_1

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runQuery(Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/Query;->wrap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getUnderlyingQueryContext()Lnet/sf/saxon/query/DynamicQueryContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/query/XQueryExpression;->iterator(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/Query;->config:Lnet/sf/saxon/Configuration;

    invoke-static {p1, p2}, Lnet/sf/saxon/query/QueryResult;->wrap(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p2, p1, p4}, Lnet/sf/saxon/s9api/Processor;->writeXdmValue(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    invoke-interface {p4}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    iget-boolean p1, p0, Lnet/sf/saxon/Query;->streaming:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2, p3, p4}, Lnet/sf/saxon/s9api/XQueryEvaluator;->runStreamed(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lnet/sf/saxon/s9api/XQueryEvaluator;->run(Lnet/sf/saxon/s9api/Destination;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-boolean p1, p0, Lnet/sf/saxon/Query;->c:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-boolean p2, p0, Lnet/sf/saxon/Query;->c:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->close()V

    :cond_3
    throw p1
.end method

.method public runUpdate(Lnet/sf/saxon/s9api/XQueryExecutable;Lnet/sf/saxon/s9api/XQueryEvaluator;Lnet/sf/saxon/s9api/Serializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {p3, v0}, Lnet/sf/saxon/s9api/Serializer;->getOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "xml"

    invoke-virtual {p3, v0, v1}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/Query;->writeback:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/sunia/HTREnginev2/jal;

    invoke-direct {v1, p0, p3, v0}, Lcom/sunia/HTREnginev2/jal;-><init>(Lnet/sf/saxon/Query;Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;)V

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getUnderlyingQueryContext()Lnet/sf/saxon/query/DynamicQueryContext;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lnet/sf/saxon/query/XQueryExpression;->runUpdate(Lnet/sf/saxon/query/DynamicQueryContext;Lnet/sf/saxon/query/UpdateAgent;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/s9api/SaxonApiException;

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getContextItem()Lnet/sf/saxon/s9api/XdmItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XQueryExecutable;->getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getUnderlyingQueryContext()Lnet/sf/saxon/query/DynamicQueryContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/XQueryExpression;->runUpdate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getContextItem()Lnet/sf/saxon/s9api/XdmItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/Query;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XQueryEvaluator;->getContextItem()Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/s9api/Processor;->writeXdmValue(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lnet/sf/saxon/Query;->c:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->close()V

    :cond_4
    return-void

    :catch_1
    move-exception p1

    :try_start_4
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    iget-boolean p2, p0, Lnet/sf/saxon/Query;->c:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/Query;->b:Lnet/sf/saxon/lib/Logger;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/lib/Logger;->close()V

    :cond_5
    throw p1
.end method
