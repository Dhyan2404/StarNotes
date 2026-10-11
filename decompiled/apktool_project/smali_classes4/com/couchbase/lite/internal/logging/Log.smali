.class public final Lcom/couchbase/lite/internal/logging/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MSG:Ljava/lang/String; = "Unknown error"

.field public static final LOG_HEADER:Ljava/lang/String; = "[JAVA] "

.field private static volatile errorMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    invoke-static {v0, p0, p2, p1, p3}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    invoke-static {v0, p0, p2, p1, p3}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/FormatterClosedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static formatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    invoke-static {v0, p0, p2, p1, p3}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static info(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->loadErrorMessages()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/couchbase/lite/internal/logging/Log;->setStandardErrorMessages(Ljava/util/Map;)V

    return-void
.end method

.method private static varargs log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->getLogSinks()Lcom/couchbase/lite/internal/logging/LogSinksImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->shouldLog(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_3

    array-length v1, p4

    if-lez v1, :cond_3

    invoke-static {p3, p4}, Lcom/couchbase/lite/internal/logging/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/couchbase/lite/internal/logging/Log;->formatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[JAVA] "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->writeToSinks(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "Unknown error"

    return-object p0

    :cond_0
    sget-object v0, Lcom/couchbase/lite/internal/logging/Log;->errorMessages:Ljava/util/Map;

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/couchbase/lite/internal/logging/Log;->errorMessages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static setStandardErrorMessages(Ljava/util/Map;)V
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/couchbase/lite/internal/logging/Log;->errorMessages:Ljava/util/Map;

    return-void
.end method

.method public static w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2, p1, v1}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    invoke-static {v0, p0, p2, p1, p3}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->log(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
