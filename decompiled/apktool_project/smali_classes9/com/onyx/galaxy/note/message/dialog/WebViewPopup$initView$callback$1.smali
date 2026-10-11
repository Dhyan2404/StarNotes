.class public final Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0007J\u0008\u0010\u0004\u001a\u00020\u0003H\u0007J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1",
        "Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;",
        "click",
        "",
        "close",
        "getToken",
        "",
        "onWebViewTimeout",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->a:Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->d(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->c(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getCloseStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onSecondaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getCloseStrategy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final click()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->a:Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;

    new-instance v0, Lcom/sunia/HTREnginev2/l6o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l6o;-><init>(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->a:Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;

    new-instance v0, Lcom/sunia/HTREnginev2/k6o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/k6o;-><init>(Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

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

.method public final getToken()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getAccountToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public onDataLoaded()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDataLoaded(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onDocumentFinishLoading()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDocumentFinishLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

    return-void
.end method

.method public onDocumentStartLoading()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onDocumentStartLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

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
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;->onSSLDateInvalid(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V

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
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup$initView$callback$1;->a:Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

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
