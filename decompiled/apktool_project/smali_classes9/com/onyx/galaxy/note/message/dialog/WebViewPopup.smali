.class public Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;
.super Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;",
        "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;",
        "",
        "initContentView",
        "n",
        "Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;",
        "s",
        "Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "notification",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "viewModel",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V",
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
.field public s:Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->n()V

    return-void
.end method


# virtual methods
.method public initContentView()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/base/R$color;->black_percent_30:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final n()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;-><init>(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->setWebViewCallback(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v4, "native"

    invoke-virtual {v1, v4, v0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->registerNativeObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWebViewBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getWebview()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->openWebpage(Ljava/lang/String;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method
