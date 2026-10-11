.class public final Lcom/couchbase/lite/internal/logging/LogSinksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/logging/LogSinks;


# static fields
.field private static final LOG_QUEUE_MAX:I = 0x10

.field private static final LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/logging/LogSinksImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c4Log:Lcom/couchbase/lite/internal/core/C4Log;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final callbackLevel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final customLogQueue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private customLogSink:Lcom/couchbase/lite/logging/BaseLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final logDomains:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;>;"
        }
    .end annotation
.end field

.field private final logLevel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private usedLegacyLogging:Ljava/lang/Boolean;

.field private final warned:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4Log;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4Log;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logLevel:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->callbackLevel:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logDomains:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->warned:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogQueue:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->lambda$writeToLocalLogSinks$0(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method private forbidNewAndLegacyLogging(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/logging/AbstractLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->usedLegacyLogging:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->isLegacy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->usedLegacyLogging:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot mix new and legacy logging"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLogSinks()Lcom/couchbase/lite/internal/logging/LogSinksImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    return-object v0
.end method

.method public static initLogging()V
    .locals 6

    invoke-static {}, Lcom/couchbase/lite/internal/logging/Log;->init()V

    new-instance v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    invoke-static {}, Lcom/couchbase/lite/internal/core/C4Log;->create()Lcom/couchbase/lite/internal/core/C4Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;-><init>(Lcom/couchbase/lite/internal/core/C4Log;)V

    new-instance v1, Lcom/couchbase/lite/logging/ConsoleLogSink;

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    :goto_0
    sget-object v3, Lcom/couchbase/lite/LogDomain;->ALL:Ljava/util/Set;

    invoke-direct {v1, v2, v3}, Lcom/couchbase/lite/logging/ConsoleLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->setConsole(Lcom/couchbase/lite/logging/ConsoleLogSink;)V

    sget-object v2, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    sget-object v3, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CBL-ANDROID Initialized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/couchbase/lite/internal/core/CBLVersion;->getVersionInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    sget-object v1, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->usedLegacyLogging:Ljava/lang/Boolean;

    return-void
.end method

.method private static synthetic lambda$writeToLocalLogSinks$0(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Custom"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private log(Lcom/couchbase/lite/internal/logging/AbstractLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/logging/AbstractLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/couchbase/lite/internal/logging/Log;->formatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object p1, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p1, v0, v1, p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static logFromCore(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->writeToLocalLogSinks(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method public static logToCore(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    invoke-virtual {v0, p1, p0, p2}, Lcom/couchbase/lite/internal/core/C4Log;->logToCore(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private setLogFilter()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getDomains()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogSink:Lcom/couchbase/lite/logging/BaseLogSink;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getDomains()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v1

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_5

    move-object v1, v3

    :cond_5
    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->callbackLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/LogLevel;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/internal/core/C4Log;->setCallbackLevel(Lcom/couchbase/lite/LogLevel;)V

    :cond_6
    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logDomains:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    invoke-virtual {p0, v1, v3, v0}, Lcom/couchbase/lite/internal/core/C4Log;->setLogFilter(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V

    return-void
.end method

.method private warnIfNoFileLogSink()V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->warned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/logging/ConsoleLogSink;

    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0, v1, v2}, Lcom/couchbase/lite/logging/ConsoleLogSink;-><init>(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;[Lcom/couchbase/lite/LogDomain;)V

    const-string v2, "Database.log.getFile().getConfig() is now null: logging is disabled.  Log files required for product support are not being generated."

    invoke-virtual {p0, v0, v1, v2}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->writeLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method public static warnNoFileLogSink()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->LOG_SINKS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->warnIfNoFileLogSink()V

    return-void
.end method


# virtual methods
.method public getC4Log()Lcom/couchbase/lite/internal/core/C4Log;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    return-object p0
.end method

.method public getConsole()Lcom/couchbase/lite/logging/ConsoleLogSink;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;

    return-object p0
.end method

.method public getCustom()Lcom/couchbase/lite/logging/BaseLogSink;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogSink:Lcom/couchbase/lite/logging/BaseLogSink;

    return-object p0
.end method

.method public getFile()Lcom/couchbase/lite/logging/FileLogSink;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    return-object p0
.end method

.method public setConsole(Lcom/couchbase/lite/logging/ConsoleLogSink;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/logging/ConsoleLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->forbidNewAndLegacyLogging(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;

    invoke-direct {p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->setLogFilter()V

    return-void
.end method

.method public setCustom(Lcom/couchbase/lite/logging/BaseLogSink;)V
    .locals 8
    .param p1    # Lcom/couchbase/lite/logging/BaseLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->forbidNewAndLegacyLogging(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogSink:Lcom/couchbase/lite/logging/BaseLogSink;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogQueue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogQueue:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v7}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->setLogFilter()V

    return-void
.end method

.method public setFile(Lcom/couchbase/lite/logging/FileLogSink;)V
    .locals 19
    .param p1    # Lcom/couchbase/lite/logging/FileLogSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->forbidNewAndLegacyLogging(Lcom/couchbase/lite/internal/logging/AbstractLogSink;)V

    if-nez v1, :cond_1

    sget-object v5, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    iget-object v3, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    const-string v4, ""

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    invoke-virtual/range {v3 .. v10}, Lcom/couchbase/lite/internal/core/C4Log;->initFileLogging(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;IJZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v13

    iget-object v2, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/logging/FileLogSink;->similar(Lcom/couchbase/lite/logging/FileLogSink;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    invoke-virtual {v2, v13}, Lcom/couchbase/lite/internal/core/C4Log;->setFileLogLevel(Lcom/couchbase/lite/LogLevel;)V

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->c4Log:Lcom/couchbase/lite/internal/core/C4Log;

    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/logging/FileLogSink;->getDirectory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/logging/FileLogSink;->getMaxKeptFiles()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/logging/FileLogSink;->getMaxFileSize()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/couchbase/lite/logging/FileLogSink;->isPlainText()Z

    move-result v17

    invoke-static {}, Lcom/couchbase/lite/internal/core/CBLVersion;->getVersionInfo()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/couchbase/lite/internal/core/C4Log;->initFileLogging(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;IJZLjava/lang/String;)V

    :goto_0
    iput-object v1, v0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    invoke-direct/range {p0 .. p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->setLogFilter()V

    invoke-direct/range {p0 .. p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->warnIfNoFileLogSink()V

    return-void
.end method

.method public shouldLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/LogLevel;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logDomains:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeToLocalLogSinks(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->consoleLogSink:Lcom/couchbase/lite/logging/ConsoleLogSink;

    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->log(Lcom/couchbase/lite/internal/logging/AbstractLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Console"

    invoke-static {v1, v0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogQueue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->customLogSink:Lcom/couchbase/lite/logging/BaseLogSink;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/logging/AbstractLogSink;->getLevel()Lcom/couchbase/lite/LogLevel;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/sunia/HTREnginev2/i3j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/i3j;-><init>(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Custom"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public writeToSinks(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->fileLogSink:Lcom/couchbase/lite/logging/FileLogSink;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->log(Lcom/couchbase/lite/internal/logging/AbstractLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "File"

    invoke-static {v1, v0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->writeToLocalLogSinks(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method
