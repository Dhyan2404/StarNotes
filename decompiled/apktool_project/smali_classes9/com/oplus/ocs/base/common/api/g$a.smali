.class final Lcom/oplus/ocs/base/common/api/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/g;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/g;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/g$a;-><init>(Lcom/oplus/ocs/base/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/g;->a:Ljava/lang/String;

    const-string v0, "new ocs onServiceConnected"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-static {p2}, Lcom/oplus/ocs/base/IServiceBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/ocs/base/IServiceBroker;

    move-result-object p2

    iput-object p2, p1, Lcom/oplus/ocs/base/common/api/g;->c:Lcom/oplus/ocs/base/IServiceBroker;

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/g;->c:Lcom/oplus/ocs/base/IServiceBroker;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object p2, p2, Lcom/oplus/ocs/base/common/api/g;->h:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g;->f:Lcom/oplus/ocs/base/common/api/c;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object p1, p1, Lcom/oplus/ocs/base/common/api/g;->g:Lcom/oplus/ocs/base/common/api/k;

    if-eqz p1, :cond_0

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lcom/oplus/ocs/base/common/api/k;->onStateChange(I)V

    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$a;->a:Lcom/oplus/ocs/base/common/api/g;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g;->b:Lcom/oplus/ocs/base/common/api/g$a;

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g;->c:Lcom/oplus/ocs/base/IServiceBroker;

    return-void
.end method
