.class public final Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/widget/RichEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorWebViewClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0017J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldOverrideUrlLoading",
        "",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "sdk-textbox_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getSETUP_HTML$cp()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$setReady$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getMLoadListener$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$isReady$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$AfterInitialLoadListener;->onAfterInitialLoad(Z)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getCALLBACK_SCHEME$cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 10
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->callback(Ljava/lang/String;)V

    return v3

    .line 11
    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getSTATE_SCHEME$cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->stateCheck(Ljava/lang/String;)V

    return v3

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getCALLBACK_SCHEME$cp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->callback(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getSTATE_SCHEME$cp()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$EditorWebViewClient;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->stateCheck(Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
