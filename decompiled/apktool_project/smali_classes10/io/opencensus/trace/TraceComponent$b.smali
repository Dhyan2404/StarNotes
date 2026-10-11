.class public final Lio/opencensus/trace/TraceComponent$b;
.super Lio/opencensus/trace/TraceComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/TraceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/opencensus/trace/export/ExportComponent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/TraceComponent;-><init>()V

    .line 3
    invoke-static {}, Lio/opencensus/trace/export/ExportComponent;->newNoopExportComponent()Lio/opencensus/trace/export/ExportComponent;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/TraceComponent$b;->a:Lio/opencensus/trace/export/ExportComponent;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/TraceComponent$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/TraceComponent$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Lio/opencensus/common/Clock;
    .locals 0

    invoke-static {}, Lio/opencensus/internal/ZeroTimeClock;->getInstance()Lio/opencensus/internal/ZeroTimeClock;

    move-result-object p0

    return-object p0
.end method

.method public getExportComponent()Lio/opencensus/trace/export/ExportComponent;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/TraceComponent$b;->a:Lio/opencensus/trace/export/ExportComponent;

    return-object p0
.end method

.method public getPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/propagation/PropagationComponent;->getNoopPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;

    move-result-object p0

    return-object p0
.end method

.method public getTraceConfig()Lio/opencensus/trace/config/TraceConfig;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/config/TraceConfig;->getNoopTraceConfig()Lio/opencensus/trace/config/TraceConfig;

    move-result-object p0

    return-object p0
.end method

.method public getTracer()Lio/opencensus/trace/Tracer;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/Tracer;->a()Lio/opencensus/trace/Tracer;

    move-result-object p0

    return-object p0
.end method
