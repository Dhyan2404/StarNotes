.class public final Lcom/couchbase/lite/internal/core/C4Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;,
        Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;
    }
.end annotation


# static fields
.field private static final CALLBACK_INSTRUMENTATION:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private static final IN_CALLBACK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final KNOWN_C4_LOGGING_DOMAINS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGING_DOMAIN_FROM_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGING_DOMAIN_TO_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/LogDomain;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOGGING_DOMAIN_TO_CANONICAL_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/LogDomain;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_LEVEL_FROM_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/couchbase/lite/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_LEVEL_TO_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/couchbase/lite/LogLevel;->VERBOSE:Lcom/couchbase/lite/LogLevel;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOG_LEVEL_FROM_C4:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOG_LEVEL_TO_C4:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v3, ""

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    const-string v4, "Actor"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    const-string v5, "BLIP"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "BLIPMessages"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Blob"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Changes"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "DB"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    const-string v7, "Enum"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string v8, "Listener"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Query"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "SQL"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Sync"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "SyncBusy"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TLS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "WS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Zip"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_FROM_C4:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/couchbase/lite/LogDomain;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-nez v11, :cond_0

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/couchbase/lite/LogDomain;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_TO_C4:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->KNOWN_C4_LOGGING_DOMAINS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_TO_CANONICAL_C4:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->IN_CALLBACK:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Log;->CALLBACK_INSTRUMENTATION:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    return-void
.end method

.method public static create()Lcom/couchbase/lite/internal/core/C4Log;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Log;

    new-instance v1, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;

    invoke-direct {v1}, Lcom/couchbase/lite/internal/core/impl/NativeC4Log;-><init>()V

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/core/C4Log;-><init>(Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;)V

    return-object v0
.end method

.method private getC4DomainsForLoggingDomains(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1    # Ljava/util/Set;
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/LogDomain;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_TO_C4:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/couchbase/lite/internal/core/C4Log;->LOG_LEVEL_TO_C4:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private getCanonicalC4DomainForLoggingDomain(Lcom/couchbase/lite/LogDomain;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_TO_CANONICAL_C4:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "DB"

    :goto_0
    return-object p0
.end method

.method private static getLogLevelForC4Level(I)Lcom/couchbase/lite/LogLevel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOG_LEVEL_FROM_C4:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/LogLevel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    :goto_0
    return-object p0
.end method

.method private static getLoggingDomainForC4Domain(Ljava/lang/String;)Lcom/couchbase/lite/LogDomain;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Log;->LOGGING_DOMAIN_FROM_C4:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/LogDomain;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    :goto_0
    return-object p0
.end method

.method public static logCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Log;->IN_CALLBACK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Log;->CALLBACK_INSTRUMENTATION:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;->onCallback(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/couchbase/lite/internal/core/C4Log;->getLogLevelForC4Level(I)Lcom/couchbase/lite/LogLevel;

    move-result-object p1

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Log;->getLoggingDomainForC4Domain(Ljava/lang/String;)Lcom/couchbase/lite/LogDomain;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFromCore(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setLogLevel(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Log;->IN_CALLBACK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Log Level"

    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;->nSetLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private setLogLevel(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Log;->setLogLevel(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initFileLogging(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;IJZLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result v2

    add-int/lit8 v3, p3, -0x1

    move-object v1, p1

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;->nWriteToBinaryFile(Ljava/lang/String;IIJZLjava/lang/String;)V

    return-void
.end method

.method public logToCore(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Log;->IN_CALLBACK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Recursive logging"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->logFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Log;->getCanonicalC4DomainForLoggingDomain(Lcom/couchbase/lite/LogDomain;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result p0

    invoke-interface {v0, p1, p0, p3}, Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;->nLog(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setCallbackInstrumentation(Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Log$CallbackInstrumentation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/couchbase/lite/internal/core/C4Log;->CALLBACK_INSTRUMENTATION:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setCallbackLevel(Lcom/couchbase/lite/LogLevel;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;->nSetCallbackLevel(I)V

    return-void
.end method

.method public setFileLogLevel(Lcom/couchbase/lite/LogLevel;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Log;->impl:Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4Log$NativeImpl;->nSetBinaryFileLevel(I)V

    return-void
.end method

.method public setLogFilter(Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogLevel;Ljava/util/Set;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogLevel;",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Log;->KNOWN_C4_LOGGING_DOMAINS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p3}, Lcom/couchbase/lite/internal/core/C4Log;->getC4DomainsForLoggingDomains(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/couchbase/lite/internal/core/C4Log;->setLogLevel(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Lcom/couchbase/lite/internal/core/C4Log;->setLogLevel(Ljava/lang/String;Lcom/couchbase/lite/LogLevel;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setLogLevel(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/LogLevel;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Log;->getCanonicalC4DomainForLoggingDomain(Lcom/couchbase/lite/LogDomain;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4Log;->getC4LevelForLogLevel(Lcom/couchbase/lite/LogLevel;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Log;->setLogLevel(Ljava/lang/String;I)V

    return-void
.end method
