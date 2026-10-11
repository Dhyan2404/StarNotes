.class public Lnet/sf/saxon/query/StaticQueryContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/om/NamePool;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lnet/sf/saxon/type/ItemType;

.field public l:Z

.field public m:Z

.field public n:Lnet/sf/saxon/lib/ModuleURIResolver;

.field public o:Lnet/sf/saxon/lib/ErrorReporter;

.field public p:Lnet/sf/saxon/expr/parser/CodeInjector;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lnet/sf/saxon/s9api/Location;

.field public t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    .line 5
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    .line 7
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    .line 9
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    .line 10
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    const/16 v0, 0x1f

    .line 11
    iput v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/query/StaticQueryContext;-><init>(Lnet/sf/saxon/Configuration;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;Z)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    .line 15
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    const/4 v1, 0x3

    .line 16
    iput v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    .line 17
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    const-string v1, ""

    .line 18
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    .line 19
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    .line 21
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    .line 22
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    const/16 v0, 0x1f

    .line 23
    iput v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    .line 24
    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    .line 25
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->b:Lnet/sf/saxon/om/NamePool;

    .line 26
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->copyFrom(Lnet/sf/saxon/query/StaticQueryContext;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    .line 29
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    .line 30
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    .line 31
    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->clearNamespaces()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    .line 34
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    const/4 v1, 0x3

    .line 35
    iput v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    .line 36
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    const-string v1, ""

    .line 37
    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    .line 38
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    .line 40
    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    .line 41
    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    const/16 v0, 0x1f

    .line 42
    iput v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    .line 43
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->copyFrom(Lnet/sf/saxon/query/StaticQueryContext;)V

    return-void
.end method


# virtual methods
.method public clearDeclaredGlobalVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    return-void
.end method

.method public clearNamespaces()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fn"

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local"

    const-string v1, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "err"

    const-string v1, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "saxon"

    const-string v1, "http://saxon.sf.net/"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public compileLibrary(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Separate compilation of query libraries requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public compileLibrary(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Separate compilation of query libraries requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public compileLibrary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Separate compilation of query libraries requires Saxon-EE"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized compileQuery(Ljava/io/InputStream;Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnet/sf/saxon/query/QueryReader;->readInputStream(Ljava/io/InputStream;Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compileQuery(Ljava/io/Reader;)Lnet/sf/saxon/query/XQueryExpression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x1000

    :try_start_0
    new-array v1, v0, [C

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    iget-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    iget v2, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    const-string v3, "XQ"

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/XQueryParser;

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->isCompileWithTracing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lnet/sf/saxon/trace/TraceCodeInjector;

    invoke-direct {v1}, Lnet/sf/saxon/trace/TraceCodeInjector;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isStreaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/XQueryParser;->setStreaming(Z)V

    .line 7
    new-instance v1, Lnet/sf/saxon/query/QueryModule;

    invoke-direct {v1, p0}, Lnet/sf/saxon/query/QueryModule;-><init>(Lnet/sf/saxon/query/StaticQueryContext;)V

    .line 8
    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, p1, v1, p0}, Lnet/sf/saxon/query/XQueryParser;->makeXQueryExpression(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->b:Lnet/sf/saxon/om/NamePool;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->b:Lnet/sf/saxon/om/NamePool;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->c:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->c:Ljava/lang/String;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    :cond_1
    iget-boolean v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    iget-boolean v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    iget v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    iput v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    iget-boolean v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    iget-boolean v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    iget-object v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    iget-boolean v0, p1, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    iget-object p1, p1, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public declareDefaultCollation(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

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

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->r:Ljava/lang/String;

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

.method public declareGlobalVariable(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/GroundedValue;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No initial value for declared variable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Value of declared variable does not match its type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    new-instance p4, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-direct {p4}, Lnet/sf/saxon/expr/instruct/GlobalParam;-><init>()V

    goto :goto_2

    :cond_4
    new-instance p4, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {p4}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    :goto_2
    invoke-virtual {p4, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p4, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lnet/sf/saxon/om/GroundedValue;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Misdeclaration of xmlns namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Misdeclaration of XML namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null namespace URI supplied to declareNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null prefix supplied to declareNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-object p0
.end method

.method public getCompiledLibraries()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/query/QueryLibrary;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getCompiledLibrary(Ljava/lang/String;)Lnet/sf/saxon/query/QueryLibrary;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getConstructionMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    return p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->r:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    instance-of v0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ErrorReporterToListener;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public getExtensionFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLanguageVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    return p0
.end method

.method public getModuleLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->s:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    return-object p0
.end method

.method public getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->b:Lnet/sf/saxon/om/NamePool;

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getUserDeclaredNamespaces()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method public isCompileWithTracing()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    instance-of p0, p0, Lnet/sf/saxon/trace/TraceCodeInjector;

    return p0
.end method

.method public isEmptyLeast()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    return p0
.end method

.method public isInheritNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    return p0
.end method

.method public isPreserveBoundarySpace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    return p0
.end method

.method public isPreserveNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUpdating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    return p0
.end method

.method public isUpdatingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    return p0
.end method

.method public iterateDeclaredGlobalVariables()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->e:Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public iterateDeclaredPrefixes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public makeExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/Executable;

    iget-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->isSchemaAware()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/Executable;->setSchemaAware(Z)V

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/Executable;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    iput v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    iget-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->clearNamespaces()V

    iput-boolean v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->c:Ljava/lang/String;

    return-void
.end method

.method public setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-void
.end method

.method public setCompileWithTracing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;

    invoke-direct {p1}, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->p:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Configuration cannot be changed dynamically"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->b:Lnet/sf/saxon/om/NamePool;

    return-void
.end method

.method public setConstructionMode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->h:I

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->j:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultFunctionNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->i:Ljava/lang/String;

    return-void
.end method

.method public setEmptyLeast(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->m:Z

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/StaticQueryContext;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->o:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setInheritNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->f:Z

    return-void
.end method

.method public setLanguageVersion(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    iput v0, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "languageVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput v1, p0, Lnet/sf/saxon/query/StaticQueryContext;->u:I

    :goto_1
    return-void
.end method

.method public setModuleLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->s:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->n:Lnet/sf/saxon/lib/ModuleURIResolver;

    return-void
.end method

.method public setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->t:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public setPreserveBoundarySpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->l:Z

    return-void
.end method

.method public setPreserveNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->g:Z

    return-void
.end method

.method public setRequiredContextItemType(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->k:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Schema-awareness requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStreaming(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Streaming requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUpdatingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/StaticQueryContext;->q:Z

    return-void
.end method
