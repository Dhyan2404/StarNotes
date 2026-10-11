.class final Lcom/oplus/ocs/base/task/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/oplus/ocs/base/task/j;

.field private b:Lcom/oplus/ocs/base/task/Task;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/task/j;Lcom/oplus/ocs/base/task/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ocs/base/task/k;->a:Lcom/oplus/ocs/base/task/j;

    iput-object p2, p0, Lcom/oplus/ocs/base/task/k;->b:Lcom/oplus/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/ocs/base/task/k;->a:Lcom/oplus/ocs/base/task/j;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/task/j;->a()Lcom/oplus/ocs/base/task/OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/ocs/base/task/k;->a:Lcom/oplus/ocs/base/task/j;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/task/j;->a()Lcom/oplus/ocs/base/task/OnSuccessListener;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/ocs/base/task/k;->b:Lcom/oplus/ocs/base/task/Task;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/ocs/base/task/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
