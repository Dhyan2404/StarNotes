.class public final Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0017J\u0008\u0010\u0008\u001a\u00020\u0004H\u0017J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "com/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1",
        "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;",
        "",
        "getHistoryNoteCount",
        "",
        "onContinue",
        "onLogoff",
        "onDocumentFinishLoading",
        "onWebViewTimeout",
        "onSSLDateInvalid",
        "subTitleRes",
        "i",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->j(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;I)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->g(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->k(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->f(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->h(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->titleBar:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->offlinePlaceholderView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->loadingView:Landroid/widget/LinearLayout;

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

.method public static final j(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->tipText:Landroid/widget/TextView;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->titleBar:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->offlinePlaceholderView:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;->loadingView:Landroid/widget/LinearLayout;

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

.method public final getHistoryNoteCount()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaInfo()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->getDocHistoryCount()I

    move-result p0

    return p0
.end method

.method public getThemeCode()I
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->getThemeCode(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)I

    move-result p0

    return p0
.end method

.method public final i(I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v4, Lcom/sunia/HTREnginev2/x2j;

    invoke-direct {v4, v3, p1}, Lcom/sunia/HTREnginev2/x2j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/data/R$integer;->delay_time_dialog_close:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v3

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v0, Lcom/sunia/HTREnginev2/y2j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/y2j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
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

.method public final onContinue()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v1, Lcom/sunia/HTREnginev2/w2j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w2j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDataLoaded()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDataLoaded(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onDocumentFinishLoading()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v4, Lcom/sunia/HTREnginev2/z2j;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/z2j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/data/R$integer;->delay_time_dialog_close:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v1, Lcom/sunia/HTREnginev2/a3j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a3j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDocumentStartLoading()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDocumentStartLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public final onLogoff()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogOffAgreementBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->a:Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;

    new-instance v1, Lcom/sunia/HTREnginev2/b3j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b3j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->i(I)V

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

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffAgreementFragment$loadWebpage$callback$1;->i(I)V

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
