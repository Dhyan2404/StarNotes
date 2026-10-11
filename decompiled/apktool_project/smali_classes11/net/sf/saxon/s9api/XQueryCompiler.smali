.class public Lnet/sf/saxon/s9api/XQueryCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/s9api/Processor;

.field public final b:Lnet/sf/saxon/query/StaticQueryContext;

.field public c:Lnet/sf/saxon/s9api/ItemType;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->newStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/XQueryCompiler;->b(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public compile(Ljava/io/File;)Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v1}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lnet/sf/saxon/s9api/XQueryExecutable;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object v3, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    iget-object v4, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v0, v4}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/io/InputStream;Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lnet/sf/saxon/s9api/XQueryExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V

    .line 9
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 11
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 12
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 14
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compile(Ljava/io/InputStream;)Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 15
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/XQueryExecutable;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

    invoke-virtual {v2, p1, p0}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/io/InputStream;Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/XQueryExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 17
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compile(Ljava/io/Reader;)Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/XQueryExecutable;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/io/Reader;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/XQueryExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 20
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compile(Ljava/lang/String;)Lnet/sf/saxon/s9api/XQueryExecutable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/XQueryExecutable;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/XQueryExecutable;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compileLibrary(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v1}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/query/StaticQueryContext;->compileLibrary(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 10
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compileLibrary(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 14
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/query/StaticQueryContext;->compileLibrary(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compileLibrary(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 12
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileLibrary(Ljava/io/Reader;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public compileLibrary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XmlProcessingAbort; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declareDefaultCollation(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->declareDefaultCollation(Ljava/lang/String;)V

    return-void
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v0}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v1}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base URI for query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getLanguageVersion()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->e:I

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    const-string p0, "4.0"

    goto :goto_0

    :cond_0
    const-string p0, "3.1"

    :goto_0
    return-object p0
.end method

.method public getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->c:Lnet/sf/saxon/s9api/ItemType;

    return-object p0
.end method

.method public getUnderlyingStaticContext()Lnet/sf/saxon/query/StaticQueryContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    return-object p0
.end method

.method public isCompileWithTracing()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isCompileWithTracing()Z

    move-result p0

    return p0
.end method

.method public isFastCompilation()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->getOptions()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isStreaming()Z

    move-result p0

    return p0
.end method

.method public isUpdatingEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isUpdatingEnabled()Z

    move-result p0

    return p0
.end method

.method public setBaseURI(Ljava/net/URI;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base URI must be an absolute URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompileWithTracing(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setCompileWithTracing(Z)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->d:Ljava/lang/String;

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

    new-instance v0, Lcom/sunia/HTREnginev2/jmo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/jmo;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XQueryCompiler;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setFastCompilation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    new-instance p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XQueryCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/query/StaticQueryContext;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    :goto_0
    return-void
.end method

.method public setLanguageVersion(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "3.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x28

    iput p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->e:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XQuery version must be 3.1 or 4.0 (not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x1f

    iput p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->e:I

    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    iget p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->e:I

    invoke-virtual {p1, p0}, Lnet/sf/saxon/query/StaticQueryContext;->setLanguageVersion(I)V

    return-void
.end method

.method public setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    return-void
.end method

.method public setRequiredContextItemType(Lnet/sf/saxon/s9api/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->c:Lnet/sf/saxon/s9api/ItemType;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setRequiredContextItemType(Lnet/sf/saxon/type/ItemType;)V

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Schema-awareness requires a Saxon-EE license"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setSchemaAware(Z)V

    return-void
.end method

.method public setStreaming(Z)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setStreaming(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Streaming requires a Saxon-EE license"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lnet/sf/saxon/s9api/ItemType;->DOCUMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XQueryCompiler;->setRequiredContextItemType(Lnet/sf/saxon/s9api/ItemType;)V

    :cond_2
    return-void
.end method

.method public setUpdatingEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v0}, Lnet/sf/saxon/query/StaticQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "XQuery Update is not supported in this Saxon Configuration"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryCompiler;->b:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->setUpdatingEnabled(Z)V

    return-void
.end method
