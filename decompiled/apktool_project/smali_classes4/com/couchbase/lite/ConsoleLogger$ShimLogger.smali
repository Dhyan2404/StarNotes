.class Lcom/couchbase/lite/ConsoleLogger$ShimLogger;
.super Lcom/couchbase/lite/logging/ConsoleLogSink;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShimLogger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/LogLevel;Ljava/util/EnumSet;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/logging/ConsoleLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public doLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
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

    invoke-super {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method public doWriteLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
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
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/logging/LogSinks;->getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/couchbase/lite/logging/ConsoleLogSink;->writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isLegacy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/ConsoleLogger$ShimLogger;->doWriteLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method
