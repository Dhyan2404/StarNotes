.class public Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x766e7e820512437bL


# instance fields
.field private final isCase:Lonyx/org/apache/commons/io/IOCase;

.field private final prefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "prefix"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 11
    sget-object p1, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p2, p1}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->isCase:Lonyx/org/apache/commons/io/IOCase;

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

    .line 1
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/util/List;Lonyx/org/apache/commons/io/IOCase;)V

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

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "prefixes"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 5
    sget-object p1, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p2, p1}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->isCase:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 7
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>([Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "prefixes"

    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 15
    sget-object p1, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p2, p1}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->isCase:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->lambda$accept$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private accept(Ljava/lang/String;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x6l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/x6l;-><init>(Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$accept$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->isCase:Lonyx/org/apache/commons/io/IOCase;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 3
    new-instance p2, Lcom/sunia/HTREnginev2/sig;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/sig;-><init>()V

    invoke-static {p1, p2}, Lonyx/org/apache/commons/io/file/PathUtils;->getFileName(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->accept(Ljava/io/File;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->accept(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->accept(Ljava/lang/String;)Z

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

    iget-object v1, p0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->append([Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
