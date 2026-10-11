.class public interface abstract Lcom/couchbase/lite/logging/LogSinks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get()Lcom/couchbase/lite/logging/LogSinks;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Logging not initialized"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    invoke-static {}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->getLogSinks()Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    move-result-object v0

    const-string v1, "loggers"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/logging/LogSinks;

    return-object v0
.end method


# virtual methods
.method public abstract getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCustom()Lcom/couchbase/lite/logging/BaseLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFile()Lcom/couchbase/lite/logging/FileLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setConsole(Lcom/couchbase/lite/logging/ConsoleLogSink;)V
    .param p1    # Lcom/couchbase/lite/logging/ConsoleLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCustom(Lcom/couchbase/lite/logging/BaseLogSink;)V
    .param p1    # Lcom/couchbase/lite/logging/BaseLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setFile(Lcom/couchbase/lite/logging/FileLogSink;)V
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
