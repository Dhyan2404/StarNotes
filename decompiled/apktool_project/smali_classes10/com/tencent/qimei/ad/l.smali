.class public Lcom/tencent/qimei/ad/l;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ad/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ad/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ad/l;->a:Lcom/tencent/qimei/ad/n;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qimei/ad/l;->a:Lcom/tencent/qimei/ad/n;

    invoke-virtual {p0}, Lcom/tencent/qimei/ad/n;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
