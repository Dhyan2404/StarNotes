.class public final Lcom/sunia/HTREnginev2/oie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/oie$b;,
        Lcom/sunia/HTREnginev2/oie$c;,
        Lcom/sunia/HTREnginev2/oie$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/oie;->c(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Lio/opencensus/trace/Span;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->currentContext()Lio/opencensus/trace/ContextHandle;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->getValue(Lio/opencensus/trace/ContextHandle;)Lio/opencensus/trace/Span;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lio/opencensus/trace/Span;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->setStatus(Lio/opencensus/trace/Status;)V

    return-void
.end method

.method public static d(Lio/opencensus/trace/Span;Z)Lio/opencensus/common/Scope;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/oie$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sunia/HTREnginev2/oie$d;-><init>(Lio/opencensus/trace/Span;ZLcom/sunia/HTREnginev2/oie$a;)V

    return-object v0
.end method

.method public static e(Lio/opencensus/trace/Span;ZLjava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/oie$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/sunia/HTREnginev2/oie$c;-><init>(Lio/opencensus/trace/Span;Ljava/lang/Runnable;ZLcom/sunia/HTREnginev2/oie$a;)V

    return-object v0
.end method

.method public static f(Lio/opencensus/trace/Span;ZLjava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/trace/Span;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)",
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/oie$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/sunia/HTREnginev2/oie$b;-><init>(Lio/opencensus/trace/Span;Ljava/util/concurrent/Callable;ZLcom/sunia/HTREnginev2/oie$a;)V

    return-object v0
.end method
