.class final Lcom/oplus/ocs/base/task/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/oplus/ocs/base/task/d;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/task/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ocs/base/task/e;->a:Lcom/oplus/ocs/base/task/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/ocs/base/task/e;->a:Lcom/oplus/ocs/base/task/d;

    invoke-virtual {v0}, Lcom/oplus/ocs/base/task/d;->a()Lcom/oplus/ocs/base/task/OnCanceledListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/task/e;->a:Lcom/oplus/ocs/base/task/d;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/d;->a()Lcom/oplus/ocs/base/task/OnCanceledListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/ocs/base/task/OnCanceledListener;->onCanceled()V

    :cond_0
    return-void
.end method
