.class public final Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "",
        "()V",
        "autoDecideVerifyMethods",
        "",
        "getAutoDecideVerifyMethods",
        "()Z",
        "setAutoDecideVerifyMethods",
        "(Z)V",
        "checkCurrentAccount",
        "getCheckCurrentAccount",
        "setCheckCurrentAccount",
        "enableEmailMethod",
        "getEnableEmailMethod",
        "setEnableEmailMethod",
        "enableHuaweiMethod",
        "getEnableHuaweiMethod",
        "setEnableHuaweiMethod",
        "enablePasswordMethod",
        "getEnablePasswordMethod",
        "setEnablePasswordMethod",
        "enablePhoneMethod",
        "getEnablePhoneMethod",
        "setEnablePhoneMethod",
        "enableWechatMethod",
        "getEnableWechatMethod",
        "setEnableWechatMethod",
        "verificationTitle",
        "",
        "getVerificationTitle",
        "()Ljava/lang/String;",
        "setVerificationTitle",
        "(Ljava/lang/String;)V",
        "getSupportedMethods",
        "",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private autoDecideVerifyMethods:Z

.field private checkCurrentAccount:Z

.field private enableEmailMethod:Z

.field private enableHuaweiMethod:Z

.field private enablePasswordMethod:Z

.field private enablePhoneMethod:Z

.field private enableWechatMethod:Z

.field private verificationTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->verificationTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->checkCurrentAccount:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->autoDecideVerifyMethods:Z

    return-void
.end method


# virtual methods
.method public final getAutoDecideVerifyMethods()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->autoDecideVerifyMethods:Z

    return p0
.end method

.method public final getCheckCurrentAccount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->checkCurrentAccount:Z

    return p0
.end method

.method public final getEnableEmailMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableEmailMethod:Z

    return p0
.end method

.method public final getEnableHuaweiMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableHuaweiMethod:Z

    return p0
.end method

.method public final getEnablePasswordMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enablePasswordMethod:Z

    return p0
.end method

.method public final getEnablePhoneMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enablePhoneMethod:Z

    return p0
.end method

.method public final getEnableWechatMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableWechatMethod:Z

    return p0
.end method

.method public final getSupportedMethods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$1;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    const-string v2, "Password"

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$2;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    const-string v2, "Phone"

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$3;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    const-string v2, "Email"

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$4;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    const-string v2, "Wechat"

    invoke-static {v0, v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs$getSupportedMethods$5;-><init>(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    const-string p0, "Huawei"

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIf(Ljava/util/Collection;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final getVerificationTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->verificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setAutoDecideVerifyMethods(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->autoDecideVerifyMethods:Z

    return-void
.end method

.method public final setCheckCurrentAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->checkCurrentAccount:Z

    return-void
.end method

.method public final setEnableEmailMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableEmailMethod:Z

    return-void
.end method

.method public final setEnableHuaweiMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableHuaweiMethod:Z

    return-void
.end method

.method public final setEnablePasswordMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enablePasswordMethod:Z

    return-void
.end method

.method public final setEnablePhoneMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enablePhoneMethod:Z

    return-void
.end method

.method public final setEnableWechatMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->enableWechatMethod:Z

    return-void
.end method

.method public final setVerificationTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->verificationTitle:Ljava/lang/String;

    return-void
.end method
