.class public final Lcom/couchbase/lite/internal/CouchbaseLiteInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECTIVITY_MANAGER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EXECUTION_SERVICE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/exec/ExecutionService;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final LITECORE_JNI_LIBRARY:Ljava/lang/String; = "LiteCoreJNI"

.field static final LOCK:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final PLATFORM:Ljava/lang/String; = "CBL-ANDROID"

.field public static final SCRATCH_DIR_NAME:Ljava/lang/String; = "CouchbaseLiteTemp"

.field private static volatile debugging:Z

.field private static volatile defaultDbDir:Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->EXECUTION_SERVICE:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONNECTIVITY_MANAGER:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugging()Z
    .locals 1

    sget-boolean v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging:Z

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Application context not initialized"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultDbDir()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Can\'t create DB path"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->defaultDbDir:Ljava/io/File;

    return-object v0
.end method

.method public static getDefaultDbDirPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Can\'t create Default DB path"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->defaultDbDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->EXECUTION_SERVICE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/exec/ExecutionService;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/couchbase/lite/internal/AndroidExecutionService;

    invoke-direct {v1}, Lcom/couchbase/lite/internal/AndroidExecutionService;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/exec/ExecutionService;

    return-object v0
.end method

.method public static getNetworkConnectivityManager()Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONNECTIVITY_MANAGER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->newInstance()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging:Z

    sget-object p1, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/couchbase/lite/internal/utils/FileUtils;->verifyDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->defaultDbDir:Ljava/io/File;

    const-string p0, "LiteCoreJNI"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-boolean p0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging:Z

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4;->debug(Z)V

    invoke-static {}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->initLogging()V

    invoke-static {p3}, Lcom/couchbase/lite/internal/utils/FileUtils;->verifyDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->setC4TmpDirPath(Ljava/io/File;)V

    return-void
.end method

.method public static loadErrorMessages()Ljava/util/Map;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/couchbase/lite/R$raw;->errors:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/util/Scanner;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v4, "\\A"

    invoke-virtual {v3, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/ede;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/ede;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v3, "Failed to load error messages"

    invoke-static {v2, v3, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static requireInit(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".  Did you forget to call CouchbaseLite.init()?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reset()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->defaultDbDir:Ljava/io/File;

    sget-object v2, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONTEXT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->EXECUTION_SERVICE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->CONNECTIVITY_MANAGER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static setC4TmpDirPath(Ljava/io/File;)V
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4;->setTempDir(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Failed to set c4TmpDir"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
