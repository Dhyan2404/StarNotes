.class public final Lcom/couchbase/lite/FileLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/FileLogger$ShimLogger;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private configuration:Lcom/couchbase/lite/LogFileConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private logger:Lcom/couchbase/lite/FileLogger$ShimLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private installLogger(Lcom/couchbase/lite/LogFileConfiguration;Lcom/couchbase/lite/LogLevel;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/LogFileConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/FileLogger$ShimLogger;

    new-instance v1, Lcom/couchbase/lite/logging/FileLogSink$Builder;

    invoke-direct {v1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/LogFileConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/logging/FileLogSink$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->setLevel(Lcom/couchbase/lite/LogLevel;)Lcom/couchbase/lite/logging/FileLogSink$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/couchbase/lite/LogFileConfiguration;->getMaxRotateCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->setMaxKeptFiles(I)Lcom/couchbase/lite/logging/FileLogSink$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/couchbase/lite/LogFileConfiguration;->getMaxSize()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->setMaxFileSize(J)Lcom/couchbase/lite/logging/FileLogSink$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/couchbase/lite/LogFileConfiguration;->usesPlaintext()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/couchbase/lite/logging/FileLogSink$Builder;->setPlainText(Z)Lcom/couchbase/lite/logging/FileLogSink$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/couchbase/lite/FileLogger$ShimLogger;-><init>(Lcom/couchbase/lite/logging/FileLogSink$Builder;)V

    move-object p1, v0

    :goto_0
    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/couchbase/lite/logging/LogSinks;->setFile(Lcom/couchbase/lite/logging/FileLogSink;)V

    iput-object p1, p0, Lcom/couchbase/lite/FileLogger;->logger:Lcom/couchbase/lite/FileLogger$ShimLogger;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/couchbase/lite/LogFileConfiguration;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/logging/LogSinks;->getFile()Lcom/couchbase/lite/logging/FileLogSink;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/couchbase/lite/LogFileConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/logging/FileLogSink;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/couchbase/lite/logging/FileLogSink;->getMaxFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/couchbase/lite/logging/FileLogSink;->getMaxKeptFiles()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/couchbase/lite/logging/FileLogSink;->isPlainText()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public getLevel()Lcom/couchbase/lite/LogLevel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/logging/LogSinks;->getFile()Lcom/couchbase/lite/logging/FileLogSink;

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

    iget-object p0, p0, Lcom/couchbase/lite/FileLogger;->logger:Lcom/couchbase/lite/FileLogger$ShimLogger;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/FileLogger$ShimLogger;->doLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConfig(Lcom/couchbase/lite/LogFileConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogFileConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/FileLogger;->getConfig()Lcom/couchbase/lite/LogFileConfiguration;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/couchbase/lite/LogFileConfiguration;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/LogFileConfiguration;-><init>(Lcom/couchbase/lite/LogFileConfiguration;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/couchbase/lite/FileLogger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/FileLogger;->installLogger(Lcom/couchbase/lite/LogFileConfiguration;Lcom/couchbase/lite/LogLevel;)V

    iput-object p1, p0, Lcom/couchbase/lite/FileLogger;->configuration:Lcom/couchbase/lite/LogFileConfiguration;

    return-void
.end method

.method public setLevel(Lcom/couchbase/lite/LogLevel;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/FileLogger;->configuration:Lcom/couchbase/lite/LogFileConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/FileLogger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/FileLogger;->installLogger(Lcom/couchbase/lite/LogFileConfiguration;Lcom/couchbase/lite/LogLevel;)V

    return-void

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "CannotSetLogLevel"

    invoke-static {p1}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
