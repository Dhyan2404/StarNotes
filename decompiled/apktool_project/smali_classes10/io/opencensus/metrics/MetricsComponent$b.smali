.class public final Lio/opencensus/metrics/MetricsComponent$b;
.super Lio/opencensus/metrics/MetricsComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/MetricsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lio/opencensus/metrics/export/ExportComponent;

.field public static final b:Lio/opencensus/metrics/MetricRegistry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/opencensus/metrics/export/ExportComponent;->newNoopExportComponent()Lio/opencensus/metrics/export/ExportComponent;

    move-result-object v0

    sput-object v0, Lio/opencensus/metrics/MetricsComponent$b;->a:Lio/opencensus/metrics/export/ExportComponent;

    invoke-static {}, Lio/opencensus/metrics/MetricRegistry;->a()Lio/opencensus/metrics/MetricRegistry;

    move-result-object v0

    sput-object v0, Lio/opencensus/metrics/MetricsComponent$b;->b:Lio/opencensus/metrics/MetricRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/metrics/MetricsComponent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/metrics/MetricsComponent$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/metrics/MetricsComponent$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getExportComponent()Lio/opencensus/metrics/export/ExportComponent;
    .locals 0

    sget-object p0, Lio/opencensus/metrics/MetricsComponent$b;->a:Lio/opencensus/metrics/export/ExportComponent;

    return-object p0
.end method

.method public getMetricRegistry()Lio/opencensus/metrics/MetricRegistry;
    .locals 0

    sget-object p0, Lio/opencensus/metrics/MetricsComponent$b;->b:Lio/opencensus/metrics/MetricRegistry;

    return-object p0
.end method
