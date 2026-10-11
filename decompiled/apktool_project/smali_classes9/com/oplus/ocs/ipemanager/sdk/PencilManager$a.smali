.class public Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/ipemanager/sdk/PencilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "PencilManager"

    const-string v1, "ISdkAidlInterface dead!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->a(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ipemanager/sdk/ISdkAidlInterface;

    iget-object v0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$a;->a:Lcom/oplus/ocs/ipemanager/sdk/PencilManager;

    invoke-static {p0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager;->b(Lcom/oplus/ocs/ipemanager/sdk/PencilManager;)Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/oplus/ocs/ipemanager/sdk/PencilManager$Callback;->onReleased(I)V

    :cond_0
    return-void
.end method
