.class public final Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getHeaders(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/utils/WebViewExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/WebViewExt;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/WebViewExt;->getWebViewHeaders()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThemeCode(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)I
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeTypeForWeb()I

    move-result p0

    return p0
.end method

.method public static navigate(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "argsString"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/extension/StringMap;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    :cond_0
    move-object v2, p0

    sget-object v0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate$default(Lcom/onyx/galaxy/note/utils/Navigator;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static onDataLoaded(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onDocumentFinishLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onDocumentStartLoading(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onReloadAccount(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 6
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;

    const/4 p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static onSSLDateInvalid(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onTokenExpired(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 3
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "onWebViewTokenExpired"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static onWebViewTimeout(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static reportStatistic(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;->getEventId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    return-void

    :cond_3
    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
