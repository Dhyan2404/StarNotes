.class public Lio/opencensus/trace/unsafe/ContextManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/trace/ContextManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/opencensus/trace/ContextHandle;)Lio/grpc/Context;
    .locals 0

    check-cast p0, Lcom/sunia/HTREnginev2/sbe;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sbe;->a()Lio/grpc/Context;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/grpc/Context;)Lio/opencensus/trace/ContextHandle;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sbe;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sbe;-><init>(Lio/grpc/Context;)V

    return-object v0
.end method


# virtual methods
.method public currentContext()Lio/opencensus/trace/ContextHandle;
    .locals 0

    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/unsafe/ContextManagerImpl;->b(Lio/grpc/Context;)Lio/opencensus/trace/ContextHandle;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lio/opencensus/trace/ContextHandle;)Lio/opencensus/trace/Span;
    .locals 0

    invoke-static {p1}, Lio/opencensus/trace/unsafe/ContextManagerImpl;->a(Lio/opencensus/trace/ContextHandle;)Lio/grpc/Context;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/unsafe/ContextUtils;->getValue(Lio/grpc/Context;)Lio/opencensus/trace/Span;

    move-result-object p0

    return-object p0
.end method

.method public withValue(Lio/opencensus/trace/ContextHandle;Lio/opencensus/trace/Span;)Lio/opencensus/trace/ContextHandle;
    .locals 0
    .param p2    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lio/opencensus/trace/unsafe/ContextManagerImpl;->a(Lio/opencensus/trace/ContextHandle;)Lio/grpc/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lio/opencensus/trace/unsafe/ContextUtils;->withValue(Lio/grpc/Context;Lio/opencensus/trace/Span;)Lio/grpc/Context;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/unsafe/ContextManagerImpl;->b(Lio/grpc/Context;)Lio/opencensus/trace/ContextHandle;

    move-result-object p0

    return-object p0
.end method
