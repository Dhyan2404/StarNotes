.class public Lnet/sf/saxon/query/QueryModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/StaticContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/query/QueryModule$b;
    }
.end annotation


# instance fields
.field public A0:Lnet/sf/saxon/expr/PackageData;

.field public B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

.field public C0:Lnet/sf/saxon/s9api/Location;

.field public D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public E0:I

.field public J:Z

.field public O:Z

.field public Q:I

.field public Z:Ljava/lang/String;

.field public e:Z

.field public final f:Lnet/sf/saxon/Configuration;

.field public g:Lnet/sf/saxon/query/StaticQueryContext;

.field public final h:Lnet/sf/saxon/query/QueryModule;

.field public i:Ljava/net/URI;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lnet/sf/saxon/tree/util/IndexedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/query/UndeclaredVariable;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Z

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public s:Lnet/sf/saxon/expr/instruct/Executable;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/QueryModule;",
            ">;"
        }
    .end annotation
.end field

.field public t0:Z

.field public u:Lnet/sf/saxon/functions/FunctionLibraryList;

.field public u0:Ljava/lang/String;

.field public v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

.field public v0:I

.field public w:I

.field public w0:Z

.field public x:I

.field public x0:Lnet/sf/saxon/type/ItemType;

.field public y:I

.field public y0:Lnet/sf/saxon/trans/DecimalFormatManager;

