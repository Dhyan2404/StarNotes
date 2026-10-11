.class public final Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "root",
        "Landroid/view/View;",
        "setContentView",
        "onDestroyView",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "event",
        "onNetworkChanged",
        "o0",
        "t0",
        "r0",
        "u0",
        "Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;",
        "binding",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$finishLoadingView(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->r0()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    return-object p0
.end method

.method public static final synthetic access$onBackPressed(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->u0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->p0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->q0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->s0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method

.method public static final p0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->u0()V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string p0, "webView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window.onReadAll"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->loadingView:Landroid/widget/LinearLayout;

    const-string p0, "loadingView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public final o0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->backButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/pmj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/pmj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->readAllButton:Landroid/widget/TextView;

    new-instance v3, Lcom/sunia/HTREnginev2/qmj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qmj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$addViewEvents$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$addViewEvents$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->addBackPressListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff91

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onNetworkChanged(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
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
    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->t0()V

    :cond_2
    return-void
.end method

.method public final r0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->delay_time_dialog_close:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/rmj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rmj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->o0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->t0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t0()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;->getMessageCenterService()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    const/4 v4, 0x0

    const-string v5, "binding"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v3, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->setWebViewCallback(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v6, "native"

    invoke-virtual {v3, v6, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->registerNativeObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v3, v0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v3, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_2
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->openWebpage(Ljava/lang/String;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v0, v0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    iget-object v5, v4, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->loadingView:Landroid/widget/LinearLayout;

    const-string v0, "loadingView"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    sget-object v13, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    const/4 v14, 0x0

    new-instance v15, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$1;

    invoke-direct {v15, v1}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final u0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/WebViewExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/WebViewExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v2, "webView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$onBackPressed$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$onBackPressed$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/WebViewExt;->onBackPressed(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
