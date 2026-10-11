.class final Lcom/oplus/ocs/base/common/api/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/common/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/g;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$4;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$4;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/g;->a:Ljava/lang/String;

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$4;->a:Lcom/oplus/ocs/base/common/api/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oplus/ocs/base/common/api/g;->b:Lcom/oplus/ocs/base/common/api/g$a;

    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/g;->c:Lcom/oplus/ocs/base/IServiceBroker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/ocs/base/common/api/g$4;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object v2, v2, Lcom/oplus/ocs/base/common/api/g;->h:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$4;->a:Lcom/oplus/ocs/base/common/api/g;

    iput-object v1, p0, Lcom/oplus/ocs/base/common/api/g;->c:Lcom/oplus/ocs/base/IServiceBroker;

    :cond_0
    return-void
.end method
