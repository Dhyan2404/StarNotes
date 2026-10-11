.class Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;


# direct methods
.method private constructor <init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;-><init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->lambda$visitFile$0(Ljava/nio/file/Path;)V

    return-void
.end method

.method private synthetic lambda$visitFile$0(Ljava/nio/file/Path;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$400(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/JavaParserTypeSolver;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/JavaParserTypeSolver;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;->add(Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$200(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$100(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/nio/file/PathMatcher;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$200(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/jtd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jtd;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/ktd;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ktd;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->getRoot(Ljava/nio/file/Path;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/impl/config/b;

    invoke-direct {p2, p0}, Lorg/apache/xmlbeans/impl/config/b;-><init>(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$300(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Ljava/nio/file/PathMatcher;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy$FileVisitor;->this$0:Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;->access$400(Lorg/apache/xmlbeans/impl/config/ChildSolverCollectionStrategy;)Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;

    move-result-object p0

    new-instance p2, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/JarTypeSolver;

    invoke-direct {p2, p1}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/JarTypeSolver;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {p0, p2}, Lcom/github/javaparser/symbolsolver/resolution/typesolvers/CombinedTypeSolver;->add(Lcom/github/javaparser/symbolsolver/model/resolution/TypeSolver;)V

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method
