.class public final Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/statistics/AuthResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1",
        "Lcom/onyx/android/sdk/statistics/AuthResultListener;",
        "onCancel",
        "",
        "p1",
        "",
        "onComplete",
        "data",
        "",
        "",
        "onError",
        "t",
        "",
        "onStart",
        "note_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0

    return-void
.end method

.method public onComplete(ILjava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$getVerifyViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->isVerifyFinished()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$getVerifyViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    move-result-object p1

    const-string v0, "openid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setOpenId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$getVerifyViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    move-result-object p1

    const-string v0, "accessToken"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setAccessToken(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$getVerifyViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    move-result-object p1

    const-string p2, "APP"

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setVerifyType(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->access$askForContinue(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    return-void
.end method

.method public onError(ILjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