.field public z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z0:Lnet/sf/saxon/expr/parser/CodeInjector;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/query/QueryModule;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->J:Z

    .line 40
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->O:Z

    const/4 v1, 0x3

    .line 41
    iput v1, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lnet/sf/saxon/query/QueryModule;->q0:Z

    .line 43
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->t0:Z

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lnet/sf/saxon/query/QueryModule;->v0:I

    .line 45
    iput-boolean v1, p0, Lnet/sf/saxon/query/QueryModule;->w0:Z

    .line 46
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->x0:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->y0:Lnet/sf/saxon/trans/DecimalFormatManager;

    .line 48
    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    .line 49
    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    .line 50
    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->t:Ljava/util/List;

    if-nez p2, :cond_0

    .line 51
    iput-object p0, p0, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p2, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    .line 53
    iget-object p1, p2, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->t:Ljava/util/List;

    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/QueryModule;->b(Lnet/sf/saxon/query/StaticQueryContext;)V

    .line 57
    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->A0:Lnet/sf/saxon/expr/PackageData;

    .line 58
    new-instance p1, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {p1}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    .line 59
    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    .line 60
    iget-object p1, p2, Lnet/sf/saxon/query/QueryModule;->D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->J:Z

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->O:Z

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lnet/sf/saxon/query/QueryModule;->q0:Z

    .line 6
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->t0:Z

    const/4 v2, 0x4

    .line 7
    iput v2, p0, Lnet/sf/saxon/query/QueryModule;->v0:I

    .line 8
    iput-boolean v1, p0, Lnet/sf/saxon/query/QueryModule;->w0:Z

    .line 9
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->x0:Lnet/sf/saxon/type/ItemType;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->y0:Lnet/sf/saxon/trans/DecimalFormatManager;

    .line 11
    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    .line 12
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    .line 13
    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->e:Z

    .line 14
    iput-object p0, p0, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    .line 15
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getLanguageVersion()I

    move-result v3

    iput v3, p0, Lnet/sf/saxon/query/QueryModule;->E0:I

    .line 16
    new-instance v3, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v3}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v3, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    .line 17
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    .line 19
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v3, p0, Lnet/sf/saxon/query/QueryModule;->i:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->makeExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    .line 21
    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->t:Ljava/util/List;

    .line 22
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/QueryModule;->b(Lnet/sf/saxon/query/StaticQueryContext;)V

    .line 23
    new-instance v1, Lnet/sf/saxon/expr/PackageData;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 24
    sget-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getXPathVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/PackageData;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    .line 25
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isSchemaAware()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    .line 26
    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->A0:Lnet/sf/saxon/expr/PackageData;

    .line 27
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->iterateDeclaredGlobalVariables()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    .line 28
    invoke-virtual {p0, v3}, Lnet/sf/saxon/query/QueryModule;->declareVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    .line 29
    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/PackageData;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    .line 30
    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setTopLevelPackage(Lnet/sf/saxon/expr/PackageData;)V

    .line 32
    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/Executable;->addPackage(Lnet/sf/saxon/expr/PackageData;)V

    .line 33
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    if-nez v1, :cond_2

    .line 34
    new-instance v1, Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->C0:Lnet/sf/saxon/s9api/Location;

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->C0:Lnet/sf/saxon/s9api/Location;

    .line 36
    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void

    .line 37
    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid location URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeQueryModule(Ljava/lang/String;Lnet/sf/saxon/expr/instruct/Executable;Lnet/sf/saxon/query/QueryModule;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/query/QueryModule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "Base URI of XQuery module must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/query/QueryModule;

    invoke-direct {v1, v0, p2}, Lnet/sf/saxon/query/QueryModule;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/query/QueryModule;)V

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/query/QueryModule;->setLocationURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/query/QueryModule;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/query/QueryModule;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    invoke-virtual {v1, p4}, Lnet/sf/saxon/query/QueryModule;->setModuleNamespace(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/Executable;->addQueryLibraryModule(Lnet/sf/saxon/query/QueryModule;)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->isUpdating()Z

    move-result p0

    const/16 p1, 0x1f

    const-string v2, "XQ"

    invoke-virtual {v0, v2, p0, p1}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryParser;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->isCompileWithTracing()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;

    invoke-direct {p1}, Lnet/sf/saxon/trace/XQueryTraceCodeInjector;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V

    :cond_1
    :goto_0
    new-instance p1, Lnet/sf/saxon/om/QNameParser;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getLiveNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v2

    invoke-direct {p1, v2}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getXPathVersion()I

    move-result p2

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt p2, v2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/query/XQueryParser$Unescaper;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;-><init>(Lnet/sf/saxon/z/IntPredicateProxy;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/QNameParser;->withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    invoke-virtual {p0, p3, v1}, Lnet/sf/saxon/query/XQueryParser;->parseLibraryModule(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;)V

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XQST0059"

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Imported module\'s namespace does not match requested namespace"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Imported module must be a library module"

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid location URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Lnet/sf/saxon/om/NamespaceMap;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public addImportedNamespace(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->z:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->z:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getImportedFunctionLibrary()Lnet/sf/saxon/query/ImportedFunctionLibrary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/ImportedFunctionLibrary;->addImportedNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public addImportedSchema(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/query/QueryModule;->r:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object p0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->r:Ljava/util/HashMap;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {p3, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->p:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isTopLevelModule()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->z:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->k:Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->l:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isInheritNamespaces()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->J:Z

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isPreserveNamespaces()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->O:Z

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isPreserveBoundarySpace()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->q0:Z

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isEmptyLeast()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->t0:Z

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->Z:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->k0:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getConstructionMode()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isSchemaAware()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->x0:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->isUpdatingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/query/QueryModule;->w0:Z

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->z0:Lnet/sf/saxon/expr/parser/CodeInjector;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/QueryModule;->c(Lnet/sf/saxon/query/StaticQueryContext;)V

    return-void
.end method

.method public bindUnboundFunctionCalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    iget v1, p0, Lnet/sf/saxon/query/QueryModule;->y:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->get(I)Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/query/UnboundFunctionLibrary;->bindUnboundFunctionReferences(Lnet/sf/saxon/query/XQueryFunctionBinder;Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public bindUnboundVariables()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/UndeclaredVariable;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/query/QueryModule;->importsNamespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v3

    iget-object v3, v3, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    :cond_0
    const/4 v2, 0x1

    const-string v4, "XPST0008"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot reference a private variable in a different module"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Lnet/sf/saxon/query/UndeclaredVariable;->transferReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unresolved reference to variable $"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_4
    return-void
.end method

.method public bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    const-string v1, " is private"

    const/4 v2, 0x1

    const-string v3, "XPST0008"

    const-string v4, "Variable $"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Lnet/sf/saxon/query/QueryModule;->k:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/QueryModule;->importsNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been declared"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v0

    iget-object v5, v0, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-nez v5, :cond_4

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/UndeclaredVariable;

    if-eqz v1, :cond_3

    new-instance p0, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    return-object p0

    :cond_3
    new-instance v1, Lnet/sf/saxon/query/UndeclaredVariable;

    invoke-direct {v1}, Lnet/sf/saxon/query/UndeclaredVariable;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isPrivate()Z

    move-result p0

    if-nez p0, :cond_5

    move-object v0, v5

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isPrivate()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (no base URI known)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p1

    :cond_9
    :goto_1
    new-instance p0, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    return-object p0
.end method

.method public final c(Lnet/sf/saxon/query/StaticQueryContext;)V
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isTopLevelModule()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-direct {v1, v0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    :cond_0
    new-instance v1, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v1}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getBuiltInFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    new-instance v2, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-direct {v2, v0}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    new-instance v2, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-direct {v2, v0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/query/QueryModule;->w:I

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    new-instance v2, Lnet/sf/saxon/query/ImportedFunctionLibrary;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->getGlobalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lnet/sf/saxon/query/ImportedFunctionLibrary;-><init>(Lnet/sf/saxon/query/QueryModule;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    move-result v1

    iput v1, p0, Lnet/sf/saxon/query/QueryModule;->x:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getExtensionFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p1}, Lnet/sf/saxon/query/StaticQueryContext;->getExtensionFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object p1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    iget-object p1, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    new-instance v0, Lnet/sf/saxon/query/UnboundFunctionLibrary;

    invoke-direct {v0}, Lnet/sf/saxon/query/UnboundFunctionLibrary;-><init>()V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/query/QueryModule;->y:I

    return-void
.end method

.method public checkForCircularities(Ljava/util/List;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;",
            "Lnet/sf/saxon/query/XQueryFunctionLibrary;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    new-instance p1, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {p1}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->lookForCycles(Lnet/sf/saxon/tree/util/IndexedStack;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->k0:Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    return-object v1
.end method

.method public declareActiveNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null namespace URI supplied to declareActiveNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null prefix supplied to declareActiveNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Function name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " clashes with the name of the constructor function for an atomic type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XQST0034"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getLocalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V

    return-void
.end method

.method public declarePrologNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->l:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate declaration of namespace prefix \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XQST0033"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Invalid declaration of the XML namespace"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XQST0070"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null namespace URI supplied to declarePrologNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null prefix supplied to declarePrologNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declareVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "XQST0049"

    const-string v4, " in module "

    const-string v5, " (see line "

    const-string v6, "Duplicate definition of global variable "

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getUltimateOriginalVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object v7

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getUltimateOriginalVariable()Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object v8

    if-ne v7, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/PackageData;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    if-eqz v7, :cond_4

    if-ne v7, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public explainGlobalFunctions(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->explainGlobalFunctions(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public fixupGlobalFunctions()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->fixupGlobalFunctions(Lnet/sf/saxon/query/QueryModule;)V

    return-void
.end method

.method public fixupGlobalVariables(Lnet/sf/saxon/expr/instruct/SlotManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/instruct/SlotManager;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    move-result v4

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->compile(Lnet/sf/saxon/expr/instruct/Executable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllGlobalVariables()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getTopLevelModule()Lnet/sf/saxon/query/QueryModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getAllGlobalVariables()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public getBuiltInFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXQueryUpdateFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/query/QueryModule;->E0:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXPath40FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getXPath31FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p0

    return-object p0
.end method

.method public getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->z0:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->f:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getConstructionMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    return p0
.end method

.method public getContainingLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->C0:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->y0:Lnet/sf/saxon/trans/DecimalFormatManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/DecimalFormatManager;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getXPathVersion()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalFormatManager;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->y0:Lnet/sf/saxon/trans/DecimalFormatManager;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->y0:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/QueryModule;->checkURIForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->Z:Ljava/lang/String;

    return-object p0
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-object p0
.end method

.method public getGlobalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    return-object p0
.end method

.method public getGlobalStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getGlobalSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    return-object p0
.end method

.method public getImportedFunctionLibrary()Lnet/sf/saxon/query/ImportedFunctionLibrary;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    iget p0, p0, Lnet/sf/saxon/query/QueryModule;->x:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/FunctionLibraryList;->get(I)Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/ImportedFunctionLibrary;

    return-object p0
.end method

.method public getImportedGlobalVariables()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getImportedSchemaNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->A0:Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public getLiveNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/query/QueryModule$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/query/QueryModule$a;-><init>(Lnet/sf/saxon/query/QueryModule;)V

    return-object v0
.end method

.method public getLocalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->u:Lnet/sf/saxon/functions/FunctionLibraryList;

    iget p0, p0, Lnet/sf/saxon/query/QueryModule;->w:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/FunctionLibraryList;->get(I)Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    return-object p0
.end method

.method public getLocationURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->i:Ljava/net/URI;

    return-object p0
.end method

.method public getModuleNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleVariables()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 5

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {v1}, Lnet/sf/saxon/query/StaticQueryContext;->getUserDeclaredNamespaces()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->k0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->k0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->D0:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->A0:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->x0:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRevalidationMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/QueryModule;->v0:I

    return p0
.end method

.method public getStaticBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->i:Ljava/net/URI;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTopLevelModule()Lnet/sf/saxon/query/QueryModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    return-object p0
.end method

.method public getUserDefinedFunction(Ljava/lang/String;Ljava/lang/String;I)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getUserDefinedFunction(Ljava/lang/String;Ljava/lang/String;I)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public getUserQueryContext()Lnet/sf/saxon/query/StaticQueryContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    return-object p0
.end method

.method public getXPathVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/QueryModule;->E0:I

    return p0
.end method

.method public importsNamespace(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->z:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyLeast()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->t0:Z

    return p0
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->q:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInBackwardsCompatibleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInheritNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->J:Z

    return p0
.end method

.method public isMainModule()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->e:Z

    return p0
.end method

.method public isPreserveBoundarySpace()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->q0:Z

    return p0
.end method

.method public isPreserveNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->O:Z

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result p0

    return p0
.end method

.method public isTopLevelModule()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->h:Lnet/sf/saxon/query/QueryModule;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/QueryModule;->w0:Z

    return p0
.end method

.method public issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    sget-object p2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/util/IndexedStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    iput-object v0, p0, Lnet/sf/saxon/query/QueryModule;->B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->B0:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    return-object v0
.end method

.method public mayImportModule(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->t:Ljava/util/List;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/query/QueryModule;->mayImportModule(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    return v0
.end method

.method public optimizeGlobalFunctions()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->v:Lnet/sf/saxon/query/XQueryFunctionLibrary;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->optimizeGlobalFunctions(Lnet/sf/saxon/query/QueryModule;)V

    return-void
.end method

.method public reportStaticError(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->g:Lnet/sf/saxon/query/StaticQueryContext;

    invoke-virtual {p0}, Lnet/sf/saxon/query/StaticQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getTerminationMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XmlProcessingAbort;

    invoke-interface {p1}, Lnet/sf/saxon/s9api/XmlProcessingError;->getTerminationMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XmlProcessingAbort;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reportStaticError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/QueryModule;->reportStaticError(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_0
    return-void
.end method

.method public resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->obtainTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/TypeAliasManager;->getItemType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->j:Ljava/lang/String;

    return-void
.end method

.method public setConstructionMode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/query/QueryModule;->Q:I

    return-void
.end method

.method public setDefaultCollationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->u0:Ljava/lang/String;

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->k0:Ljava/lang/String;

    return-void
.end method

.method public setDefaultFunctionNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->Z:Ljava/lang/String;

    return-void
.end method

.method public setEmptyLeast(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/QueryModule;->t0:Z

    return-void
.end method

.method public setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    return-void
.end method

.method public setInheritNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/QueryModule;->J:Z

    return-void
.end method

.method public setIsMainModule(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/QueryModule;->e:Z

    return-void
.end method

.method public setLocationURI(Ljava/net/URI;)V
    .locals 3

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->i:Ljava/net/URI;

    new-instance p1, Lnet/sf/saxon/expr/parser/Loc;

    iget-object v0, p0, Lnet/sf/saxon/query/QueryModule;->i:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p1, v0, v1, v2}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->C0:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setModuleNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->k:Ljava/lang/String;

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/QueryModule;->A0:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setPreserveBoundarySpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/QueryModule;->q0:Z

    return-void
.end method

.method public setPreserveNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/QueryModule;->O:Z

    return-void
.end method

.method public setRevalidationMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lnet/sf/saxon/query/QueryModule;->v0:I

    return-void
.end method

.method public setXPathVersion(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/query/QueryModule;->E0:I

    return-void
.end method

.method public typeCheckGlobalVariables(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/GlobalVariable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->isMainModule()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/query/QueryModule;->s:Lnet/sf/saxon/expr/instruct/Executable;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setDefaultValue(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    return-void
.end method

.method public undeclareNamespace()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/QueryModule;->m:Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    return-void
.end method
