.class public final Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->x0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1",
        "Landroid/webkit/WebChromeClient;",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "isDialog",
        "isUserGesture",
        "Landroid/os/Message;",
        "resultMsg",
        "onCreateWindow",
        "window",
        "",
        "onCloseWindow",
        "Landroid/content/Context;",
        "context",
        "a",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;->a:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;->a:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->access$initSetting(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getContentView()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1$createNewWebView$newWebView$1$1;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1$createNewWebView$newWebView$1$1;-><init>()V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;->a:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->access$addNewWebView(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;)V

    return-object v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;->a:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->access$destroyNewWebView(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;)V

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "resultMsg"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$initView$1;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p0

    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method
