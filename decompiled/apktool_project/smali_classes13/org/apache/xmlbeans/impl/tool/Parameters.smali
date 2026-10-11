.class public Lorg/apache/xmlbeans/impl/tool/Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private baseDir:Ljava/io/File;

.field private catalogFile:Ljava/lang/String;

.field private classesDir:Ljava/io/File;

.field private classpath:[Ljava/io/File;

.field private compiler:Ljava/lang/String;

.field private configFiles:[Ljava/io/File;

.field private copyAnn:Z

.field private debug:Z

.field private download:Z

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation
.end field

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/tool/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private incrementalSrcGen:Z

.field private javaFiles:[Ljava/io/File;

.field private mdefNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoryInitialSize:Ljava/lang/String;

.field private memoryMaximumSize:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noAnn:Z

.field private noExt:Z

.field private noPvr:Z

.field private noUpa:Z

.field private noVDoc:Z

.field private nojavac:Z

.field private outputJar:Ljava/io/File;

.field private partialMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
            ">;"
        }
    .end annotation
.end field

.field private quiet:Z

.field private repackage:Ljava/lang/String;

.field private schemaCodePrinter:Lorg/apache/xmlbeans/SchemaCodePrinter;

.field private srcDir:Ljava/io/File;

.field private urlFiles:[Ljava/net/URL;

.field private verbose:Z

.field private wsdlFiles:[Ljava/io/File;

.field private xsdFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->extensions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->mdefNamespaces:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->partialMethods:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getBaseDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->baseDir:Ljava/io/File;

    return-object p0
.end method

.method public getCatalogFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->catalogFile:Ljava/lang/String;

    return-object p0
.end method

.method public getClassesDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->classesDir:Ljava/io/File;

    return-object p0
.end method

.method public getClasspath()[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->classpath:[Ljava/io/File;

    return-object p0
.end method

.method public getCompiler()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->compiler:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigFiles()[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->configFiles:[Ljava/io/File;

    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object p0
.end method

.method public getErrorListener()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->errorListener:Ljava/util/Collection;

    return-object p0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/tool/Extension;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->extensions:Ljava/util/List;

    return-object p0
.end method

.method public getJavaFiles()[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->javaFiles:[Ljava/io/File;

    return-object p0
.end method

.method public getMdefNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->mdefNamespaces:Ljava/util/Set;

    return-object p0
.end method

.method public getMemoryInitialSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->memoryInitialSize:Ljava/lang/String;

    return-object p0
.end method

.method public getMemoryMaximumSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->memoryMaximumSize:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputJar()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->outputJar:Ljava/io/File;

    return-object p0
.end method

.method public getPartialMethods()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->partialMethods:Ljava/util/Set;

    return-object p0
.end method

.method public getRepackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->repackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSchemaCodePrinter()Lorg/apache/xmlbeans/SchemaCodePrinter;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->schemaCodePrinter:Lorg/apache/xmlbeans/SchemaCodePrinter;

    return-object p0
.end method

.method public getSrcDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->srcDir:Ljava/io/File;

    return-object p0
.end method

.method public getUrlFiles()[Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->urlFiles:[Ljava/net/URL;

    return-object p0
.end method

.method public getWsdlFiles()[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->wsdlFiles:[Ljava/io/File;

    return-object p0
.end method

.method public getXsdFiles()[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->xsdFiles:[Ljava/io/File;

    return-object p0
.end method

.method public isCopyAnn()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->copyAnn:Z

    return p0
.end method

.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->debug:Z

    return p0
.end method

.method public isDownload()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->download:Z

    return p0
.end method

.method public isIncrementalSrcGen()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->incrementalSrcGen:Z

    return p0
.end method

.method public isNoAnn()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noAnn:Z

    return p0
.end method

.method public isNoExt()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noExt:Z

    return p0
.end method

.method public isNoPvr()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noPvr:Z

    return p0
.end method

.method public isNoUpa()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noUpa:Z

    return p0
.end method

.method public isNoVDoc()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noVDoc:Z

    return p0
.end method

.method public isNojavac()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->nojavac:Z

    return p0
.end method

.method public isQuiet()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->quiet:Z

    return p0
.end method

.method public isVerbose()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->verbose:Z

    return p0
.end method

.method public setBaseDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setCatalogFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->catalogFile:Ljava/lang/String;

    return-void
.end method

.method public setClassesDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->classesDir:Ljava/io/File;

    return-void
.end method

.method public varargs setClasspath([Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->classpath:[Ljava/io/File;

    return-void
.end method

.method public setCompiler(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->compiler:Ljava/lang/String;

    return-void
.end method

.method public varargs setConfigFiles([Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->configFiles:[Ljava/io/File;

    return-void
.end method

.method public setCopyAnn(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->copyAnn:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->debug:Z

    return-void
.end method

.method public setDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->download:Z

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorListener(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->errorListener:Ljava/util/Collection;

    return-void
.end method

.method public setExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/tool/Extension;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->extensions:Ljava/util/List;

    return-void
.end method

.method public setIncrementalSrcGen(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->incrementalSrcGen:Z

    return-void
.end method

.method public varargs setJavaFiles([Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->javaFiles:[Ljava/io/File;

    return-void
.end method

.method public setMdefNamespaces(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->mdefNamespaces:Ljava/util/Set;

    return-void
.end method

.method public setMemoryInitialSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->memoryInitialSize:Ljava/lang/String;

    return-void
.end method

.method public setMemoryMaximumSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->memoryMaximumSize:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoAnn(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noAnn:Z

    return-void
.end method

.method public setNoExt(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noExt:Z

    return-void
.end method

.method public setNoPvr(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noPvr:Z

    return-void
.end method

.method public setNoUpa(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noUpa:Z

    return-void
.end method

.method public setNoVDoc(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->noVDoc:Z

    return-void
.end method

.method public setNojavac(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->nojavac:Z

    return-void
.end method

.method public setOutputJar(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->outputJar:Ljava/io/File;

    return-void
.end method

.method public setPartialMethods(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->partialMethods:Ljava/util/Set;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->quiet:Z

    return-void
.end method

.method public setRepackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->repackage:Ljava/lang/String;

    return-void
.end method

.method public setSchemaCodePrinter(Lorg/apache/xmlbeans/SchemaCodePrinter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->schemaCodePrinter:Lorg/apache/xmlbeans/SchemaCodePrinter;

    return-void
.end method

.method public setSrcDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->srcDir:Ljava/io/File;

    return-void
.end method

.method public varargs setUrlFiles([Ljava/net/URL;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/net/URL;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/URL;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->urlFiles:[Ljava/net/URL;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->verbose:Z

    return-void
.end method

.method public varargs setWsdlFiles([Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->wsdlFiles:[Ljava/io/File;

    return-void
.end method

.method public varargs setXsdFiles([Ljava/io/File;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/tool/Parameters;->xsdFiles:[Ljava/io/File;

    return-void
.end method
