.class public Lcom/sunia/HTREnginev2/impl_native/EngineNative;
.super Lcom/sunia/HTREnginev2/sdk/Engine;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack$EngineAuthorInterface;


# static fields
.field private static TAG:Ljava/lang/String; = "EngineNative"


# instance fields
.field private authentication:Ljava/lang/String;

.field private authenticationCode:Ljava/lang/String;

.field private authorize:Ljava/lang/String;

.field private authorizeCode:I

.field private callBack:Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;

.field private certify:Ljava/lang/String;

.field private currentModelEnable:Z

.field private initializeCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

.field private isOffline:Z

.field private lHandler:J

.field private logDir:Ljava/lang/String;

.field private logLeve:I

.field mContext:Landroid/content/Context;

.field private mIsValid:Z

.field private startTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mIsValid:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->currentModelEnable:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authorizeCode:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authorize:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authentication:Ljava/lang/String;

    const-string v0, "0060"

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authenticationCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->certify:Ljava/lang/String;

    return-void
.end method

.method private createEngine()V
    .locals 5

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "createEngine"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->certify:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->certify:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v3, "createEngine: certify is not file path"

    invoke-static {v0, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;-><init>(Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack$EngineAuthorInterface;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->callBack:Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->startTime:J

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->certify:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->callBack:Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;

    invoke-static {v0, v3, v4}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->createEngine(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/impl_native/Local/LocalAuthenticateCallBack;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->initializeCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->initializeCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authentication:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authenticationCode:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->setAssetManager(Landroid/content/res/AssetManager;)I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->initializeCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authenticationCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authentication:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;->onSuccess(Lcom/sunia/HTREnginev2/sdk/Engine;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iput-wide v1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    return-void
.end method


# virtual methods
.method public createEditor(Lcom/sunia/HTREnginev2/sdk/Params;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "createEditor"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->getHandler()J

    move-result-wide v0

    move-object p0, p1

    check-cast p0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->getHandler()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->createEditor(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/impl_native/EditorNative;

    invoke-direct {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/EditorNative;-><init>(JLcom/sunia/HTREnginev2/sdk/Params;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "authentication"

    iget-object v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authentication:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authenticationCode"

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authenticationCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "getEngineVersion"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->getEngineVersion(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getHandler()J
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    return-wide v0
.end method

.method public isModelEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->currentModelEnable:Z

    return p0
.end method

.method public isValidate()Z
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mIsValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mIsValid:Z

    return p0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "release: "

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->release(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mIsValid:Z

    :cond_0
    return-void
.end method

.method public setDebugLevel(I)V
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebugLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->logLeve:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    iget p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->logLeve:I

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->setDebugLevel(JI)V

    :cond_0
    return-void
.end method

.method public setInitializeCallback(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "setInitializeCallback"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->initializeCallback:Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->startTime:J

    return-void
.end method

.method public setInvalidate(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvalidate handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " hashCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->mIsValid:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authenticationCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->authentication:Ljava/lang/String;

    const-string p1, "Module"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "failed"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->currentModelEnable:Z

    :cond_0
    sget-object p1, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Authenticate time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->startTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogDir(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->logDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->isValidate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->logDir:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->setLogDir(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->stopEngine(J)I

    iput-wide v2, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    :cond_0
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->createEngine()V

    return-void
.end method

.method public stopEngine()V
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/EngineNative;->lHandler:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->stopEngine(J)I

    :cond_0
    return-void
.end method
