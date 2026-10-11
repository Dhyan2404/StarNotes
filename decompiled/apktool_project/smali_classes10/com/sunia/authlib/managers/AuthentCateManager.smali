.class public Lcom/sunia/authlib/managers/AuthentCateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/authlib/managers/AuthentCateManager$Instance;
    }
.end annotation


# static fields
.field public static final ERROE_CONEXT:I = 0x1a

.field public static final PARAM_ERROR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "AuthentCateManager"


# instance fields
.field private enableLog:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/authlib/managers/AuthentCateManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/authlib/managers/AuthentCateManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sunia/authlib/managers/AuthentCateManager;
    .locals 1

    sget-object v0, Lcom/sunia/authlib/managers/AuthentCateManager$Instance;->instance:Lcom/sunia/authlib/managers/AuthentCateManager;

    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;ZLcom/sunia/authlib/interfaces/IAuthenticateCallback;)I
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sunia/authlib/managers/AuthentCateManager;->enableLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunia/authlib/managers/AuthentCateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate isString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x2

    if-nez p2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Lcom/sunia/authlib/managers/AuthentCateManager;->enableLog:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sunia/authlib/managers/AuthentCateManager;->TAG:Ljava/lang/String;

    const-string p1, "ArgumentException:The certFilePath argument cannot be empty\uff01"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5, v0, v0}, Lcom/sunia/authlib/interfaces/IAuthenticateCallback;->onCallback(II)V

    :cond_2
    return v0

    :cond_3
    if-eqz p4, :cond_5

    if-nez p1, :cond_8

    const/16 p0, 0x1a

    if-eqz p5, :cond_4

    invoke-interface {p5, p0, p0}, Lcom/sunia/authlib/interfaces/IAuthenticateCallback;->onCallback(II)V

    :cond_4
    return p0

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean p0, p0, Lcom/sunia/authlib/managers/AuthentCateManager;->enableLog:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sunia/authlib/managers/AuthentCateManager;->TAG:Ljava/lang/String;

    const-string p1, "cert file is not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p5, :cond_7

    invoke-interface {p5, v0, v0}, Lcom/sunia/authlib/interfaces/IAuthenticateCallback;->onCallback(II)V

    :cond_7
    return v0

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_9
    invoke-static {p1}, Lcom/sunia/authlib/nativelibs/AuthNativeLib;->setAppContext(Landroid/content/Context;)V

    invoke-static {p2, p3, p4, p5}, Lcom/sunia/authlib/nativelibs/AuthenticateLib;->Authenticate(Lcom/sunia/authlib/bean/VerifyData;Ljava/lang/String;ZLcom/sunia/authlib/interfaces/IAuthenticateCallback;)I

    move-result p0

    return p0
.end method

.method public isEnableLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/authlib/managers/AuthentCateManager;->enableLog:Z

    return p0
.end method

.method public setEnableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/authlib/managers/AuthentCateManager;->enableLog:Z

    return-void
.end method
