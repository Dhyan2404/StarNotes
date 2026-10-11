.class public Lcom/tencent/qimei/ad/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tencent/smtt/sdk/WebView;

.field public b:Landroid/content/Context;

.field public final c:Lcom/tencent/qimei/ad/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/ad/n;->b:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance p1, Lcom/tencent/qimei/ad/f;

    const-string v0, "x5"

    invoke-direct {p1, v0}, Lcom/tencent/qimei/ad/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qimei/ad/n;->c:Lcom/tencent/qimei/ad/f;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/ad/n;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ad/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->c:Lcom/tencent/qimei/ad/f;

    const-string v1, "x5_sys"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ad/f;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/qimei/ad/n;->c:Lcom/tencent/qimei/ad/f;

    const-string v2, "JSInterface"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/qimei/ad/l;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ad/l;-><init>(Lcom/tencent/qimei/ad/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object p0, p0, Lcom/tencent/qimei/ad/n;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/qimei/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/ad/n;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v0, "javascript:new Fingerprint().getNative()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/qimei/ad/m;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ad/m;-><init>(Lcom/tencent/qimei/ad/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/tencent/qimei/ad/n;->c:Lcom/tencent/qimei/ad/f;

    invoke-virtual {p0}, Lcom/tencent/qimei/ad/f;->b()V

    return-void
.end method
