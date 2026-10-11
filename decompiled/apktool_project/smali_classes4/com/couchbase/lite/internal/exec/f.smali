.class public final synthetic Lcom/couchbase/lite/internal/exec/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/exec/SerialExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/exec/SerialExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/f;->e:Lcom/couchbase/lite/internal/exec/SerialExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/f;->e:Lcom/couchbase/lite/internal/exec/SerialExecutor;

    invoke-static {p0}, Lcom/couchbase/lite/internal/exec/SerialExecutor;->a(Lcom/couchbase/lite/internal/exec/SerialExecutor;)V

    return-void
.end method
