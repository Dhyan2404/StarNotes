.class public Lio/opencensus/trace/unsafe/ContextHandleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lio/opencensus/trace/ContextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->a:Ljava/util/logging/Logger;

    const-class v0, Lio/opencensus/trace/ContextManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/unsafe/ContextHandleUtils;->a(Ljava/lang/ClassLoader;)Lio/opencensus/trace/ContextManager;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->b:Lio/opencensus/trace/ContextManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)Lio/opencensus/trace/ContextManager;
    .locals 3
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "io.opentelemetry.opencensusshim.OpenTelemetryContextManager"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lio/opencensus/trace/ContextManager;

    invoke-static {p0, v0}, Lio/opencensus/internal/Provider;->createInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/ContextManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load full implementation for OpenTelemetry context manager, now loading original implementation."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lio/opencensus/trace/unsafe/ContextManagerImpl;

    invoke-direct {p0}, Lio/opencensus/trace/unsafe/ContextManagerImpl;-><init>()V

    return-object p0
.end method

.method public static currentContext()Lio/opencensus/trace/ContextHandle;
    .locals 1

    sget-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->b:Lio/opencensus/trace/ContextManager;

    invoke-interface {v0}, Lio/opencensus/trace/ContextManager;->currentContext()Lio/opencensus/trace/ContextHandle;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Lio/opencensus/trace/ContextHandle;)Lio/opencensus/trace/Span;
    .locals 1

    sget-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->b:Lio/opencensus/trace/ContextManager;

    invoke-interface {v0, p0}, Lio/opencensus/trace/ContextManager;->getValue(Lio/opencensus/trace/ContextHandle;)Lio/opencensus/trace/Span;

    move-result-object p0

    return-object p0
.end method

.method public static tryExtractGrpcContext(Lio/opencensus/trace/ContextHandle;)Lio/grpc/Context;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Lcom/sunia/HTREnginev2/sbe;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sunia/HTREnginev2/sbe;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sbe;->a()Lio/grpc/Context;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static withValue(Lio/opencensus/trace/ContextHandle;Lio/opencensus/trace/Span;)Lio/opencensus/trace/ContextHandle;
    .locals 1
    .param p1    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lio/opencensus/trace/unsafe/ContextHandleUtils;->b:Lio/opencensus/trace/ContextManager;

    invoke-interface {v0, p0, p1}, Lio/opencensus/trace/ContextManager;->withValue(Lio/opencensus/trace/ContextHandle;Lio/opencensus/trace/Span;)Lio/opencensus/trace/ContextHandle;

    move-result-object p0

    return-object p0
.end method
