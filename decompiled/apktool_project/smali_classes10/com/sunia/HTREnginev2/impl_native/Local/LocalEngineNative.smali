.class public Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hasLoadNativeLibrary:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->loadNativeLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;)V
.end method

.method public static native authorizeOffline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;)V
.end method

.method public static native createEditor(JJ)J
.end method

.method public static native createEngine(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;)J
.end method

.method public static native getEngineVersion(J)Ljava/lang/String;
.end method

.method public static loadNativeLibrary()V
    .locals 4

    sget-boolean v0, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->hasLoadNativeLibrary:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->hasLoadNativeLibrary:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    const-class v1, Lcom/sunia/hwrv2/sdk/BuildConfig;

    const-string v2, "versionName"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v2, "gitBranch"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "SNHTREnginev2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->hasLoadNativeLibrary:Z

    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static native release(J)V
.end method

.method public static native setAssetManager(Landroid/content/res/AssetManager;)I
.end method

.method public static native setDebugLevel(JI)V
.end method

.method public static native setLogDir(JLjava/lang/String;)V
.end method

.method public static native stopEngine(J)I
.end method
