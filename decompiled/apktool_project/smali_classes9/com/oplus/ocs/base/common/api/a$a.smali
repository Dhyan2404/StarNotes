.class final Lcom/oplus/ocs/base/common/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/a;


# direct methods
.method private constructor <init>(Lcom/oplus/ocs/base/common/api/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/ocs/base/common/api/a;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/api/a$a;-><init>(Lcom/oplus/ocs/base/common/api/a;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/a;->b(Lcom/oplus/ocs/base/common/api/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/ocs/base/common/api/a;->a(Lcom/oplus/ocs/base/common/api/a;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/a;->d(Lcom/oplus/ocs/base/common/api/a;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p2}, Lcom/oplus/ocs/base/common/api/a;->c(Lcom/oplus/ocs/base/common/api/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/a;->e(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/api/c;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/a;->f(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/api/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/a;->f(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/api/k;

    move-result-object p1

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lcom/oplus/ocs/base/common/api/k;->onStateChange(I)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {p1}, Lcom/oplus/ocs/base/common/api/a;->g(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/api/a$a;

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$a;->a:Lcom/oplus/ocs/base/common/api/a;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/a;->a(Lcom/oplus/ocs/base/common/api/a;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    return-void
.end method
