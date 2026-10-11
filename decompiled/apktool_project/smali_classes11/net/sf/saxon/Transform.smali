.class public Lnet/sf/saxon/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/Transform$a;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/s9api/Processor;

.field protected allowExit:Z

.field public b:Lnet/sf/saxon/s9api/XsltCompiler;

.field public c:Lnet/sf/saxon/lib/Logger;

.field public d:Z

.field protected repeat:I

.field protected run:Z

.field protected schemaAware:Z

.field protected showTime:Z

.field protected sourceParserName:Ljava/lang/String;

.field protected useURLs:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/Transform;->useURLs:Z

    iput-boolean v0, p0, Lnet/sf/saxon/Transform;->showTime:Z

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/saxon/Transform;->repeat:I

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sf/saxon/Transform;->sourceParserName:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sf/saxon/Transform;->schemaAware:Z

    iput-boolean v1, p0, Lnet/sf/saxon/Transform;->allowExit:Z

    iput-boolean v1, p0, Lnet/sf/saxon/Transform;->run:Z

    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    iput-boolean v0, p0, Lnet/sf/saxon/Transform;->d:Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/Transform;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/Transform;->e(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/Transform;Ljava/util/List;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/Transform;->g(Lnet/sf/saxon/Transform;Ljava/util/List;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V

    return-void
.end method

.method public static c()Ljava/net/URI;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic e(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lnet/sf/saxon/Transform;Ljava/util/List;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/Transform;",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;",
            "Lnet/sf/saxon/s9api/XsltExecutable;",
            "Ljava/io/File;",
            "Lnet/sf/saxon/trans/CommandLineOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/Source;

    invoke-static {v1}, Lnet/sf/saxon/Transform;->d(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, p3, v2, p2}, Lnet/sf/saxon/Transform;->f(Ljava/io/File;Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v3, p4}, Lnet/sf/saxon/Transform;->processFile(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "While processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " transformation"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    const-string p2, "s"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/Transform;

    invoke-direct {v0}, Lnet/sf/saxon/Transform;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Transform;->doTransform([Ljava/lang/String;)V

    return-void
.end method

.method public static now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public applyLocalOptions(Lnet/sf/saxon/trans/CommandLineOptions;Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public badUsage(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->error(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lnet/sf/saxon/Transform;->showTime:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getProductTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    const-string v2, "Usage: see http://www.saxonica.com/documentation/index.html#!using-xsl/commandline"

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

    invoke-virtual {p0, v2}, Lnet/sf/saxon/Transform;->setPermittedOptions(Lnet/sf/saxon/trans/CommandLineOptions;)V

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

    const-string v2, "Use -XYZ:? for details of option XYZ"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "Params: "

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  param=value           Set stylesheet string parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  +param=filename       Set stylesheet document parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  ?param=expression     Set stylesheet parameter using XPath"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    const-string v2, "  !param=value          Set serialization parameter"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget-boolean p0, p0, Lnet/sf/saxon/Transform;->allowExit:Z

    if-eqz p0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doTransform([Ljava/lang/String;)V
    .locals 32

    move-object/from16 v8, p0

    const-string v1, "yes"

    const-string v2, "it"

    const-string v9, "TB"

    const-string v3, "off"

    const-string v4, "on"

    .line 1
    new-instance v10, Lnet/sf/saxon/trans/CommandLineOptions;

    invoke-direct {v10}, Lnet/sf/saxon/trans/CommandLineOptions;-><init>()V

    .line 2
    invoke-virtual {v8, v10}, Lnet/sf/saxon/Transform;->setPermittedOptions(Lnet/sf/saxon/trans/CommandLineOptions;)V

    const/4 v11, 0x2

    move-object/from16 v5, p1

    .line 3
    :try_start_0
    invoke-virtual {v10, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->setActualOptions([Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v11}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :goto_0
    const/4 v12, 0x0

    .line 5
    iput-boolean v12, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    const-string v5, "config"

    .line 6
    invoke-virtual {v10, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " does not exist"

    if-eqz v5, :cond_1

    .line 7
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Configuration file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v11}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    .line 10
    :cond_0
    :try_start_1
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lnet/sf/saxon/Configuration;->readConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object v5

    .line 11
    invoke-virtual {v8, v5}, Lnet/sf/saxon/Transform;->initializeConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 12
    new-instance v7, Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v7, v5}, Lnet/sf/saxon/s9api/Processor;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v7, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    .line 13
    invoke-virtual {v5, v11}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v5

    iput-boolean v5, v8, Lnet/sf/saxon/Transform;->schemaAware:Z
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    .line 14
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v11}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    .line 15
    :cond_1
    :goto_1
    iget-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    if-nez v5, :cond_2

    iget-boolean v5, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    if-nez v5, :cond_2

    .line 16
    invoke-virtual {v10}, Lnet/sf/saxon/trans/CommandLineOptions;->testIfSchemaAware()Z

    move-result v5

    iput-boolean v5, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    .line 17
    :cond_2
    iget-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-nez v5, :cond_3

    .line 18
    new-instance v5, Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v5, v13}, Lnet/sf/saxon/s9api/Processor;-><init>(Z)V

    iput-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    .line 19
    invoke-virtual {v5}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    .line 20
    invoke-virtual {v8, v5}, Lnet/sf/saxon/Transform;->initializeConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 21
    :try_start_2
    iget-boolean v14, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    invoke-virtual {v8, v14, v7}, Lnet/sf/saxon/Transform;->setFactoryConfiguration(ZLjava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v5

    .line 23
    iget-boolean v14, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    invoke-virtual {v5, v14}, Lnet/sf/saxon/trans/CompilerInfo;->setSchemaAware(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 24
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v11}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    .line 26
    :cond_3
    :goto_2
    iget-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v5}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v14

    .line 27
    :try_start_3
    iget-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;
    :try_end_3
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    :try_start_4
    invoke-virtual {v10, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->applyToConfiguration(Lnet/sf/saxon/s9api/Processor;)V

    .line 28
    iget-object v5, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v5}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v5

    iput-object v5, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    const-string v5, "quit"

    .line 29
    invoke-virtual {v10, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v13

    goto :goto_3

    :cond_4
    move v5, v12

    :goto_3
    iput-boolean v5, v8, Lnet/sf/saxon/Transform;->allowExit:Z

    const-string v5, "a"

    .line 30
    invoke-virtual {v10, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v15, "explain"

    .line 31
    invoke-virtual {v10, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    const-string v7, ""

    if-eqz v15, :cond_6

    .line 32
    :try_start_5
    iget-object v11, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v13, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v13, v12}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 33
    iget-object v11, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/sf/saxon/s9api/XsltCompiler;->setJustInTimeCompilation(Z)V

    .line 34
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_4
    const/4 v15, 0x0

    :goto_5
    const-string v13, "export"

    .line 35
    invoke-virtual {v10, v13}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 36
    iget-object v11, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->setJustInTimeCompilation(Z)V

    .line 37
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x1

    const/4 v13, 0x0

    :goto_6
    const/16 v17, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v16, v1

    move/from16 v17, v11

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_7
    const-string v11, "target"

    .line 38
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object/from16 v18, v15

    .line 39
    iget-object v15, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v15, v11}, Lnet/sf/saxon/s9api/XsltCompiler;->setTargetEdition(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object/from16 v18, v15

    :goto_8
    const-string v11, "relocate"

    .line 40
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 41
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 42
    iget-object v11, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lnet/sf/saxon/s9api/XsltCompiler;->setRelocatable(Z)V

    :cond_a
    const-string v11, "jit"

    .line 43
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 44
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    if-nez v13, :cond_c

    iget-boolean v15, v8, Lnet/sf/saxon/Transform;->run:Z

    if-eqz v15, :cond_c

    if-eqz v1, :cond_b

    .line 45
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    const-string v11, "Warning: -jit:on is ignored when -export:on is set"

    invoke-virtual {v3, v11}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    const/4 v3, 0x1

    goto :goto_a

    .line 46
    :cond_c
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    move/from16 v3, v17

    .line 47
    :goto_a
    iget-object v11, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v11, v3}, Lnet/sf/saxon/s9api/XsltCompiler;->setJustInTimeCompilation(Z)V

    move v11, v3

    goto :goto_b

    :cond_e
    move/from16 v11, v17

    :goto_b
    const-string v3, "lib"

    .line 48
    invoke-virtual {v10, v3}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 49
    new-instance v15, Ljava/util/StringTokenizer;

    move/from16 v17, v12

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v15, v3, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 51
    :goto_c
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 52
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v15

    .line 53
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    move-object/from16 v15, v19

    goto :goto_c

    .line 54
    :cond_f
    :try_start_6
    new-instance v12, Lnet/sf/saxon/trans/packages/PackageLibrary;

    iget-object v15, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v15}, Lnet/sf/saxon/s9api/XsltCompiler;->getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v15

    invoke-direct {v12, v15, v3}, Lnet/sf/saxon/trans/packages/PackageLibrary;-><init>(Lnet/sf/saxon/trans/CompilerInfo;Ljava/util/Set;)V
    :try_end_6
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 55
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-virtual {v8, v3, v12}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    const/4 v12, 0x0

    .line 56
    :goto_d
    iget-object v3, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/XsltCompiler;->getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v3

    invoke-virtual {v3, v12}, Lnet/sf/saxon/trans/CompilerInfo;->setPackageLibrary(Lnet/sf/saxon/trans/packages/PackageLibrary;)V

    goto :goto_e

    :cond_10
    move/from16 v17, v12

    :goto_e
    const-string v3, "ns"

    .line 57
    invoke-virtual {v10, v3}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    const-string v12, "##any"

    .line 58
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 59
    iget-object v3, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    sget-object v12, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->ANY_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-virtual {v3, v12}, Lnet/sf/saxon/s9api/XsltCompiler;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    goto :goto_f

    :cond_11
    const-string v12, "##html5"

    .line 60
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 61
    iget-object v3, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    const-string v12, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v12}, Lnet/sf/saxon/s9api/XsltCompiler;->setDefaultElementNamespace(Ljava/lang/String;)V

    .line 62
    iget-object v3, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    sget-object v12, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE_OR_NONE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    invoke-virtual {v3, v12}, Lnet/sf/saxon/s9api/XsltCompiler;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    goto :goto_f

    .line 63
    :cond_12
    iget-object v12, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v12, v3}, Lnet/sf/saxon/s9api/XsltCompiler;->setDefaultElementNamespace(Ljava/lang/String;)V

    :cond_13
    :goto_f
    const-string v3, "o"

    .line 64
    invoke-virtual {v10, v3}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    goto :goto_10

    :cond_14
    const/4 v3, 0x0

    :goto_10
    const-string v12, "nogo"

    .line 65
    invoke-virtual {v10, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    if-eqz v11, :cond_15

    .line 66
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v11

    const-string v12, "Warning: -jit:on is ignored when -nogo is set"

    invoke-virtual {v11, v12}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    :cond_15
    const/4 v11, 0x0

    .line 67
    iput-boolean v11, v8, Lnet/sf/saxon/Transform;->run:Z

    .line 68
    iget-object v12, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v12, v11}, Lnet/sf/saxon/s9api/XsltCompiler;->setJustInTimeCompilation(Z)V

    :cond_16
    const-string v11, "p"

    .line 69
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 71
    sget-object v11, Lnet/sf/saxon/lib/Feature;->RECOGNIZE_URI_QUERY_PARAMETERS:Lnet/sf/saxon/lib/Feature;

    const/4 v12, 0x1

    invoke-virtual {v14, v11, v12}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    .line 72
    iput-boolean v12, v8, Lnet/sf/saxon/Transform;->useURLs:Z

    :cond_17
    const-string v11, "repeat"

    .line 73
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_7
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    if-eqz v11, :cond_18

    .line 74
    :try_start_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lnet/sf/saxon/Transform;->repeat:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_11

    :catch_4
    :try_start_9
    const-string v11, "Bad number after -repeat"

    .line 75
    invoke-virtual {v8, v11}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_18
    :goto_11
    const-string v11, "s"

    .line 76
    invoke-virtual {v10, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    goto :goto_12

    :cond_19
    const/4 v11, 0x0

    :goto_12
    const-string v12, "json"

    .line 77
    invoke-virtual {v10, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v12, 0x0

    :goto_13
    const-string v15, "threads"

    .line 78
    invoke-virtual {v10, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1b

    .line 79
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    goto :goto_14

    :cond_1b
    const/16 v19, 0x0

    :goto_14
    const-string v15, "t"

    .line 80
    invoke-virtual {v10, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c

    .line 81
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v15

    move-object/from16 v20, v13

    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getProductTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v13

    sget-object v15, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v15}, Lnet/sf/saxon/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 83
    iget-object v13, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Lnet/sf/saxon/lib/Feature;->TIMING:Lnet/sf/saxon/lib/Feature;

    move/from16 v21, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, v8, Lnet/sf/saxon/Transform;->showTime:Z

    goto :goto_15

    :cond_1c
    move/from16 v21, v1

    move-object/from16 v20, v13

    :goto_15
    const-string v1, "T"

    .line 85
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v15, "Tout"

    .line 86
    invoke-virtual {v10, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1d

    .line 87
    invoke-virtual {v14, v15}, Lnet/sf/saxon/Configuration;->setTraceListenerOutputFile(Ljava/lang/String;)V

    .line 88
    :cond_1d
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 89
    new-instance v1, Lnet/sf/saxon/trace/XSLTTraceListener;

    invoke-direct {v1}, Lnet/sf/saxon/trace/XSLTTraceListener;-><init>()V

    goto :goto_16

    .line 90
    :cond_1e
    invoke-virtual {v14, v1}, Lnet/sf/saxon/Configuration;->makeTraceListener(Ljava/lang/String;)Lnet/sf/saxon/lib/TraceListener;

    move-result-object v1

    .line 91
    :goto_16
    iget-object v15, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v13, Lnet/sf/saxon/lib/Feature;->TRACE_LISTENER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v15, v13, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 92
    iget-object v13, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Lnet/sf/saxon/lib/Feature;->LINE_NUMBERING:Lnet/sf/saxon/lib/Feature;

    move-object/from16 v23, v6

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15, v6}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    const-string v6, "Tlevel"

    .line 93
    invoke-virtual {v10, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 94
    instance-of v13, v1, Lnet/sf/saxon/trace/AbstractTraceListener;

    if-eqz v13, :cond_25

    .line 95
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v15, 0x3

    sparse-switch v13, :sswitch_data_0

    goto :goto_17

    :sswitch_0
    const-string v13, "none"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x0

    goto :goto_18

    :sswitch_1
    const-string v13, "high"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v6, v15

    goto :goto_18

    :sswitch_2
    const-string v13, "low"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_18

    :sswitch_3
    const-string v13, "normal"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x2

    goto :goto_18

    :cond_1f
    :goto_17
    const/4 v6, -0x1

    :goto_18
    if-eqz v6, :cond_23

    const/4 v13, 0x1

    if-eq v6, v13, :cond_22

    const/4 v13, 0x2

    if-eq v6, v13, :cond_21

    if-eq v6, v15, :cond_20

    goto :goto_19

    .line 96
    :cond_20
    check-cast v1, Lnet/sf/saxon/trace/AbstractTraceListener;

    invoke-virtual {v1, v15}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_19

    .line 97
    :cond_21
    check-cast v1, Lnet/sf/saxon/trace/AbstractTraceListener;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_19

    .line 98
    :cond_22
    check-cast v1, Lnet/sf/saxon/trace/AbstractTraceListener;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_19

    .line 99
    :cond_23
    check-cast v1, Lnet/sf/saxon/trace/AbstractTraceListener;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lnet/sf/saxon/trace/AbstractTraceListener;->setLevelOfDetail(I)V

    goto :goto_19

    :cond_24
    move-object/from16 v23, v6

    .line 100
    :cond_25
    :goto_19
    invoke-virtual {v10, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 101
    sget-object v1, Lnet/sf/saxon/lib/Feature;->MONITOR_HOT_SPOT_BYTE_CODE:Lnet/sf/saxon/lib/Feature;

    const/4 v6, 0x1

    invoke-virtual {v14, v1, v6}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_26
    const-string v1, "TP"

    .line 102
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 103
    new-instance v6, Lnet/sf/saxon/trace/TimingTraceListener;

    invoke-direct {v6}, Lnet/sf/saxon/trace/TimingTraceListener;-><init>()V

    .line 104
    iget-object v13, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Lnet/sf/saxon/lib/Feature;->TRACE_LISTENER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v13, v15, v6}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 105
    iget-object v13, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Lnet/sf/saxon/lib/Feature;->LINE_NUMBERING:Lnet/sf/saxon/lib/Feature;

    move-object/from16 v24, v9

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15, v9}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    .line 106
    iget-object v9, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v9}, Lnet/sf/saxon/s9api/XsltCompiler;->getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v9

    new-instance v13, Lnet/sf/saxon/trace/TimingCodeInjector;

    invoke-direct {v13}, Lnet/sf/saxon/trace/TimingCodeInjector;-><init>()V

    invoke-virtual {v9, v13}, Lnet/sf/saxon/trans/CompilerInfo;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_28

    .line 108
    new-instance v9, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v13}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/File;)V

    invoke-interface {v6, v9}, Lnet/sf/saxon/lib/TraceListener;->setOutputDestination(Lnet/sf/saxon/lib/Logger;)V

    goto :goto_1a

    :cond_27
    move-object/from16 v24, v9

    :cond_28
    :goto_1a
    const-string v1, "traceout"

    .line 109
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    .line 110
    iget-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    if-nez v1, :cond_31

    .line 111
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    iput-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    goto :goto_1d

    .line 112
    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v9, 0x117262

    if-eq v6, v9, :cond_2c

    const v9, 0x11984b

    if-eq v6, v9, :cond_2b

    const v9, 0x220fc2a

    if-eq v6, v9, :cond_2a

    goto :goto_1b

    :cond_2a
    const-string v6, "#null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x2

    goto :goto_1c

    :cond_2b
    const-string v6, "#out"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_1c

    :cond_2c
    const-string v6, "#err"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x0

    goto :goto_1c

    :cond_2d
    :goto_1b
    const/4 v6, -0x1

    :goto_1c
    if-eqz v6, :cond_30

    const/4 v9, 0x1

    if-eq v6, v9, :cond_2f

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2e

    .line 113
    new-instance v6, Lnet/sf/saxon/lib/StandardLogger;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/File;)V

    iput-object v6, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, v8, Lnet/sf/saxon/Transform;->d:Z

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    .line 115
    iput-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    goto :goto_1d

    .line 116
    :cond_2f
    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v6}, Lnet/sf/saxon/lib/StandardLogger;-><init>(Ljava/io/PrintStream;)V

    iput-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    goto :goto_1d

    .line 117
    :cond_30
    new-instance v1, Lnet/sf/saxon/lib/StandardLogger;

    invoke-direct {v1}, Lnet/sf/saxon/lib/StandardLogger;-><init>()V

    iput-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    :cond_31
    :goto_1d
    const-string v1, "u"

    .line 118
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v8, Lnet/sf/saxon/Transform;->useURLs:Z

    :cond_32
    const-string v1, "x"

    .line 120
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 121
    iput-object v1, v8, Lnet/sf/saxon/Transform;->sourceParserName:Ljava/lang/String;

    .line 122
    iget-object v6, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v9, Lnet/sf/saxon/lib/Feature;->SOURCE_PARSER_CLASS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v6, v9, v1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_33
    const-string v1, "xsd"

    .line 123
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    goto :goto_1e

    :cond_34
    const/4 v1, 0x0

    :goto_1e
    const-string v6, "xsdversion"

    .line 124
    invoke-virtual {v10, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 125
    iget-object v9, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v13, Lnet/sf/saxon/lib/Feature;->XSD_VERSION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v9, v13, v6}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    :cond_35
    const-string v6, "xsl"

    .line 126
    invoke-virtual {v10, v6}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_36

    goto :goto_1f

    :cond_36
    const/4 v6, 0x0

    :goto_1f
    const-string v9, "y"

    .line 127
    invoke-virtual {v10, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_37

    .line 128
    iget-object v13, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v15, Lnet/sf/saxon/lib/Feature;->STYLE_PARSER_CLASS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v13, v15, v9}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto :goto_20

    :cond_37
    const/4 v9, 0x0

    :goto_20
    const-string v13, "?"

    .line 129
    invoke-virtual {v10, v13}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_38

    .line 130
    invoke-virtual {v8, v7}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    .line 131
    :cond_38
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v7

    const-string v13, "HE"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "license"

    .line 132
    invoke-virtual {v10, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3a

    .line 133
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_21

    .line 134
    :cond_39
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->disableLicensing()V

    goto :goto_22

    .line 135
    :cond_3a
    :goto_21
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->displayLicenseMessage()V

    .line 136
    :cond_3b
    :goto_22
    invoke-virtual {v8, v10, v14}, Lnet/sf/saxon/Transform;->applyLocalOptions(Lnet/sf/saxon/trans/CommandLineOptions;Lnet/sf/saxon/Configuration;)V

    if-eqz v11, :cond_3c

    if-eqz v12, :cond_3c

    const-string v4, "-s and -json options cannot be used together"

    .line 137
    invoke-virtual {v8, v4}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    .line 138
    :cond_3c
    invoke-virtual {v10, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    if-eqz v5, :cond_3d

    const-string v4, "-it and -a options cannot be used together"

    .line 139
    invoke-virtual {v8, v4}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_3d
    if-eqz v12, :cond_3e

    if-eqz v5, :cond_3e

    const-string v4, "-json and -a options cannot be used together"

    .line 140
    invoke-virtual {v8, v4}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_3e
    const-string v4, "xsiloc"

    .line 141
    invoke-virtual {v10, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    const-string v4, "val"

    invoke-virtual {v10, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 142
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    const-string v7, "-xsiloc is ignored when -val is absent"

    invoke-virtual {v4, v7}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    .line 143
    :cond_3f
    invoke-virtual {v10}, Lnet/sf/saxon/trans/CommandLineOptions;->getPositionalOptions()Ljava/util/List;

    move-result-object v4

    .line 144
    iget-boolean v7, v8, Lnet/sf/saxon/Transform;->run:Z

    if-eqz v7, :cond_41

    invoke-virtual {v10, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    if-nez v11, :cond_41

    if-nez v12, :cond_41

    .line 145
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "No source file name"

    .line 146
    invoke-virtual {v8, v2}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_40
    const/4 v2, 0x0

    .line 147
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_23

    :cond_41
    const/4 v2, 0x0

    :goto_23
    if-nez v5, :cond_43

    if-nez v6, :cond_43

    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v2, :cond_42

    const-string v6, "No stylesheet file name"

    .line 149
    invoke-virtual {v8, v6}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_42
    add-int/lit8 v6, v2, 0x1

    .line 150
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v31, v6

    move-object v6, v2

    move/from16 v2, v31

    .line 151
    :cond_43
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_44

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized option: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lnet/sf/saxon/Transform;->badUsage(Ljava/lang/String;)V

    :cond_44
    const-string v2, "scmin"

    .line 153
    invoke-virtual {v10, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 154
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lnet/sf/saxon/Configuration;->importComponents(Ljavax/xml/transform/Source;)V

    :cond_45
    if-eqz v1, :cond_46

    .line 155
    invoke-static {v14, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->loadAdditionalSchemas(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    .line 156
    :cond_46
    iget-object v1, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->applyStaticParams(Lnet/sf/saxon/s9api/XsltCompiler;)V

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_4c

    .line 158
    iget-object v2, v8, Lnet/sf/saxon/Transform;->sourceParserName:Ljava/lang/String;

    if-nez v2, :cond_47

    const/4 v2, 0x0

    goto :goto_24

    :cond_47
    const/4 v2, 0x1

    .line 159
    :goto_24
    iget-boolean v4, v8, Lnet/sf/saxon/Transform;->useURLs:Z

    iget-object v7, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-static {v11, v4, v7, v2, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->loadDocuments(Ljava/lang/String;ZLnet/sf/saxon/s9api/Processor;ZLjava/util/List;)Z

    move-result v2

    .line 160
    invoke-virtual {v8, v1}, Lnet/sf/saxon/Transform;->preprocess(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_4b

    if-nez v3, :cond_48

    const-string v4, "To process a directory, -o must be specified"

    const/4 v7, 0x2

    .line 161
    invoke-virtual {v8, v4, v7}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_25

    .line 162
    :cond_48
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "Output directory must be different from input"

    const/4 v7, 0x2

    .line 163
    invoke-virtual {v8, v4, v7}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_25

    .line 164
    :cond_49
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "Input is a directory, but output is not"

    const/4 v11, 0x2

    .line 166
    invoke-virtual {v8, v7, v11}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :cond_4a
    move-object v11, v1

    move v12, v2

    move-object v1, v4

    goto :goto_26

    :cond_4b
    :goto_25
    move-object v11, v1

    move v12, v2

    const/4 v1, 0x0

    goto :goto_26

    :cond_4c
    move-object v11, v1

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_26
    if-eqz v3, :cond_4d

    if-nez v12, :cond_4d

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "Output is a directory, but input is not"

    const/4 v3, 0x2

    .line 169
    invoke-virtual {v8, v2, v3}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :cond_4d
    move-object v13, v1

    if-eqz v5, :cond_4f

    if-eqz v12, :cond_4e

    .line 170
    invoke-virtual {v8, v11, v13, v10}, Lnet/sf/saxon/Transform;->h(Ljava/util/List;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V

    goto/16 :goto_44

    :cond_4e
    const/4 v1, 0x0

    .line 171
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/Source;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2, v13, v10}, Lnet/sf/saxon/Transform;->i(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V

    goto/16 :goto_44

    :cond_4f
    const/4 v2, 0x0

    .line 172
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v3

    .line 173
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->useURLs:Z

    if-nez v1, :cond_51

    invoke-static {v6}, Lnet/sf/saxon/trans/CommandLineOptions;->isImplicitURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_27

    :cond_50
    const/4 v1, 0x0

    goto :goto_28

    :cond_51
    :goto_27
    const/4 v1, 0x1

    :goto_28
    if-eqz v1, :cond_52

    .line 174
    new-instance v1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    .line 175
    iput-object v6, v1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    .line 176
    invoke-static {}, Lnet/sf/saxon/Transform;->c()Ljava/net/URI;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    .line 178
    invoke-virtual {v5, v6}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    .line 179
    iput-object v5, v1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string v5, "transformation"

    .line 180
    iput-object v5, v1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Lnet/sf/saxon/lib/ResourceResolver;

    .line 181
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v5, v14}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v1, v6}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object v1

    goto :goto_29

    :cond_52
    const-string v1, "-"

    .line 182
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 183
    invoke-static {}, Lnet/sf/saxon/Transform;->c()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_53

    .line 184
    sget-object v5, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v5}, Lnet/sf/saxon/Platform;->isJava()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 185
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getStyleParser()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 186
    new-instance v6, Lorg/xml/sax/InputSource;

    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 187
    invoke-virtual {v6, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 188
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1, v5, v6}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    goto :goto_29

    .line 189
    :cond_53
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v5, v6, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2a

    :goto_29
    move-object v5, v2

    goto :goto_2b

    .line 190
    :cond_54
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v6}, Lnet/sf/saxon/trans/packages/PackageLibrary;->findDetailsForAlias(Ljava/lang/String;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 192
    iget-object v1, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v1, v6}, Lnet/sf/saxon/s9api/XsltCompiler;->obtainPackageWithAlias(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XsltPackage;->link()Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v1

    move-object v5, v1

    move-object v1, v2

    goto :goto_2b

    .line 194
    :cond_55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_56

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stylesheet file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v8, v5, v6}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    .line 197
    :cond_56
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    :goto_2a
    move-object v1, v5

    goto :goto_29

    :goto_2b
    if-nez v1, :cond_57

    if-nez v5, :cond_57

    const-string v6, "URIResolver for stylesheet file must return a Source"

    const/4 v7, 0x2

    .line 198
    invoke-virtual {v8, v6, v7}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V
    :try_end_9
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    :cond_57
    const-string v6, "Stylesheet exported to: "

    if-nez v5, :cond_65

    if-eqz v21, :cond_59

    .line 199
    :try_start_a
    iget-boolean v7, v8, Lnet/sf/saxon/Transform;->run:Z
    :try_end_a
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_a .. :try_end_a} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    if-nez v7, :cond_59

    .line 200
    :try_start_b
    iget-object v7, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v7, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object v7

    .line 201
    new-instance v9, Ljava/io/File;
    :try_end_b
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-object/from16 v15, v20

    :try_start_c
    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lnet/sf/saxon/s9api/XsltPackage;->save(Ljava/io/File;)V

    .line 202
    iget-boolean v7, v8, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v7, :cond_58

    .line 203
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V
    :try_end_c
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :cond_58
    return-void

    :catch_5
    move-exception v0

    goto :goto_2c

    :catch_6
    move-exception v0

    move-object/from16 v15, v20

    :goto_2c
    move-object v2, v0

    .line 204
    :try_start_d
    invoke-virtual {v2}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v8, v2, v7}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_2d

    :cond_59
    move-object/from16 v15, v20

    .line 205
    :goto_2d
    iget v2, v8, Lnet/sf/saxon/Transform;->repeat:I
    :try_end_d
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_d .. :try_end_d} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    const/16 v7, 0x14

    if-le v2, v7, :cond_5a

    move v2, v7

    :cond_5a
    const-string v7, "Stylesheet compilation time: "

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5c

    .line 206
    :try_start_e
    iget-object v2, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v1

    .line 207
    iget-boolean v2, v8, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v2, :cond_5b

    .line 208
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v22

    .line 209
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v22, v22, v3

    invoke-static/range {v22 .. v23}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_5b
    move-object v5, v1

    goto/16 :goto_34

    .line 210
    :cond_5c
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v3

    .line 211
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v9

    move-wide/from16 v22, v3

    .line 212
    instance-of v3, v9, Lnet/sf/saxon/lib/StandardLogger;

    if-eqz v3, :cond_5d

    move-object v3, v9

    check-cast v3, Lnet/sf/saxon/lib/StandardLogger;

    invoke-virtual {v3}, Lnet/sf/saxon/lib/StandardLogger;->getThreshold()I

    move-result v3

    goto :goto_2e

    :cond_5d
    const/4 v3, 0x0

    :goto_2e
    neg-int v4, v2

    const-wide/16 v25, 0x0

    :goto_2f
    if-ge v4, v2, :cond_63

    if-nez v4, :cond_60

    .line 213
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v22

    .line 214
    instance-of v5, v9, Lnet/sf/saxon/lib/StandardLogger;

    if-eqz v5, :cond_5e

    .line 215
    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/lib/StandardLogger;

    invoke-virtual {v5, v3}, Lnet/sf/saxon/lib/StandardLogger;->setThreshold(I)V

    :cond_5e
    const/4 v5, 0x1

    .line 216
    sput-boolean v5, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    :cond_5f
    move/from16 v20, v3

    goto :goto_31

    :cond_60
    if-gez v4, :cond_5f

    .line 217
    instance-of v5, v9, Lnet/sf/saxon/lib/StandardLogger;

    if-eqz v5, :cond_61

    .line 218
    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/lib/StandardLogger;

    move/from16 v20, v3

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Lnet/sf/saxon/lib/StandardLogger;->setThreshold(I)V

    goto :goto_30

    :cond_61
    move/from16 v20, v3

    :goto_30
    const/4 v3, 0x0

    .line 219
    sput-boolean v3, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    .line 220
    :goto_31
    iget-object v3, v8, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v5

    .line 221
    iget-boolean v3, v8, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v3, :cond_62

    if-ltz v4, :cond_62

    .line 222
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v27

    sub-long v22, v27, v22

    .line 223
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    move-object/from16 v29, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v5

    invoke-static/range {v22 .. v23}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    add-long v25, v25, v22

    move-wide/from16 v22, v27

    goto :goto_32

    :cond_62
    move-object/from16 v29, v1

    move-object/from16 v30, v5

    :goto_32
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    move-object/from16 v1, v29

    move-object/from16 v5, v30

    goto :goto_2f

    .line 224
    :cond_63
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v1, :cond_64

    .line 225
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Average compilation time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    int-to-long v4, v2

    div-long v25, v25, v4

    invoke-static/range {v25 .. v26}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    goto :goto_33

    :cond_64
    move-object v7, v5

    :goto_33
    move-object v5, v7

    .line 226
    :goto_34
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->schemaAware:Z

    if-eqz v1, :cond_66

    .line 227
    invoke-virtual {v5}, Lnet/sf/saxon/s9api/XsltExecutable;->getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result v1

    const-string v2, "schema-aware XSLT"

    const/4 v3, 0x2

    .line 229
    invoke-virtual {v14, v3, v2, v1}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    goto :goto_35

    :cond_65
    move-object/from16 v15, v20

    :cond_66
    :goto_35
    move-object v9, v5

    if-eqz v17, :cond_69

    if-nez v18, :cond_67

    .line 230
    iget-object v1, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v1

    goto :goto_36

    .line 231
    :cond_67
    iget-object v1, v8, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    new-instance v2, Ljava/io/File;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v1

    .line 232
    :goto_36
    sget-object v2, Lnet/sf/saxon/s9api/Serializer$Property;->METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

    const-string v3, "xml"

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    .line 233
    sget-object v2, Lnet/sf/saxon/s9api/Serializer$Property;->INDENT:Lnet/sf/saxon/s9api/Serializer$Property;

    move-object/from16 v3, v16

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    .line 234
    sget-object v2, Lnet/sf/saxon/s9api/Serializer$Property;->OMIT_XML_DECLARATION:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 235
    invoke-virtual {v14, v2}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 236
    sget-object v2, Lnet/sf/saxon/s9api/Serializer$Property;->SAXON_INDENT_SPACES:Lnet/sf/saxon/s9api/Serializer$Property;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V

    .line 237
    :cond_68
    invoke-virtual {v9, v1}, Lnet/sf/saxon/s9api/XsltExecutable;->explain(Lnet/sf/saxon/s9api/Destination;)V

    :cond_69
    if-eqz v21, :cond_6a

    .line 238
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-static {v1}, Lnet/sf/saxon/Query;->createFileIfNecessary(Ljava/io/File;)V

    .line 240
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v2}, Lnet/sf/saxon/s9api/XsltExecutable;->export(Ljava/io/OutputStream;)V

    .line 241
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v1, :cond_6a

    .line 242
    invoke-virtual {v14}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 243
    :cond_6a
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->run:Z
    :try_end_e
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_e .. :try_end_e} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v1, :cond_74

    if-eqz v12, :cond_6f

    if-lez v19, :cond_6e

    .line 244
    :try_start_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6e

    .line 245
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v15, v19

    if-le v15, v1, :cond_6b

    .line 246
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 247
    :cond_6b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, v15

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v12, v1

    .line 248
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    rem-int v7, v1, v15

    .line 249
    new-array v6, v15, [Lnet/sf/saxon/Transform$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 250
    :goto_37
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_6d

    if-ge v4, v7, :cond_6c

    const/16 v16, 0x1

    goto :goto_38

    :cond_6c
    const/16 v16, 0x0

    .line 251
    :goto_38
    new-instance v17, Lnet/sf/saxon/Transform$a;

    add-int v1, v5, v12

    add-int v1, v1, v16

    invoke-interface {v11, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move v3, v5

    move/from16 v19, v4

    move-object v4, v9

    move/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    move-object v6, v13

    move/from16 v21, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/Transform$a;-><init>(Lnet/sf/saxon/Transform;ILnet/sf/saxon/s9api/XsltExecutable;Ljava/util/List;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V

    aput-object v17, v18, v19

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    add-int/lit8 v4, v19, 0x1

    add-int v16, v12, v16

    add-int v5, v20, v16

    move-object/from16 v6, v18

    move/from16 v7, v21

    goto :goto_37

    :cond_6d
    move-object/from16 v18, v6

    const/4 v12, 0x0

    :goto_39
    if-ge v12, v15, :cond_72

    .line 253
    aget-object v1, v18, v12

    .line 254
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    .line 255
    :cond_6e
    invoke-static {v8, v11, v9, v13, v10}, Lnet/sf/saxon/Transform;->g(Lnet/sf/saxon/Transform;Ljava/util/List;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V

    goto :goto_3c

    :cond_6f
    if-eqz v11, :cond_71

    .line 256
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_3a

    :cond_70
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljavax/xml/transform/Source;

    goto :goto_3b

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3d

    :cond_71
    :goto_3a
    const/4 v7, 0x0

    .line 257
    :goto_3b
    invoke-virtual {v8, v7, v9, v13, v10}, Lnet/sf/saxon/Transform;->processFile(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 258
    :cond_72
    :goto_3c
    :try_start_10
    iget-boolean v1, v8, Lnet/sf/saxon/Transform;->d:Z

    if-eqz v1, :cond_74

    iget-object v1, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    if-eqz v1, :cond_74

    .line 259
    invoke-virtual {v1}, Lnet/sf/saxon/lib/Logger;->close()V

    goto :goto_3e

    .line 260
    :goto_3d
    iget-boolean v2, v8, Lnet/sf/saxon/Transform;->d:Z

    if-eqz v2, :cond_73

    iget-object v2, v8, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    if-eqz v2, :cond_73

    .line 261
    invoke-virtual {v2}, Lnet/sf/saxon/lib/Logger;->close()V

    .line 262
    :cond_73
    throw v1

    :cond_74
    :goto_3e
    move-object/from16 v1, v24

    .line 263
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 264
    invoke-virtual {v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lnet/sf/saxon/Configuration;->createByteCodeReport(Ljava/lang/String;)V
    :try_end_10
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lnet/sf/saxon/trans/LicenseException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto/16 :goto_44

    :catch_7
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x2

    goto :goto_40

    :catch_8
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x2

    goto :goto_41

    :catch_9
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x2

    goto/16 :goto_42

    :catch_a
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x2

    goto/16 :goto_43

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 265
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error during transformation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_75

    const-string v1, " (no message)"

    goto :goto_3f

    :cond_75
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_3f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 268
    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto/16 :goto_44

    :catch_c
    move-exception v0

    move v2, v11

    move-object v1, v0

    .line 269
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation failed with configuration problem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_44

    :catch_d
    move-exception v0

    move v2, v11

    move-object v1, v0

    .line 270
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation failed with license problem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_44

    :catch_e
    move-exception v0

    move v2, v11

    move-object v1, v0

    .line 271
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_44

    :catch_f
    move-exception v0

    move v2, v11

    move-object v1, v0

    .line 272
    :goto_43
    invoke-virtual {v1}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    goto :goto_44

    :catch_10
    move-exception v0

    move-object v1, v0

    .line 273
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :cond_76
    :goto_44
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0x1a354 -> :sswitch_2
        0x30dda2 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method public doTransform([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Lnet/sf/saxon/Transform;->doTransform([Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/io/File;Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)Ljava/io/File;
    .locals 1

    invoke-virtual {p3}, Lnet/sf/saxon/s9api/XsltExecutable;->getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    const-string p3, "media-type"

    invoke-virtual {p0, p3}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "text/html"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, ".xml"

    if-eqz p3, :cond_0

    const-string p0, ".html"

    goto :goto_0

    :cond_0
    const-string p3, "text/plain"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ".txt"

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, ".XML"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x4

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/List;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;",
            "Ljava/io/File;",
            "Lnet/sf/saxon/trans/CommandLineOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/Source;

    invoke-static {v1}, Lnet/sf/saxon/Transform;->d(Ljavax/xml/transform/Source;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v1, v2, p2, p3}, Lnet/sf/saxon/Transform;->i(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "While processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " transformation"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-ne v0, p2, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    const-string p2, "s"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final i(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " using associated stylesheet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v0

    iget-object v2, p0, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object p1

    iget-object v2, p0, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Transform;->j(Lnet/sf/saxon/s9api/XdmNode;)Ljavax/xml/transform/Source;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lnet/sf/saxon/s9api/XsltCompiler;->getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/Transform;->b:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v3

    iget-boolean v4, p0, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepared associated stylesheet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v3, p4}, Lnet/sf/saxon/Transform;->newTransformer(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/trans/CommandLineOptions;)Lnet/sf/saxon/s9api/Xslt30Transformer;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p3, p2, v3}, Lnet/sf/saxon/Transform;->f(Ljava/io/File;Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    if-nez p3, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p3}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object p2

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p3, p2}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object p2

    :goto_1
    :try_start_0
    invoke-virtual {p4, p2}, Lnet/sf/saxon/trans/CommandLineOptions;->setSerializationProperties(Lnet/sf/saxon/s9api/Serializer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p0, p3, p4}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v2, p1}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    iget-boolean p1, p0, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide p1

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Execution time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public initializeConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public final j(Lnet/sf/saxon/s9api/XdmNode;)Ljavax/xml/transform/Source;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->asSource()Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0
.end method

.method public newTransformer(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/trans/CommandLineOptions;)Lnet/sf/saxon/s9api/Xslt30Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltExecutable;->load30()Lnet/sf/saxon/s9api/Xslt30Transformer;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V

    const-string p0, "im"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setInitialMode(Lnet/sf/saxon/s9api/QName;)V

    :cond_0
    const-string p0, "now"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Controller;->setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set current time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const-string p0, "on"

    const-string v0, "ea"

    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XsltController;->setAssertionsEnabled(Z)V

    goto :goto_1

    :cond_2
    const-string p0, "off"

    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XsltController;->setAssertionsEnabled(Z)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public preprocess(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;)",
            "Ljava/util/List<",
            "Ljavax/xml/transform/Source;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public processFile(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/XsltExecutable;Ljava/io/File;Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v0, v1, Lnet/sf/saxon/Transform;->repeat:I

    const/4 v4, 0x2

    div-int/2addr v0, v4

    const/4 v5, 0x1

    add-int/lit8 v6, v0, -0x1

    const-string v7, "json"

    invoke-virtual {v3, v7}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, p1

    const/4 v0, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    iget v9, v1, Lnet/sf/saxon/Transform;->repeat:I

    if-ge v13, v9, :cond_1b

    iget-boolean v9, v1, Lnet/sf/saxon/Transform;->showTime:Z

    const-string v10, "it"

    if-eqz v9, :cond_5

    const-string v9, "Processing "

    if-eqz v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "JSON from "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (no source document)"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v11, "im"

    invoke-virtual {v3, v11}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " initial mode = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-virtual {v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " initial template = "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v4, "xsl:initial-template"

    :cond_3
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v4

    invoke-virtual {v4, v9}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v16

    if-ne v13, v6, :cond_6

    const/4 v0, 0x0

    const-wide/16 v14, 0x0

    :cond_6
    add-int/lit8 v4, v0, 0x1

    const/4 v9, 0x0

    if-ge v13, v6, :cond_7

    iput-object v9, v1, Lnet/sf/saxon/Transform;->c:Lnet/sf/saxon/lib/Logger;

    :cond_7
    move-object/from16 v11, p2

    invoke-virtual {v1, v11, v3}, Lnet/sf/saxon/Transform;->newTransformer(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/trans/CommandLineOptions;)Lnet/sf/saxon/s9api/Xslt30Transformer;

    move-result-object v9

    if-nez v2, :cond_8

    invoke-static {}, Lnet/sf/saxon/Transform;->c()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setBaseOutputURI(Ljava/lang/String;)V

    iget-object v0, v1, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, v1, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v0

    :goto_2
    move-object v5, v0

    :try_start_0
    invoke-virtual {v3, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->setSerializationProperties(Lnet/sf/saxon/s9api/Serializer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/Transform;->quit(Ljava/lang/String;I)V

    :goto_3
    sget-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->BUILD_TREE:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v5, v0}, Lnet/sf/saxon/s9api/Serializer;->getOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    sget-object v0, Lnet/sf/saxon/s9api/Serializer$Property;->METHOD:Lnet/sf/saxon/s9api/Serializer$Property;

    invoke-virtual {v5, v0}, Lnet/sf/saxon/s9api/Serializer;->getOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "adaptive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :goto_5
    invoke-virtual {v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v12, :cond_11

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/XsltExecutable;->getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v19

    if-nez v19, :cond_e

    if-nez v2, :cond_d

    invoke-virtual {v9}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v19

    if-nez v19, :cond_c

    goto :goto_6

    :cond_c
    const/16 v19, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v19, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual/range {v19 .. v19}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v19

    const/16 v18, 0x1

    xor-int/lit8 v19, v19, 0x1

    :goto_7
    if-eqz v19, :cond_11

    move/from16 v19, v4

    iget-object v4, v1, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v4}, Lnet/sf/saxon/s9api/Processor;->newDocumentBuilder()Lnet/sf/saxon/s9api/DocumentBuilder;

    move-result-object v4

    move/from16 v20, v6

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    move-object/from16 v21, v7

    sget-object v7, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/s9api/DocumentBuilder;->setDTDValidation(Z)V

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/XsltExecutable;->getWhitespaceStrippingPolicy()Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/s9api/DocumentBuilder;->setWhitespaceStrippingPolicy(Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/lib/Feature;->DTD_VALIDATION_RECOVERABLE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v7

    invoke-direct {v6, v12, v7}, Lnet/sf/saxon/lib/AugmentedSource;-><init>(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)V

    move-object v12, v6

    :cond_f
    invoke-virtual {v10}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {v12}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v6

    new-instance v7, Lcom/sunia/HTREnginev2/mln;

    invoke-direct {v7, v1}, Lcom/sunia/HTREnginev2/mln;-><init>(Lnet/sf/saxon/Transform;)V

    invoke-virtual {v6, v7}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_10
    invoke-virtual {v4, v12}, Lnet/sf/saxon/s9api/DocumentBuilder;->build(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmNode;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v9, v4, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;Z)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/Transform;->j(Lnet/sf/saxon/s9api/XdmNode;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v12, v4

    goto :goto_8

    :cond_11
    move/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v21, v7

    :goto_8
    if-eqz v8, :cond_12

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object v6, v1, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-static {v6, v4}, Lnet/sf/saxon/Query;->h(Lnet/sf/saxon/s9api/Processor;Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/s9api/XdmValue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lnet/sf/saxon/s9api/XdmValue;->itemAt(I)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object v4

    invoke-virtual {v9, v4}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    new-instance v1, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read JSON input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_9
    iget-object v7, v1, Lnet/sf/saxon/Transform;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v3, v7, v9}, Lnet/sf/saxon/trans/CommandLineOptions;->applyFileParams(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/Xslt30Transformer;)V

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v2, Lnet/sf/saxon/s9api/QName;

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    const-string v7, "initial-template"

    const-string v10, "xsl"

    invoke-direct {v2, v10, v4, v7}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    invoke-static {v2}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object v2

    :goto_a
    if-eqz v0, :cond_14

    invoke-virtual {v9, v2, v5}, Lnet/sf/saxon/s9api/Xslt30Transformer;->callTemplate(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/Destination;)V

    goto :goto_b

    :cond_14
    invoke-virtual {v9, v2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->callTemplate(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/s9api/Serializer;->serializeXdmValue(Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_b

    :cond_15
    if-eqz v4, :cond_17

    if-eqz v0, :cond_16

    invoke-virtual {v9, v4, v5}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v9, v4}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/s9api/Serializer;->serializeXdmValue(Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_b

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v9, v12, v5}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v9, v12}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/s9api/Serializer;->serializeXdmValue(Lnet/sf/saxon/s9api/XdmValue;)V

    :goto_b
    invoke-static {}, Lnet/sf/saxon/Transform;->now()J

    move-result-wide v4

    sub-long v4, v4, v16

    add-long/2addr v14, v4

    iget-boolean v0, v1, Lnet/sf/saxon/Transform;->showTime:Z

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execution time: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/trans/Timer;->showMemoryUsed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    iget v0, v1, Lnet/sf/saxon/Transform;->repeat:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    const-string v2, "-------------------------------"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    :cond_19
    iget v0, v1, Lnet/sf/saxon/Transform;->repeat:I

    const v2, 0xf423f

    if-ne v0, v2, :cond_1a

    const-wide/32 v4, 0xea60

    cmp-long v0, v14, v4

    if-lez v0, :cond_1a

    move/from16 v0, v19

    goto :goto_c

    :cond_1a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    move/from16 v0, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1b
    :goto_c
    iget v2, v1, Lnet/sf/saxon/Transform;->repeat:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Average execution time over last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " runs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    div-long/2addr v14, v3

    invoke-static {v14, v15}, Lnet/sf/saxon/trans/Timer;->showExecutionTimeNano(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public quit(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/Transform;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lnet/sf/saxon/Transform;->allowExit:Z

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFactoryConfiguration(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/LicenseException;
        }
    .end annotation

    return-void
.end method

.method public setPermittedOptions(Lnet/sf/saxon/trans/CommandLineOptions;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Use <?xml-stylesheet?> processing instruction to identify stylesheet"

    const-string v2, "a"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Use specified catalog file to resolve URIs"

    const-string v2, "catalog"

    const/16 v4, 0x102

    invoke-virtual {v0, v2, v4, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "config"

    const-string v2, "Use specified configuration file"

    invoke-virtual {v0, v1, v4, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Use specified collection URI resolver class"

    const-string v2, "cr"

    const/16 v5, 0x103

    invoke-virtual {v0, v2, v5, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Display runtime diagnostics"

    const-string v2, "diag"

    const/4 v6, 0x2

    invoke-virtual {v0, v2, v6, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Validate using DTD"

    const-string v2, "dtd"

    const/4 v7, 0x4

    invoke-virtual {v0, v2, v7, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "on"

    const-string v8, "off"

    const-string v9, "recover"

    filled-new-array {v1, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ea"

    const-string v10, "Enable assertions"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "expand"

    const-string v10, "Expand attribute defaults from DTD or Schema"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "explain"

    const-string v10, "Display compiled expression tree and optimization decisions in human-readable form"

    invoke-virtual {v0, v2, v6, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "export"

    const-string v10, "Display compiled expression tree and optimization decisions for exportation"

    invoke-virtual {v0, v2, v6, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "ext"

    const-string v10, "Allow calls to Java extension functions and xsl:result-document"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x106

    const-string v10, "Name of initial mode"

    const-string v11, "im"

    invoke-virtual {v0, v11, v2, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "User-supplied net.sf.saxon.lib.Initializer class to initialize the Saxon Configuration"

    const-string v10, "init"

    const/4 v11, 0x3

    invoke-virtual {v0, v10, v11, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x6

    const-string v10, "Name of initial template"

    const-string v12, "it"

    invoke-virtual {v0, v12, v2, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "jit"

    const-string v10, "Just-in-time compilation"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "json"

    const-string v10, "Source JSON file for primary input"

    invoke-virtual {v0, v2, v4, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "l"

    const-string v10, "Maintain line numbers for source documents"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "List of file names of library packages used by the stylesheet"

    const-string v10, "lib"

    const/16 v12, 0x107

    invoke-virtual {v0, v10, v12, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "license"

    const-string v10, "Check for local license file"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "nogo"

    const-string v10, "Compile only, no evaluation"

    invoke-virtual {v0, v2, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x108

    const-string v10, "Run with specified current date/time"

    const-string v13, "now"

    invoke-virtual {v0, v13, v2, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Default namespace for element names (URI, or ##any, or ##html5)"

    const-string v10, "ns"

    const/16 v13, 0x109

    invoke-virtual {v0, v10, v13, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "o"

    const-string v10, "Use specified file for primary output"

    invoke-virtual {v0, v2, v4, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "opt"

    const-string v10, "Enable/disable optimization options [-]cfgjklmnrsvwx"

    invoke-virtual {v0, v2, v13, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "or"

    const-string v10, "Use named OutputURIResolver class"

    invoke-virtual {v0, v2, v5, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Action when validation of output file fails"

    const-string v10, "outval"

    const/16 v13, 0x104

    invoke-virtual {v0, v10, v13, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "fatal"

    filled-new-array {v9, v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v0, v10, v14, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "p"

    const-string v14, "Recognize query parameters in URI passed to doc()"

    invoke-virtual {v0, v10, v3, v14}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x101

    const-string v14, "Quit JVM if transformation fails"

    const-string v12, "quit"

    invoke-virtual {v0, v12, v10, v14}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "r"

    const-string v12, "Use named URIResolver class"

    invoke-virtual {v0, v10, v5, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "relocate"

    const-string v12, "Produce relocatable packages"

    invoke-virtual {v0, v10, v3, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "Run N times for performance measurement"

    const-string v12, "repeat"

    const/16 v14, 0x105

    invoke-virtual {v0, v12, v14, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "s"

    const-string v12, "Source XML file for primary input"

    invoke-virtual {v0, v10, v4, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "sa"

    const-string v12, "Run in schema-aware mode"

    invoke-virtual {v0, v10, v3, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "scmin"

    const-string v12, "Pre-load schema in SCM format"

    invoke-virtual {v0, v10, v6, v12}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "Handling of whitespace text nodes in source documents"

    const-string v12, "strip"

    invoke-virtual {v0, v12, v13, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "all"

    const-string v5, "ignorable"

    const-string v7, "none"

    filled-new-array {v7, v10, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "t"

    const-string v10, "Display version and timing information, and names of output files"

    invoke-virtual {v0, v5, v3, v10}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "Target Saxon edition for execution via -export"

    const-string v10, "target"

    invoke-virtual {v0, v10, v13, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "HE"

    const-string v12, "JS"

    const-string v4, "EE"

    const-string v13, "PE"

    filled-new-array {v4, v13, v5, v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10, v4, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "T"

    const-string v5, "Use named TraceListener class, or standard TraceListener"

    invoke-virtual {v0, v4, v11, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "TB"

    const-string v5, "Trace hotspot bytecode generation to specified XML file"

    invoke-virtual {v0, v4, v6, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "Debug binding and execution of extension functions"

    const-string v5, "TJ"

    invoke-virtual {v0, v5, v3, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    const-string v5, "Level of detail for trace listener output"

    const-string v10, "Tlevel"

    invoke-virtual {v0, v10, v4, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "normal"

    const-string v5, "high"

    const-string v11, "low"

    filled-new-array {v7, v11, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "normal"

    invoke-virtual {v0, v10, v4, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Tout"

    const-string v5, "File for trace listener output"

    invoke-virtual {v0, v4, v6, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "TP"

    const-string v5, "Use profiling trace listener, with specified output file"

    invoke-virtual {v0, v4, v6, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "threads"

    const-string v5, "Run stylesheet on directory of files divided in N threads"

    invoke-virtual {v0, v4, v14, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "tree"

    const-string v5, "Use specified tree model for source documents"

    const/16 v6, 0x104

    invoke-virtual {v0, v4, v6, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "tiny"

    const-string v5, "tinyc"

    const-string v6, "linked"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "tree"

    invoke-virtual {v0, v5, v4, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "traceout"

    const-string v5, "File for output of trace() and -T output"

    const/16 v6, 0x102

    invoke-virtual {v0, v4, v6, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "u"

    const-string v5, "Interpret filename arguments as URIs"

    invoke-virtual {v0, v4, v3, v5}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "u"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v1}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "val"

    const-string v4, "Apply validation to source documents"

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "strict"

    const-string v4, "lax"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "strict"

    const-string v5, "val"

    invoke-virtual {v0, v5, v1, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionmsg"

    const-string v4, "No longer used"

    invoke-virtual {v0, v1, v3, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "warnings"

    const-string v4, "No longer used"

    const/16 v5, 0x104

    invoke-virtual {v0, v1, v5, v4}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "silent"

    filled-new-array {v1, v9, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "warnings"

    invoke-virtual {v0, v2, v1, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x"

    const-string v2, "Use named XMLReader class for parsing source documents"

    const/16 v4, 0x103

    invoke-virtual {v0, v1, v4, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "xi"

    const-string v2, "Expand XInclude directives in source documents"

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "xmlversion"

    const-string v2, "Indicate whether XML 1.1 is supported"

    const/16 v4, 0x104

    invoke-virtual {v0, v1, v4, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "1.0"

    const-string v2, "1.1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "xmlversion"

    invoke-virtual {v0, v2, v1, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xsd"

    const-string v2, "List of schema documents to be preloaded"

    const/16 v5, 0x107

    invoke-virtual {v0, v1, v5, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "xsdversion"

    const-string v2, "Indicate whether XSD 1.1 is supported"

    invoke-virtual {v0, v1, v4, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "1.0"

    const-string v2, "1.1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "xsdversion"

    invoke-virtual {v0, v2, v1, v15}, Lnet/sf/saxon/trans/CommandLineOptions;->setPermittedValues(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xsiloc"

    const-string v2, "Load schemas named in xsi:schemaLocation (default on)"

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "xsl"

    const-string v2, "Main stylesheet file"

    const/16 v3, 0x102

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "y"

    const-string v2, "Use named XMLReader class for parsing stylesheet and schema documents"

    const/16 v3, 0x103

    invoke-virtual {v0, v1, v3, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x200

    const-string v2, "Display command line help text"

    const-string v3, "?"

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/trans/CommandLineOptions;->addRecognizedOption(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
