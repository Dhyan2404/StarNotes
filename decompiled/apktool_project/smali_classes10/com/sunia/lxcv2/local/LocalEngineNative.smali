.class public Lcom/sunia/lxcv2/local/LocalEngineNative;
.super Lcom/sunia/basev2/engine/BaseEngine;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalEngineNative"

.field private static volatile support:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "lxcsuggest"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/basev2/engine/BaseEngine;->loadNativeLibrary([Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sunia/lxcv2/local/LocalEngineNative;->support:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/basev2/engine/BaseEngine;-><init>()V

    return-void
.end method

.method public static isSupport()Z
    .locals 1

    sget-boolean v0, Lcom/sunia/lxcv2/local/LocalEngineNative;->support:Z

    return v0
.end method

.method public static native lxcCreateEngine()J
.end method

.method public static native lxcDestroyEngine(J)V
.end method

.method public static native lxcDoSuggesterV2(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method public static native lxcInitSuggesterV2(JLandroid/content/res/AssetManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
