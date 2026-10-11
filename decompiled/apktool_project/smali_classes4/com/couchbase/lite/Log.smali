.class public final Lcom/couchbase/lite/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Log$ShimLogger;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final consoleLogger:Lcom/couchbase/lite/ConsoleLogger;

.field private customLogger:Lcom/couchbase/lite/Logger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fileLogger:Lcom/couchbase/lite/FileLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/couchbase/lite/ConsoleLogger;

    invoke-direct {v0}, Lcom/couchbase/lite/ConsoleLogger;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/Log;->consoleLogger:Lcom/couchbase/lite/ConsoleLogger;

    new-instance v0, Lcom/couchbase/lite/FileLogger;

    invoke-direct {v0}, Lcom/couchbase/lite/FileLogger;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/Log;->fileLogger:Lcom/couchbase/lite/FileLogger;

    return-void
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/Log;)Lcom/couchbase/lite/Logger;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Log;->customLogger:Lcom/couchbase/lite/Logger;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/Log;Lcom/couchbase/lite/Logger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Log;->installCustomLogger(Lcom/couchbase/lite/Logger;)V

    return-void
.end method

.method private installCustomLogger(Lcom/couchbase/lite/Logger;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/Logger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/logging/LogSinks;->get()Lcom/couchbase/lite/logging/LogSinks;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/couchbase/lite/Log$ShimLogger;

    invoke-interface {p1}, Lcom/couchbase/lite/Logger;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object p1

    sget-object v2, Lcom/couchbase/lite/LogDomain;->ALL:Ljava/util/Set;

    invoke-direct {v1, p0, p1, v2}, Lcom/couchbase/lite/Log$ShimLogger;-><init>(Lcom/couchbase/lite/Log;Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V

    move-object p0, v1

    :goto_0
    invoke-interface {v0, p0}, Lcom/couchbase/lite/logging/LogSinks;->setCustom(Lcom/couchbase/lite/logging/BaseLogSink;)V

    return-void
.end method


# virtual methods
.method public getConsole()Lcom/couchbase/lite/ConsoleLogger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Console logging not initialized"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/Log;->consoleLogger:Lcom/couchbase/lite/ConsoleLogger;

    return-object p0
.end method

.method public getCustom()Lcom/couchbase/lite/Logger;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Log;->customLogger:Lcom/couchbase/lite/Logger;

    return-object p0
.end method

.method public getFile()Lcom/couchbase/lite/FileLogger;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "File logging not initialized"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/couchbase/lite/Log;->fileLogger:Lcom/couchbase/lite/FileLogger;

    return-object p0
.end method

.method public setCustom(Lcom/couchbase/lite/Logger;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Logger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/Log;->customLogger:Lcom/couchbase/lite/Logger;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Log;->installCustomLogger(Lcom/couchbase/lite/Logger;)V

    return-void
.end method
