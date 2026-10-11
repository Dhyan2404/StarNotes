.class public Lcom/sunia/naiv2/local/LocalEngineNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/naiv2/local/LocalEngineNative;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/sunia/naiv2/local/LocalEngineNative;

    monitor-enter v0

    :try_start_0
    const-string v1, "naiengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native naiAddFont([B)Z
.end method

.method public static native naiAddLine(J[D[DI)I
.end method

.method public static native naiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native naiClearFonts()Z
.end method

.method public static native naiClearPoints(J)Z
.end method

.method public static native naiCreateEngine(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native naiDestroyEngine(J)V
.end method

.method public static native naiEngineValid(J)Z
.end method

.method public static native naiGetLastErrorString()Ljava/lang/String;
.end method

.method public static native naiGetLines(J)J
.end method

.method public static native naiLayout(JI)I
.end method

.method public static native naiLayoutGraphic(JII)I
.end method

.method public static native naiLayoutText(JLjava/lang/String;I)I
.end method

.method public static native naiRemoveLines(J[I)Z
.end method

.method public static native naiResetConfig(J)Z
.end method

.method public static native naiSetAAssetManager(Landroid/content/res/AssetManager;)Z
.end method

.method public static native naiSetConfig(JLjava/lang/String;)Z
.end method

.method public static native naiSupportLayout(JLjava/lang/String;I)Ljava/lang/String;
.end method
