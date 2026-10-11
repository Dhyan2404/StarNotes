.class public final synthetic Lcom/couchbase/lite/internal/exec/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/e;->e:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/e;->e:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->finishTask()V

    return-void
.end method
