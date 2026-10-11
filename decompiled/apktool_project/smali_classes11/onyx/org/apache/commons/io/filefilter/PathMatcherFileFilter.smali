.class public Lonyx/org/apache/commons/io/filefilter/PathMatcherFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"


# instance fields
.field public final e:Ljava/nio/file/PathMatcher;


# direct methods
.method public constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "pathMatcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/nio/file/PathMatcher;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/PathMatcherFileFilter;->e:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/PathMatcherFileFilter;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/PathMatcherFileFilter;->e:Ljava/nio/file/PathMatcher;

    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
