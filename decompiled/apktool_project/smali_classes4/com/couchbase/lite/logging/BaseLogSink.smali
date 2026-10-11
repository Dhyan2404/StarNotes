.class public abstract Lcom/couchbase/lite/logging/BaseLogSink;
.super Lcom/couchbase/lite/internal/logging/AbstractLogSink;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/LogLevel;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/logging/BaseLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;[Lcom/couchbase/lite/LogDomain;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p2, p3}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->aggregateDomains(Lcom/couchbase/lite/LogDomain;[Lcom/couchbase/lite/LogDomain;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/logging/BaseLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->defaultDomains(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V

    return-void
.end method
