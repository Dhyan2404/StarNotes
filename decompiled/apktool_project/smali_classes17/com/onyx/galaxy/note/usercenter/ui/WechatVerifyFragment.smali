.class public final Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0016H\u0007J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0004H\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002J\u0008\u0010!\u001a\u00020\u0004H\u0002R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;",
        "event",
        "onQrRefresh",
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;",
        "onQrVerified",
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "onVerifyCodeWaitTimeUpdate",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkStatusChange",
        "p0",
        "v0",
        "w0",
        "t0",
        "z0",
        "u0",
        "B0",
        "y0",
        "C0",
        "x0",
        "Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;",
        "e1",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;",
        "verifyViewModel",
        "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;",
        "f1",
        "Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;",
        "loadingDrawable",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

.field public final e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->v0()V

    return-void
.end method

.method public static final synthetic access$askForContinue(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->t0()V

    return-void
.end method

.method public static final synthetic access$doAfterVerify(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->u0()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    return-object p0
.end method

.method public static final synthetic access$getVerifyViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    return-object p0
.end method

.method public static final synthetic access$navigateToAccountCenter(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->x0()V

    return-void
.end method

.method public static final synthetic access$onQrVerified(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->z0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->q0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->r0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->s0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->A0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public static final r0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->v0()V

    sget-object p0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->startWechatTimer()V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->w0()V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final C0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/UpdateAccountAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/onyx/android/sdk/data/account/action/UpdateAccountAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$i;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$i;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff88

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->setVerifyViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->releaseWechatTimer()V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

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
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->v0()V

    return-void
.end method

.method public final onQrRefresh(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRCodeEvent;->getQrCodeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->f1:Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final onQrVerified(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->isVerifyFinished()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$WechatQRVerifiedEvent;->getState()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setState(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    const-string v0, "QR"

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->setVerifyType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->t0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->B0()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->p0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->B0()V

    return-void
.end method

.method public final p0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/y6o;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/y6o;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/z6o;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/z6o;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentWechatVerifyBinding;->startAppButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/sunia/HTREnginev2/a7o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a7o;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final t0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getPurpose()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->z0()V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithConfirmWarningIconStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMask(F)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_warning:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageTextRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_continue_use:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_title_confirm_logoff:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$askForContinue$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$askForContinue$1$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnLeftButtonClick(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$askForContinue$1$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$askForContinue$1$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public final u0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getPurpose()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x321cc1aa    # -4.7656416E8f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    const v2, 0x2e243d

    if-eq v1, v2, :cond_2

    const v2, 0x5cd39ffa

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->y0()V

    goto :goto_0

    :cond_2
    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_bind_success:I

    invoke-static {v0, v1, v5, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->C0()V

    goto :goto_0

    :cond_4
    const-string v1, "unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_tip_unbind_success:I

    invoke-static {v0, v1, v5, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->C0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final v0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v1, Lcom/onyx/galaxy/note/utils/ServiceUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ServiceUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getPurpose()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/ServiceUtils;->loadWechatQrCodeUrl(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$a;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

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

.method public final w0()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->isWechatInstallation(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->createInitSdkAction(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$b;

    invoke-direct {v2, p0, v1}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$b;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$loadWechatApp$authResultListener$1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$c;->e:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final x0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragmentDirections;->wechatVerifyToAccountCenter()Landroidx/navigation/NavDirections;

    move-result-object v0

    const-string v1, "wechatVerifyToAccountCenter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final y0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_logoff_success:I

    sget v3, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_thanks:I

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$d;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$e;->e:Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z0()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getPurpose()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;->purposeToAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getVerifyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;->setAccessToken(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/WechatVerifyAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/action/WechatVerifyAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$f;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$g;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment$h;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x6o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x6o;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/WechatVerifyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
