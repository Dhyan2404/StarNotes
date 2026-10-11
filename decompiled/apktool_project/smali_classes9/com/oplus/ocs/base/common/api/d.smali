.class Lcom/oplus/ocs/base/common/api/d;
.super Lcom/oplus/ocs/base/common/a;
.source "SourceFile"


# instance fields
.field a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

.field b:Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;

.field private final c:Ljava/lang/String;

.field private d:Lcom/oplus/ocs/base/common/api/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/a;-><init>(Landroid/os/Looper;)V

    const-class p1, Lcom/oplus/ocs/base/common/api/d;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/ocs/base/common/api/d;->d:Lcom/oplus/ocs/base/common/api/c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oplus/ocs/base/common/api/d;->c:Ljava/lang/String;

    const-string v2, "business handler what "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/ocs/base/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x64

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/oplus/ocs/base/common/api/d;->b:Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/oplus/ocs/base/common/ConnectionResult;

    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, p0}, Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;->onConnectionFailed(Lcom/oplus/ocs/base/common/ConnectionResult;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->d:Lcom/oplus/ocs/base/common/api/c;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/oplus/ocs/base/common/api/d;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/d;->d:Lcom/oplus/ocs/base/common/api/c;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
