.class public Lcom/tencent/qimei/ad/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/content/Context;

.field public final c:Lcom/tencent/qimei/ad/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/ad/k;->b:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    new-instance p1, Lcom/tencent/qimei/ad/f;

    const-string v0, "sys"

    invoke-direct {p1, v0}, Lcom/tencent/qimei/ad/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qimei/ad/k;->c:Lcom/tencent/qimei/ad/f;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/ad/k;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ad/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ad/k;->c:Lcom/tencent/qimei/ad/f;

    const-string v2, "JSInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/qimei/ad/i;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ad/i;-><init>(Lcom/tencent/qimei/ad/k;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/ad/k;->a:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/tencent/qimei/ad/k;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/qimei/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/qimei/ad/j;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ad/j;-><init>(Lcom/tencent/qimei/ad/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/tencent/qimei/ad/k;->c:Lcom/tencent/qimei/ad/f;

    invoke-virtual {p0}, Lcom/tencent/qimei/ad/f;->b()V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/qimei/ad/h;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/ad/h;-><init>(Lcom/tencent/qimei/ad/k;)V

    const-string p0, "javascript:new Fingerprint().getNative()"

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
