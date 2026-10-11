.class public abstract Lcom/couchbase/lite/internal/logging/AbstractLogSink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final domains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation
.end field

.field private final level:Lcom/couchbase/lite/LogLevel;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/LogLevel;

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->level:Lcom/couchbase/lite/LogLevel;

    const-string p1, "domains"

    invoke-static {p2, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    return-void
.end method

.method public static aggregateDomains(Lcom/couchbase/lite/LogDomain;[Lcom/couchbase/lite/LogDomain;)Ljava/util/Set;
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogDomain;",
            "[",
            "Lcom/couchbase/lite/LogDomain;",
            ")",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "domain"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public static defaultDomains(Ljava/util/Collection;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/couchbase/lite/LogDomain;->ALL:Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static listDomains(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/LogDomain;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDomains()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getLevel()Lcom/couchbase/lite/LogLevel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->level:Lcom/couchbase/lite/LogLevel;

    return-object p0
.end method

.method public isLegacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->level:Lcom/couchbase/lite/LogLevel;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final similarDomains(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)Z
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/logging/AbstractLogSink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p1, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    iget-object p1, p1, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->domains:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final similarLevels(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/logging/AbstractLogSink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->level:Lcom/couchbase/lite/LogLevel;

    iget-object p1, p1, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->level:Lcom/couchbase/lite/LogLevel;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
