.class final Lcom/oplus/ocs/base/common/api/f$1;
.super Lcom/coloros/ocs/base/IAuthenticationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/f;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/InternalClient;Lcom/oplus/ocs/base/IAuthenticationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/f;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-direct {p0}, Lcom/coloros/ocs/base/IAuthenticationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/f;->a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/f;->a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {v0}, Lcom/oplus/ocs/base/common/api/f;->a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/f;->a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/IAuthenticationListener;->onFail(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/f$1;->a:Lcom/oplus/ocs/base/common/api/f;

    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/f;->a(Lcom/oplus/ocs/base/common/api/f;)Lcom/oplus/ocs/base/IAuthenticationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/ocs/base/IAuthenticationListener;->onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    :cond_1
    return-void
.end method
