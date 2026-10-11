.class public abstract Lcom/sunia/HTREnginev2/sdk/Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported in current version"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEngineVersionV2()Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->getEngineVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract createEditor(Lcom/sunia/HTREnginev2/sdk/Params;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;
.end method

.method public abstract getAuthInfo()Ljava/lang/String;
.end method

.method public abstract getEngineVersion()Ljava/lang/String;
.end method

.method public abstract isValidate()Z
.end method

.method public abstract release()V
.end method

.method public abstract setDebugLevel(I)V
.end method

.method public abstract setInitializeCallback(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
.end method

.method public abstract setLogDir(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stopEngine()V
.end method
