.class public Lcom/tencent/qmsp/oaid2/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/oaid2/p;-><init>(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/p$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qmsp/oaid2/p;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/p;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/p$a;->a:Lcom/tencent/qmsp/oaid2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/p$a;->a:Lcom/tencent/qmsp/oaid2/p;

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/n$a;->a(Landroid/os/IBinder;)Lcom/tencent/qmsp/oaid2/n;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/p$a;->a:Lcom/tencent/qmsp/oaid2/p;

    iget-object p2, p1, Lcom/tencent/qmsp/oaid2/p;->d:Lcom/tencent/qmsp/oaid2/p$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/tencent/qmsp/oaid2/p$b;->a(Lcom/tencent/qmsp/oaid2/p;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/p$a;->a:Lcom/tencent/qmsp/oaid2/p;

    const-string p2, "Service onServiceConnected"

    invoke-static {p1, p2}, Lcom/tencent/qmsp/oaid2/p;->a(Lcom/tencent/qmsp/oaid2/p;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/p$a;->a:Lcom/tencent/qmsp/oaid2/p;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/p;->b:Lcom/tencent/qmsp/oaid2/n;

    const-string p1, "Service onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/tencent/qmsp/oaid2/p;->a(Lcom/tencent/qmsp/oaid2/p;Ljava/lang/String;)V

    return-void
.end method
