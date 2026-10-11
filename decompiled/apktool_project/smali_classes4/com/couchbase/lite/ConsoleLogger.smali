.class public Lcom/couchbase/lite/ConsoleLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/ConsoleLogger$ShimLogger;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private logger:Lcom/couchbase/lite/ConsoleLogger$ShimLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomains()Ljava/util/EnumSet;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/logging/LogSinks;->getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;

    move-result-object p0

    const-class v0, Lcom/couchbase/lite/LogDomain;

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getDomains()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLevel()Lcom/couchbase/lite/LogLevel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/logging/LogSinks;->getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0
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

    iget-object p0, p0, Lcom/couchbase/lite/ConsoleLogger;->logger:Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/ConsoleLogger$ShimLogger;->doLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDomains(Ljava/util/EnumSet;)V
    .locals 3
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/couchbase/lite/logging/LogSinks;->getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getDomains()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/ConsoleLogger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v1

    const-string v2, "domains"

    invoke-static {p1, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p0, v1, p1}, Lcom/couchbase/lite/ConsoleLogger;->shimFactory(Lcom/couchbase/lite/LogLevel;Ljava/util/EnumSet;)Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/ConsoleLogger;->logger:Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    .line 5
    invoke-interface {v0, p1}, Lcom/couchbase/lite/logging/LogSinks;->setConsole(Lcom/couchbase/lite/logging/ConsoleLogSink;)V

    return-void
.end method

.method public varargs setDomains([Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # [Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "domains"

    .line 6
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    array-length v0, p1

    if-gtz v0, :cond_0

    const-class p1, Lcom/couchbase/lite/LogDomain;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/ConsoleLogger;->setDomains(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setLevel(Lcom/couchbase/lite/LogLevel;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/ConsoleLogger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/ConsoleLogger;->getDomains()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/ConsoleLogger;->shimFactory(Lcom/couchbase/lite/LogLevel;Ljava/util/EnumSet;)Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/ConsoleLogger;->logger:Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/ConsoleLogger;->logger:Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    invoke-interface {p1, p0}, Lcom/couchbase/lite/logging/LogSinks;->setConsole(Lcom/couchbase/lite/logging/ConsoleLogSink;)V

    return-void
.end method

.method public shimFactory(Lcom/couchbase/lite/LogLevel;Ljava/util/EnumSet;)Lcom/couchbase/lite/ConsoleLogger$ShimLogger;
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)",
            "Lcom/couchbase/lite/ConsoleLogger$ShimLogger;"
        }
    .end annotation

    new-instance p0, Lcom/couchbase/lite/ConsoleLogger$ShimLogger;

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/ConsoleLogger$ShimLogger;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/EnumSet;)V

    return-object p0
.end method
