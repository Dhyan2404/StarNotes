.class public Lnet/sf/saxon/s9api/XsltCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/Processor;

.field public final b:Lnet/sf/saxon/Configuration;

.field public final c:Lnet/sf/saxon/trans/CompilerInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->b:Lnet/sf/saxon/Configuration;

    new-instance v0, Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Configuration;->isGenerateByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/CompilerInfo;->setGenerateByteCode(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/CompilerInfo;->setTargetEdition(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isJITEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/CompilerInfo;->setJustInTimeCompilation(Z)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->c(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b()Lnet/sf/saxon/trans/packages/PackageLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object p0

    return-object p0
.end method

.method public clearParameters()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->clearParameters()V

    return-void
.end method

.method public compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lnet/sf/saxon/trans/CompilerInfo;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/CompilerInfo;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->b:Lnet/sf/saxon/Configuration;

    invoke-static {v1, v0, p1}, Lnet/sf/saxon/style/Compilation;->compileSingletonPackage(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;Ljavax/xml/transform/Source;)Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/s9api/XsltExecutable;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/XsltExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/PreparedStylesheet;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeSource;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeSource;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NodeSource;->getNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeSource;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NodeSource;->getNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/style/Compilation;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->b:Lnet/sf/saxon/Configuration;

    new-instance v2, Lnet/sf/saxon/trans/CompilerInfo;

    iget-object v3, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/CompilerInfo;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/style/Compilation;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/Compilation;->setLibraryPackage(Z)V

    new-instance v2, Lnet/sf/saxon/s9api/XsltPackage;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/style/Compilation;->compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lnet/sf/saxon/s9api/XsltPackage;-><init>(Lnet/sf/saxon/s9api/XsltCompiler;Lnet/sf/saxon/style/StylesheetPackage;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p0

    if-lez p0, :cond_3

    if-ne p0, v1, :cond_2

    const-string p0, "one error"

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " errors"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package compilation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declareDefaultCollation(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setDefaultCollation(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown collation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->b:Lnet/sf/saxon/Configuration;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/style/StylesheetModule;->getAssociatedStylesheet(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/ResourceResolver;Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getDefaultCollation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultCollation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getTargetEdition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getTargetEdition()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    return-object p0
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getXsltLanguageVersion()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getXsltVersion()I

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    const-string p0, "4.0"

    goto :goto_0

    :cond_0
    const-string p0, "3.0"

    :goto_0
    return-object p0
.end method

.method public importPackage(Lnet/sf/saxon/s9api/XsltPackage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getUnderlyingPreparedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/style/StylesheetPackage;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "The imported package and the XsltCompiler must belong to the same Processor"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public importPackage(Lnet/sf/saxon/s9api/XsltPackage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    if-ne v0, v1, :cond_2

    .line 5
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageDetails;

    invoke-direct {v0}, Lnet/sf/saxon/trans/packages/PackageDetails;-><init>()V

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getVersion()Ljava/lang/String;

    move-result-object p3

    .line 8
    :cond_1
    new-instance v1, Lnet/sf/saxon/trans/packages/VersionedPackageName;

    invoke-direct {v1, p2, p3}, Lnet/sf/saxon/trans/packages/VersionedPackageName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->nameAndVersion:Lnet/sf/saxon/trans/packages/VersionedPackageName;

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XsltPackage;->getUnderlyingPreparedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    .line 10
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/packages/PackageLibrary;->addPackage(Lnet/sf/saxon/trans/packages/PackageDetails;)V

    return-void

    .line 11
    :cond_2
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "The imported package and the XsltCompiler must belong to the same Processor"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public importXQueryEnvironment(Lnet/sf/saxon/s9api/XQueryCompiler;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XQueryCompiler;->getUnderlyingStaticContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getCompiledLibraries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setXQueryLibraries(Ljava/lang/Iterable;)V

    return-void
.end method

.method public isAssertionsEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isAssertionsEnabled()Z

    move-result p0

    return p0
.end method

.method public isCompileWithTracing()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isCompileWithTracing()Z

    move-result p0

    return p0
.end method

.method public isFastCompilation()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->getOptions()I

    move-result p0

    const/16 v0, 0x400

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGenerateByteCode()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isGenerateByteCode()Z

    move-result p0

    return p0
.end method

.method public isJustInTimeCompilation()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isJustInTimeCompilation()Z

    move-result p0

    return p0
.end method

.method public isRelocatable()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isRelocatable()Z

    move-result p0

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public loadExecutablePackage(Ljava/net/URI;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->loadLibraryPackage(Ljava/net/URI;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->link()Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object p0

    return-object p0
.end method

.method public loadExecutablePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->loadLibraryPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->link()Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object p0

    return-object p0
.end method

.method public loadLibraryPackage(Ljava/net/URI;)Lnet/sf/saxon/s9api/XsltPackage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltCompiler;->loadLibraryPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object p0

    return-object p0
.end method

.method public loadLibraryPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePackageLoader()Lnet/sf/saxon/trans/packages/IPackageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lnet/sf/saxon/trans/packages/IPackageLoader;->loadPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    .line 4
    new-instance v0, Lnet/sf/saxon/s9api/XsltPackage;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/XsltPackage;-><init>(Lnet/sf/saxon/s9api/XsltCompiler;Lnet/sf/saxon/style/StylesheetPackage;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p1, "Loading library package requires Saxon PE or higher"

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public obtainPackage(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltPackage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnet/sf/saxon/style/PackageVersionRanges;

    invoke-direct {v0, p2}, Lnet/sf/saxon/style/PackageVersionRanges;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->b()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/trans/packages/PackageLibrary;->findPackage(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersionRanges;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p2, :cond_0

    new-instance p1, Lnet/sf/saxon/s9api/XsltPackage;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/s9api/XsltPackage;-><init>(Lnet/sf/saxon/s9api/XsltCompiler;Lnet/sf/saxon/style/StylesheetPackage;)V

    return-object p1

    :cond_0
    iget-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->sourceLocation:Ljavax/xml/transform/Source;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/s9api/XsltCompiler;->compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->getUnderlyingPreparedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p2

    iput-object p2, p1, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public obtainPackageWithAlias(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltPackage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->b()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->findDetailsForAlias(Ljava/lang/String;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->b()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lnet/sf/saxon/trans/packages/PackageLibrary;->obtainLoadedPackage(Lnet/sf/saxon/trans/packages/PackageDetails;Ljava/util/List;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/s9api/XsltPackage;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/XsltPackage;-><init>(Lnet/sf/saxon/s9api/XsltCompiler;Lnet/sf/saxon/style/StylesheetPackage;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found in package library"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAssertionsEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setAssertionsEnabled(Z)V

    return-void
.end method

.method public setCompileWithTracing(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    new-instance v0, Lnet/sf/saxon/trace/XSLTTraceCodeInjector;

    invoke-direct {v0}, Lnet/sf/saxon/trace/XSLTTraceCodeInjector;-><init>()V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const v1, 0x808f

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->except(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    :goto_0
    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setDefaultElementNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "-",
            "Lnet/sf/saxon/s9api/XmlProcessingError;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    new-instance v0, Lcom/sunia/HTREnginev2/xwo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/xwo;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setFastCompilation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    new-instance p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/CompilerInfo;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    :goto_0
    return-void
.end method

.method public setGenerateByteCode(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setGenerateByteCode(Z)V

    return-void
.end method

.method public setJustInTimeCompilation(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->b:Lnet/sf/saxon/Configuration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "XSLT just-in-time compilation requires a Saxon-EE license"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setJustInTimeCompilation(Z)V

    return-void
.end method

.method public setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/CompilerInfo;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setRelocatable(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setRelocatable(Z)V

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setSchemaAware(Z)V

    return-void
.end method

.method public setTargetEdition(Ljava/lang/String;)V
    .locals 2

    const-string v0, "EE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Saxon edition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setTargetEdition(Ljava/lang/String;)V

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V

    return-void
.end method

.method public setXsltLanguageVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "3.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setXsltVersion(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Language version must be 3.0|4.0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltCompiler;->c:Lnet/sf/saxon/trans/CompilerInfo;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->setXsltVersion(I)V

    :goto_0
    return-void
.end method
