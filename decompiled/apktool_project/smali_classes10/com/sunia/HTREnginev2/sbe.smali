.class public Lcom/sunia/HTREnginev2/sbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/trace/ContextHandle;


# instance fields
.field public final a:Lio/grpc/Context;


# direct methods
.method public constructor <init>(Lio/grpc/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sbe;->a:Lio/grpc/Context;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/Context;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sbe;->a:Lio/grpc/Context;

    return-object p0
.end method

.method public attach()Lio/opencensus/trace/ContextHandle;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sbe;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sbe;->a:Lio/grpc/Context;

    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sbe;-><init>(Lio/grpc/Context;)V

    return-object v0
.end method

.method public detach(Lio/opencensus/trace/ContextHandle;)V
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/sbe;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sbe;->a:Lio/grpc/Context;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/sbe;->a:Lio/grpc/Context;

    invoke-virtual {p0, p1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-void
.end method
