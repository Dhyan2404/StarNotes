.class public Lcom/tencent/qmsp/oaid2/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/oaid2/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qmsp/oaid2/h0;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/h0$a;->a:Lcom/tencent/qmsp/oaid2/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/h0$a;->a:Lcom/tencent/qmsp/oaid2/h0;

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/g0$a;->a(Landroid/os/IBinder;)Lcom/tencent/qmsp/oaid2/g0;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/qmsp/oaid2/h0;->a:Lcom/tencent/qmsp/oaid2/g0;

    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/h0$a;->a:Lcom/tencent/qmsp/oaid2/h0;

    iget-object p1, p1, Lcom/tencent/qmsp/oaid2/h0;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/h0$a;->a:Lcom/tencent/qmsp/oaid2/h0;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/h0;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/h0$a;->a:Lcom/tencent/qmsp/oaid2/h0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/h0;->a:Lcom/tencent/qmsp/oaid2/g0;

    return-void
.end method
