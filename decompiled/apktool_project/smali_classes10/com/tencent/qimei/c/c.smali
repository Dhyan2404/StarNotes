.class public Lcom/tencent/qimei/c/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/qimei/c/b;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/c/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/c/c;->a:Lcom/tencent/qimei/c/b;

    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/c/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/tencent/qimei/c/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qimei/c/c;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myPid()I

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p2, Lcom/tencent/qimei/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/tencent/qimei/c/c;->a:Lcom/tencent/qimei/c/b;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/tencent/qimei/r/f;

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->b()V

    :cond_1
    :goto_1
    return-void
.end method
