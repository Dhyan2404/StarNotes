.class final Lcom/oplus/ocs/base/common/api/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/a;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/a;->b(Lcom/oplus/ocs/base/common/api/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/a;->g(Lcom/oplus/ocs/base/common/api/a;)Lcom/oplus/ocs/base/common/api/a$a;

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/a;->d(Lcom/oplus/ocs/base/common/api/a;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/a;->d(Lcom/oplus/ocs/base/common/api/a;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    invoke-static {v1}, Lcom/oplus/ocs/base/common/api/a;->c(Lcom/oplus/ocs/base/common/api/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/a$4;->a:Lcom/oplus/ocs/base/common/api/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/ocs/base/common/api/a;->a(Lcom/oplus/ocs/base/common/api/a;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    :cond_0
    return-void
.end method
