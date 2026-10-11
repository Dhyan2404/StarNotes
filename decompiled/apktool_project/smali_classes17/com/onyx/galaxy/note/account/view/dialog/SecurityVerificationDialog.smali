.class public final Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$Companion;,
        Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;,
        Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0007J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0003J\u0008\u0010\u0010\u001a\u00020\tH\u0003J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u0012\u001a\u00020\tH\u0002J\u0008\u0010\u0013\u001a\u00020\tH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001cR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;",
        "Landroid/app/Dialog;",
        "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;",
        "verifyListener",
        "setVerifyListener",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "verifyData",
        "getSlideData",
        "g",
        "Landroid/webkit/WebView;",
        "webView",
        "i",
        "c",
        "j",
        "e",
        "d",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "f",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "clusterInfo",
        "Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;",
        "Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;",
        "binding",
        "h",
        "Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V",
        "Companion",
        "OnVerifyListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:I


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

.field public h:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->Companion:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$Companion;

    const-string v0, "Android"

    sput-object v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->i:Ljava/lang/String;

    const/16 v0, 0x1f4

    sput v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clusterInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->Custom_NoTitle_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->f:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->f(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;)Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

    return-object p0
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->h(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$verifyData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->f:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterHost()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;->getOnyxSend2BooxHostBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->e()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/nc.html?client=Android&lang="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->isChinaLocale(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->isTWHKLocale(Ljava/util/Locale;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/LanguageType;->Companion:Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LanguageManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LanguageManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/LanguageManager;->getAppLanguageStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;->getByAppLanguageCode(Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/data/LanguageType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->d()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;->btnClose:Landroid/widget/Button;

    new-instance v3, Lcom/sunia/HTREnginev2/mdm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mdm;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;->webView:Landroid/webkit/WebView;

    const-string v3, "webView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->i(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final getSlideData(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "verifyData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->g:Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSecurityVerificationBinding;->webView:Landroid/webkit/WebView;

    const-string v1, "webView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->j:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->postDelayObservable(Landroid/view/View;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ndm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/ndm;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final i(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$initWebView$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$initWebView$1;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->i:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->h:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;->receiveVerifyData(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffdf

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setVerifyListener(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;)Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "verifyListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->h:Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;

    return-object p0
.end method
