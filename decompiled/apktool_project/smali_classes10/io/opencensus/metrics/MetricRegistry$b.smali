.class public final Lio/opencensus/metrics/MetricRegistry$b;
.super Lio/opencensus/metrics/MetricRegistry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/MetricRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/metrics/MetricRegistry;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/metrics/MetricRegistry$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/metrics/MetricRegistry$b;-><init>()V

    return-void
.end method


# virtual methods
.method public addDerivedDoubleCumulative(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DerivedDoubleCumulative;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DerivedDoubleCumulative;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DerivedDoubleCumulative;

    move-result-object p0

    return-object p0
.end method

.method public addDerivedDoubleGauge(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DerivedDoubleGauge;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DerivedDoubleGauge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DerivedDoubleGauge;

    move-result-object p0

    return-object p0
.end method

.method public addDerivedLongCumulative(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DerivedLongCumulative;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DerivedLongCumulative;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DerivedLongCumulative;

    move-result-object p0

    return-object p0
.end method

.method public addDerivedLongGauge(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DerivedLongGauge;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DerivedLongGauge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DerivedLongGauge;

    move-result-object p0

    return-object p0
.end method

.method public addDoubleCumulative(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DoubleCumulative;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DoubleCumulative;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DoubleCumulative;

    move-result-object p0

    return-object p0
.end method

.method public addDoubleGauge(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/DoubleGauge;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/DoubleGauge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/DoubleGauge;

    move-result-object p0

    return-object p0
.end method

.method public addLongCumulative(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/LongCumulative;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/LongCumulative;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/LongCumulative;

    move-result-object p0

    return-object p0
.end method

.method public addLongGauge(Ljava/lang/String;Lio/opencensus/metrics/MetricOptions;)Lio/opencensus/metrics/LongGauge;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/opencensus/metrics/MetricOptions;->getLabelKeys()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lio/opencensus/metrics/LongGauge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/opencensus/metrics/LongGauge;

    move-result-object p0

    return-object p0
.end method
