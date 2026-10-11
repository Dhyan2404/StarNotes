.class public final Lio/opencensus/trace/export/ExportComponent$b;
.super Lio/opencensus/trace/export/ExportComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/ExportComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/opencensus/trace/export/SampledSpanStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/export/ExportComponent;-><init>()V

    .line 2
    invoke-static {}, Lio/opencensus/trace/export/SampledSpanStore;->a()Lio/opencensus/trace/export/SampledSpanStore;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/export/ExportComponent$b;->a:Lio/opencensus/trace/export/SampledSpanStore;

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/export/ExportComponent$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/opencensus/trace/export/ExportComponent$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunningSpanStore()Lio/opencensus/trace/export/RunningSpanStore;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/export/RunningSpanStore;->a()Lio/opencensus/trace/export/RunningSpanStore;

    move-result-object p0

    return-object p0
.end method

.method public getSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;
    .locals 0

    iget-object p0, p0, Lio/opencensus/trace/export/ExportComponent$b;->a:Lio/opencensus/trace/export/SampledSpanStore;

    return-object p0
.end method

.method public getSpanExporter()Lio/opencensus/trace/export/SpanExporter;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/export/SpanExporter;->getNoopSpanExporter()Lio/opencensus/trace/export/SpanExporter;

    move-result-object p0

    return-object p0
.end method
