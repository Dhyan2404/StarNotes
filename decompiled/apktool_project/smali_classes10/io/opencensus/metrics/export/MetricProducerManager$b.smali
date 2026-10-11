.class public final Lio/opencensus/metrics/export/MetricProducerManager$b;
.super Lio/opencensus/metrics/export/MetricProducerManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/export/MetricProducerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/metrics/export/MetricProducerManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/metrics/export/MetricProducerManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/metrics/export/MetricProducerManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/opencensus/metrics/export/MetricProducer;)V
    .locals 0

    const-string p0, "metricProducer"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllMetricProducer()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/opencensus/metrics/export/MetricProducer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public remove(Lio/opencensus/metrics/export/MetricProducer;)V
    .locals 0

    const-string p0, "metricProducer"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
