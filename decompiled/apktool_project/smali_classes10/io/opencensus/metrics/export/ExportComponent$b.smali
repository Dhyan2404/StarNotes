.class public final Lio/opencensus/metrics/export/ExportComponent$b;
.super Lio/opencensus/metrics/export/ExportComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/export/ExportComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lio/opencensus/metrics/export/MetricProducerManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/opencensus/metrics/export/MetricProducerManager;->a()Lio/opencensus/metrics/export/MetricProducerManager;

    move-result-object v0

    sput-object v0, Lio/opencensus/metrics/export/ExportComponent$b;->a:Lio/opencensus/metrics/export/MetricProducerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/metrics/export/ExportComponent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/metrics/export/ExportComponent$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/metrics/export/ExportComponent$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricProducerManager()Lio/opencensus/metrics/export/MetricProducerManager;
    .locals 0

    sget-object p0, Lio/opencensus/metrics/export/ExportComponent$b;->a:Lio/opencensus/metrics/export/MetricProducerManager;

    return-object p0
.end method
