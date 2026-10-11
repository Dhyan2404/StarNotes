.class final Lcom/oplus/ocs/base/common/api/g$2;
.super Lcom/oplus/ocs/base/IAuthenticationListener$Stub;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-direct {p0}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/g;->a:Ljava/lang/String;

    const-string v1, "handleAsyncAuthenticate, onFailed errorCode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/common/api/g;->a(I)V

    return-void
.end method

.method public final onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/g;

    iget-object v0, v0, Lcom/oplus/ocs/base/common/api/g;->a:Ljava/lang/String;

    const-string v1, "handleAsyncAuthenticate, onSuccess"

    invoke-static {v0, v1}, Lcom/oplus/ocs/base/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/g$2;->a:Lcom/oplus/ocs/base/common/api/g;

    invoke-static {p0, p1}, Lcom/oplus/ocs/base/common/api/g;->a(Lcom/oplus/ocs/base/common/api/g;Lcom/oplus/ocs/base/common/CapabilityInfo;)V

    return-void
.end method
