.class Lorg/apache/xmlbeans/impl/config/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final classpath:[Ljava/io/File;

.field private final combinedTypeSolver:Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

.field private final javaFiles:[Ljava/io/File;

.field private final pc:Lcom/github/javaparser/ParserConfiguration;

.field private final projectRoot:Lcom/github/javaparser/utils/ProjectRoot;


# direct methods
.method public constructor <init>([Ljava/io/File;[Ljava/io/File;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;

    invoke-direct {v0, v2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;-><init>([Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/Parser;->combinedTypeSolver:Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/io/File;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/Parser;->javaFiles:[Ljava/io/File;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/File;

    goto :goto_1

    :cond_1
    new-array p2, v1, [Ljava/io/File;

    :goto_1
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/config/Parser;->classpath:[Ljava/io/File;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v1}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/config/Parser;->pc:Lcom/github/javaparser/ParserConfiguration;

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->BLEEDING_EDGE:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/ParserConfiguration;->setLanguageLevel(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Lcom/github/javaparser/ParserConfiguration;

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lorg/apache/xmlbeans/impl/config/l;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/config/l;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/sunia/HTREnginev2/bxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/bxk;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lorg/apache/xmlbeans/impl/config/o;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/config/o;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/net/URL;

    new-instance v2, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/ClassLoaderTypeSolver;

    new-instance v3, Ljava/net/URLClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    invoke-direct {v2, v3}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/ClassLoaderTypeSolver;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;->add(Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    new-instance p2, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/ReflectionTypeSolver;

    invoke-direct {p2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/ReflectionTypeSolver;-><init>()V

    invoke-virtual {v0, p2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;->add(Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    new-instance p2, Lcom/github/javaparser/symbolsolver/JavaSymbolSolver;

    invoke-direct {p2, v0}, Lcom/github/javaparser/symbolsolver/JavaSymbolSolver;-><init>(Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    invoke-virtual {v1, p2}, Lcom/github/javaparser/ParserConfiguration;->setSymbolResolver(Lcom/github/javaparser/resolution/SymbolResolver;)Lcom/github/javaparser/ParserConfiguration;

    array-length p2, p1

    if-lez p2, :cond_2

    new-instance p2, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-direct {p2, v1, v0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;-><init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;)V

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/config/p;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/config/p;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/cxk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cxk;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/config/q;

    invoke-direct {v0, p2}, Lorg/apache/xmlbeans/impl/config/q;-><init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->collectAll()Lcom/github/javaparser/utils/ProjectRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/Parser;->projectRoot:Lcom/github/javaparser/utils/ProjectRoot;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/Parser;->projectRoot:Lcom/github/javaparser/utils/ProjectRoot;

    :goto_2
    return-void
.end method

.method public static synthetic a(Ljava/io/File;)Ljava/net/URL;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/Parser;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ParseResult;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ParseResult;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/io/File;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/Parser;->lambda$new$1(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot;)Lcom/github/javaparser/ParseResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/Parser;->lambda$loadSource$2(Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/config/Parser;->lambda$loadSource$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/Parser;->lambda$loadSource$3(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(I)[Ljava/net/URL;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/Parser;->lambda$new$0(I)[Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadSource$2(Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot;)Lcom/github/javaparser/ParseResult;
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/apache/xmlbeans/impl/config/Parser;->parseOrNull(Lcom/github/javaparser/utils/SourceRoot;Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$loadSource$3(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$loadSource$4(Ljava/lang/String;Lcom/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getFullyQualifiedName()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(I)[Ljava/net/URL;
    .locals 0

    new-array p0, p0, [Ljava/net/URL;

    return-object p0
.end method

.method private static synthetic lambda$new$1(Ljava/io/File;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private parseOrNull(Lcom/github/javaparser/utils/SourceRoot;Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/utils/SourceRoot;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ""

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/Parser;->pc:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p1, v0, p2, p0}, Lcom/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/ParseResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public loadSource(Ljava/lang/String;)Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/Parser;->projectRoot:Lcom/github/javaparser/utils/ProjectRoot;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/github/javaparser/utils/ProjectRoot;->getSourceRoots()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/xmlbeans/impl/config/r;

    invoke-direct {v3, p0, v0}, Lorg/apache/xmlbeans/impl/config/r;-><init>(Lorg/apache/xmlbeans/impl/config/Parser;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/dxk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dxk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/config/s;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/config/s;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/config/t;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/config/t;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/ywk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ywk;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/config/m;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/config/m;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v1, Lcom/sunia/HTREnginev2/zwk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zwk;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/config/n;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/config/n;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-class p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v0, Lcom/sunia/HTREnginev2/axk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/axk;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object p0
.end method
