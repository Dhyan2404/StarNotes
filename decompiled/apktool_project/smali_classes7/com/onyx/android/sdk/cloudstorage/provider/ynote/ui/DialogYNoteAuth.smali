.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;
.super Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J(\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J(\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002R\u0016\u0010\u0012\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;",
        "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
        "dialog",
        "Landroid/webkit/WebView;",
        "webView",
        "Landroid/webkit/WebViewClient;",
        "webViewClient",
        "",
        "url",
        "",
        "webChromeClientCallback",
        "webViewCallback",
        "",
        "webViewClientPageFinished",
        "z0",
        "A0",
        "E1",
        "Z",
        "loginTipsShown",
        "<init>",
        "()V",
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
.field public E1:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0()Ljava/lang/String;
    .locals 0

    const-string p0, "javascript:function getClass(parent,sClass){var aEle=parent.getElementsByTagName(\'input\');var aResult=[];var i=0;for(i<0;i<aEle.length;i++){if(aEle[i].className==sClass){aResult.push(aEle[i]);}};return aResult;}function setFontSize() {var userName = getClass(document,\'login-username text\')[0]; var password = getClass(document,\'login-password text\')[0]; userName.style.fontSize=\'26px\';userName.style.width=\'320px\';password.style.width=\'320px\';password.style.fontSize=\'26px\';}"

    return-object p0
.end method

.method public webChromeClientCallback(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "https://zc.reg.163.com/regInitialized"

    const/4 v3, 0x0

    invoke-static {p4, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->webChromeClientCallback(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public webViewCallback(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewClient"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "http://www.onyx-international.com/"

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p4, p1, p2, p3, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getDialogParam()Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;->getExtraMap()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "authState"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->setCode(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->dismiss()V

    :cond_3
    const-string p1, "https://note.youdao.com/oauth/authorize2"

    invoke-static {p4, p1, p2, p3, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;->z0()V

    :cond_4
    return p2
.end method

.method public webViewClientPageFinished(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewClient"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;->A0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string p1, "javascript:setFontSize();"

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;->E1:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/onyx/android/sdk/cloudstorage/R$string;->not_support_netease_account_to_login:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/ui/DialogYNoteAuth;->E1:Z

    :cond_0
    return-void
.end method

.method public final z0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
