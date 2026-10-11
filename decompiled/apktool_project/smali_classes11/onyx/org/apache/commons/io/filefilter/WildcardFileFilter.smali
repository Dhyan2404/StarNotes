.class public Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67102e36ee57a9d9L


# instance fields
.field private final ioCase:Lonyx/org/apache/commons/io/IOCase;

.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->requireWildcards(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/util/List;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lonyx/org/apache/commons/io/IOCase;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->requireWildcards(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 3
    invoke-static {p2}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->requireWildcards(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .line 4
    sget-object p2, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method

.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {p0, v0, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct {p0, p2, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->lambda$accept$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private accept(Ljava/lang/String;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/i7o;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/i7o;-><init>(Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->requireWildcards(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$accept$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p1, p2, p0}, Lonyx/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method private static requireWildcards(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "wildcards"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 3
    invoke-static {p1}, Lonyx/org/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->accept(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->accept(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->accept(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
