.class final Lcom/couchbase/lite/FileLogger$ShimLogger;
.super Lcom/couchbase/lite/logging/FileLogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShimLogger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/logging/FileLogSink;-><init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V

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

.method public isLegacy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
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

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/logging/LogSinks;->getFile()Lcom/couchbase/lite/logging/FileLogSink;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/couchbase/lite/logging/FileLogSink;->writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
