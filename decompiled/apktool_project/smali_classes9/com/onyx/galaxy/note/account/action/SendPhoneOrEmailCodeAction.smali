.class public final Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;
.super Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;",
        "Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;",
        "",
        "verifiedData",
        "Lcom/onyx/android/sdk/data/account/bean/ResultData;",
        "sendVerifyCode",
        "",
        "onNext",
        "",
        "j",
        "I",
        "loginType",
        "Landroid/content/Context;",
        "activityContext",
        "phoneOrEmail",
        "areaCode",
        "",
        "checkCurrentAccount",
        "<init>",
        "(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final j:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneOrEmail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "areaCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p3, p4, p5}, Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;->j:I

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;-><init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onNext()V
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;->onNext()V

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->send_email_code_success:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public sendVerifyCode(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/ResultData;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "verifiedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;->getPhoneOrEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;->setVerifyData(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/ResultData;

    move-result-object p0

    return-object p0
.end method
