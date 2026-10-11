.class Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/utils/CollectionStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final combinedTypeSolver:Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

.field private final config:Lcom/github/javaparser/ParserConfiguration;

.field private final jarMatcher:Ljava/nio/file/PathMatcher;

.field private final javaMatcher:Ljava/nio/file/PathMatcher;

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "glob:**.java"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->javaMatcher:Ljava/nio/file/PathMatcher;

    const-string v0, "glob:**.jar"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->jarMatcher:Ljava/nio/file/PathMatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->config:Lcom/github/javaparser/ParserConfiguration;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->combinedTypeSolver:Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/ProjectRoot;Ljava/nio/file/Path;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/ProjectRoot;->addSourceRoot(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/nio/file/PathMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->javaMatcher:Ljava/nio/file/PathMatcher;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/nio/file/PathMatcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->jarMatcher:Ljava/nio/file/PathMatcher;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->getSolver()Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    move-result-object p0

    return-object p0
.end method

.method private static commonRoot(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/pxo;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/pxo;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/pxo;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pxo;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {v0, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    :goto_0
    return-object p0
.end method

.method private getSolver()Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->combinedTypeSolver:Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    return-object p0
.end method


# virtual methods
.method public collect(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/ProjectRoot;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;-><init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$1;)V

    invoke-static {p1, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "Unable to walk {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/github/javaparser/utils/ProjectRoot;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->config:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0, p1, p0}, Lcom/github/javaparser/utils/ProjectRoot;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    :goto_1
    return-object v0
.end method

.method public collectAll()Lcom/github/javaparser/utils/ProjectRoot;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->commonRoot(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/github/javaparser/utils/ProjectRoot;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->config:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/utils/ProjectRoot;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->roots:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlbeans/impl/config/a;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/config/a;-><init>(Lcom/github/javaparser/utils/ProjectRoot;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to construct a common project root - giving up."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->config:Lcom/github/javaparser/ParserConfiguration;

    return-object p0
.end method
