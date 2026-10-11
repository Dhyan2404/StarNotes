.class public final Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0004\u001a\u00020\u0002H\u0017J\u0008\u0010\u0005\u001a\u00020\u0002H\u0007J\u0008\u0010\u0006\u001a\u00020\u0002H\u0017J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "com/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1",
        "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;",
        "",
        "navigateBack",
        "onDocumentFinishLoading",
        "onMessageRead",
        "onWebViewTimeout",
        "onSSLDateInvalid",
        "",
        "subTitleRes",
        "f",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->g(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;I)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->d(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->e(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->titleBar:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webViewTimeoutLayout:Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;I)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->titleBar:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webViewTimeoutLayout:Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;->webViewTimeoutLayout:Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutWebviewTimeoutBinding;->tvErrorSubTitle:Landroid/widget/TextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    new-instance v2, Lcom/sunia/HTREnginev2/tmj;

    invoke-direct {v2, v1, p1}, Lcom/sunia/HTREnginev2/tmj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$finishLoadingView(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->getHeaders(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCode()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->getThemeCode(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)I

    move-result p0

    return p0
.end method

.method public navigate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->navigate(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final navigateBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    new-instance v1, Lcom/sunia/HTREnginev2/umj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/umj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDataLoaded()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDataLoaded(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onDocumentFinishLoading()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)Lcom/onyx/galaxy/note/databinding/FragmentMessageCenterBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    new-instance v2, Lcom/sunia/HTREnginev2/smj;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/smj;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;->access$finishLoadingView(Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment;)V

    return-void
.end method

.method public onDocumentStartLoading()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDocumentStartLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public final onMessageRead()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onReloadAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onReloadAccount(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onSSLDateInvalid()V
    .locals 1

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_network_ssl_date_invalid:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->f(I)V

    return-void
.end method

.method public onTokenExpired()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onTokenExpired(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onWebViewTimeout()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_bad_network:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/MessageCenterFragment$loadWebpage$callback$1;->f(I)V

    return-void
.end method

.method public reportStatistic(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->reportStatistic(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;Ljava/lang/String;)V

    return-void
.end method
