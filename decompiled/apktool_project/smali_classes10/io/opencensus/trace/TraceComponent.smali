.class public abstract Lio/opencensus/trace/TraceComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/TraceComponent$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/TraceComponent;
    .locals 2

    new-instance v0, Lio/opencensus/trace/TraceComponent$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/TraceComponent$b;-><init>(Lio/opencensus/trace/TraceComponent$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract getClock()Lio/opencensus/common/Clock;
.end method

.method public abstract getExportComponent()Lio/opencensus/trace/export/ExportComponent;
.end method

.method public abstract getPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;
.end method

.method public abstract getTraceConfig()Lio/opencensus/trace/config/TraceConfig;
.end method

.method public abstract getTracer()Lio/opencensus/trace/Tracer;
.end method
