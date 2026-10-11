.class public final Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008A\u0010BJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0010H\u0007J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u00100\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\'\u001a\u0004\u0008.\u0010)\"\u0004\u0008/\u0010+R$\u00104\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\'\u001a\u0004\u00082\u0010)\"\u0004\u00083\u0010+R$\u00108\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010\'\u001a\u0004\u00086\u0010)\"\u0004\u00087\u0010+R$\u0010<\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010\'\u001a\u0004\u0008:\u0010)\"\u0004\u0008;\u0010+R%\u0010@\u001a\u0010\u0012\u000c\u0012\n >*\u0004\u0018\u00010=0=0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010\u001a\u001a\u0004\u0008@\u0010\u001c\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "reset",
        "Landroid/view/View;",
        "view",
        "onCodeImageClick",
        "onNextButtonClick",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;",
        "e",
        "onQrRefresh",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;",
        "event",
        "onQrVerified",
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "onVerifyCodeWaitTimeUpdate",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkStatusChange",
        "g",
        "Landroid/app/Activity;",
        "uiContext",
        "f",
        "startVerify",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "j",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "getVerifyArgs",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "setVerifyArgs",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V",
        "verifyArgs",
        "",
        "k",
        "Ljava/lang/String;",
        "getVerifyType",
        "()Ljava/lang/String;",
        "setVerifyType",
        "(Ljava/lang/String;)V",
        "verifyType",
        "l",
        "getCode",
        "setCode",
        "code",
        "m",
        "getState",
        "setState",
        "state",
        "n",
        "getOpenId",
        "setOpenId",
        "openId",
        "o",
        "getAccessToken",
        "setAccessToken",
        "accessToken",
        "",
        "kotlin.jvm.PlatformType",
        "p",
        "isNextButtonEnable",
        "<init>",
        "()V",
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
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$startVerify(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->startVerify()V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->h(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->e()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v1, Lcom/onyx/galaxy/note/utils/ServiceUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ServiceUtils;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/ServiceUtils;->loadWechatQrCodeUrl(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$a;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getApplicationContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->createInitSdkAction(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$b;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$loadWechatApp$authResultListener$1;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$c;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$c;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->e()V

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->startWechatTimer()V

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOpenId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final getState()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-object p0
.end method

.method public final getVerifyType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final isNextButtonEnable()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onCodeImageClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->g()V

    return-void
.end method

.method public final onNetworkStatusChange(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->e()V

    return-void
.end method

.method public final onNextButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public final onQrRefresh(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/account/event/RefreshQrCodeEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;->getQrCodeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/account/event/RefreshQrCodeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onQrVerified(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;->getState()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->m:Ljava/lang/String;

    const-string p1, "QR"

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->startVerify()V

    return-void
.end method

.method public final onVerifyCodeWaitTimeUpdate(Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getKEY_WECHAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getLeftTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->g()V

    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->o:Ljava/lang/String;

    return-void
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->l:Ljava/lang/String;

    return-void
.end method

.method public final setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->n:Ljava/lang/String;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->m:Ljava/lang/String;

    return-void
.end method

.method public final setVerifyArgs(Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->j:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    return-void
.end method

.method public final setVerifyType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public final startVerify()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;-><init>()V

    const-string v1, "security"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setAccessToken(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/WechatVerifyAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/action/WechatVerifyAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$d;->e:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel$e;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/b6;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b6;-><init>(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doFinally(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
