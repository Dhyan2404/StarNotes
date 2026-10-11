.class final Lcom/oplus/ocs/base/common/api/l$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/base/common/api/l;->a(Lcom/oplus/ocs/base/common/api/OplusApi;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

.field final synthetic b:Lcom/oplus/ocs/base/common/api/l;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/common/api/l;Landroid/os/Looper;Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/base/common/api/l$4;->b:Lcom/oplus/ocs/base/common/api/l;

    iput-object p3, p0, Lcom/oplus/ocs/base/common/api/l$4;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/oplus/ocs/base/common/api/l$4;->a:Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    :cond_0
    return-void
.end method
