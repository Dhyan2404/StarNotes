.class public Lcom/tencent/qimei/ad/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ad/k;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ad/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ad/i;->a:Lcom/tencent/qimei/ad/k;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qimei/ad/i;->a:Lcom/tencent/qimei/ad/k;

    invoke-virtual {p0, p1}, Lcom/tencent/qimei/ad/k;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
