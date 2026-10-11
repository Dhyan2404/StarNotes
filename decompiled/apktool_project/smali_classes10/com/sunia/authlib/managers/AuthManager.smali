.class public Lcom/sunia/authlib/managers/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/authlib/managers/AuthManager$Instance;
    }
.end annotation


# static fields
.field public static final AAR_VERSION:Ljava/lang/String; = "7.5.6.033"

.field public static final INPUT_ERROR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "AuthManager"


# instance fields
.field private enableLog:Z

.field private lastLicenseFlag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "authlib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/authlib/bean/VerifyData;->init()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/authlib/managers/AuthManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/authlib/managers/AuthManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sunia/authlib/managers/AuthManager;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/managers/AuthManager$Instance;->instance:Lcom/sunia/authlib/managers/AuthManager;

    return-object v0
.end method

.method private setLog(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setEnableLog(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;Lcom/sunia/authlib/interfaces/IAuthenticateCallback;)I
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/sunia/authlib/managers/AuthManager;->authenticate(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;ZLcom/sunia/authlib/interfaces/IAuthenticateCallback;)I

    move-result p0

    return p0
.end method

.method public authenticate(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;ZLcom/sunia/authlib/interfaces/IAuthenticateCallback;)I
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/sunia/authlib/managers/AuthentCateManager;->getInstance()Lcom/sunia/authlib/managers/AuthentCateManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/authlib/managers/AuthentCateManager;->authenticate(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;ZLcom/sunia/authlib/interfaces/IAuthenticateCallback;)I

    move-result p0

    return p0
.end method

.method public authorize(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/managers/AuthManager;->lastLicenseFlag:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lcom/sunia/authlib/bean/VerifyData;->setLastLicenseFlag(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->getInstance()Lcom/sunia/authlib/managers/AuthorizeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/authlib/managers/AuthorizeManager;->authorize(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Lcom/sunia/authlib/interfaces/OnAuthorResultCallback;)I

    move-result p0

    return p0
.end method

.method public authorizeSync(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/managers/AuthManager;->lastLicenseFlag:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lcom/sunia/authlib/bean/VerifyData;->setLastLicenseFlag(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->getInstance()Lcom/sunia/authlib/managers/AuthorizeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/authlib/managers/AuthorizeManager;->authorizeSync(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;)Lcom/sunia/authlib/bean/AuthResultInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAARVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "V7.5.6.033-T33bc9d6e-20250903-dev"

    return-object p0
.end method

.method public getErrorMsg(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x2

    if-ne p1, p0, :cond_0

    const-string p0, "Parameter Error"

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastLicenseFlag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/managers/AuthManager;->lastLicenseFlag:Ljava/lang/String;

    return-object p0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSerialNo(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "getSerialNo failed ! context == null "

    invoke-static {p0}, Lcom/sunia/authlib/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setAppContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->getSerialNo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setAppContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->release()V

    return-void
.end method

.method public setEnableLog(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/sunia/authlib/managers/AuthManager;->enableLog:Z

    sput-boolean p1, Lcom/sunia/authlib/utils/LogUtils;->isLog:Z

    invoke-static {}, Lcom/sunia/authlib/managers/AuthorizeManager;->getInstance()Lcom/sunia/authlib/managers/AuthorizeManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sunia/authlib/managers/AuthManager;->enableLog:Z

    invoke-virtual {p1, v0}, Lcom/sunia/authlib/managers/AuthorizeManager;->setEnableLog(Z)V

    invoke-static {}, Lcom/sunia/authlib/managers/AuthentCateManager;->getInstance()Lcom/sunia/authlib/managers/AuthentCateManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sunia/authlib/managers/AuthManager;->enableLog:Z

    invoke-virtual {p1, v0}, Lcom/sunia/authlib/managers/AuthentCateManager;->setEnableLog(Z)V

    iget-boolean p1, p0, Lcom/sunia/authlib/managers/AuthManager;->enableLog:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/authlib/managers/AuthManager;->setLog(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastLicenseFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/managers/AuthManager;->lastLicenseFlag:Ljava/lang/String;

    return-void
.end method
