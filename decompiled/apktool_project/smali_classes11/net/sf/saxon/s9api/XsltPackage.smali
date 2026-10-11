.class public Lnet/sf/saxon/s9api/XsltPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/XsltCompiler;

.field public final b:Lnet/sf/saxon/style/StylesheetPackage;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XsltCompiler;Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltPackage;->a:Lnet/sf/saxon/s9api/XsltCompiler;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageVersion()Lnet/sf/saxon/style/PackageVersion;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object p0

    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->a:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingPreparedPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PackageVersion;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWhitespaceStrippingPolicy()Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(Lnet/sf/saxon/style/StylesheetPackage;)V

    return-object v0
.end method

.method public link()Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltPackage;->a:Lnet/sf/saxon/s9api/XsltCompiler;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XsltCompiler;->getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/style/Compilation;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/style/Compilation;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/style/Compilation;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->checkForAbstractComponents()V

    new-instance v0, Lnet/sf/saxon/PreparedStylesheet;

    invoke-direct {v0, v2}, Lnet/sf/saxon/PreparedStylesheet;-><init>(Lnet/sf/saxon/style/Compilation;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StylesheetPackage;->updatePreparedStylesheet(Lnet/sf/saxon/PreparedStylesheet;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->addPackage(Lnet/sf/saxon/expr/PackageData;)V

    new-instance v1, Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/s9api/XsltExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/PreparedStylesheet;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public save(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getSaxonEdition()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/XsltPackage;->save(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/Query;->createFileIfNecessary(Ljava/io/File;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltPackage;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Lnet/sf/saxon/Configuration;->newExpressionExporter(Ljava/lang/String;Ljava/io/OutputStream;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/trace/ExpressionPresenter;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->isRelocatable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->setRelocatable(Z)V

    .line 8
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltPackage;->b:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetPackage;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
