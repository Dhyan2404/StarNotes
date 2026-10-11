.class public abstract Lio/opencensus/metrics/MetricOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/metrics/MetricOptions$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lio/opencensus/metrics/MetricOptions$Builder;
    .locals 2

    new-instance v0, Lio/opencensus/metrics/a$b;

    invoke-direct {v0}, Lio/opencensus/metrics/a$b;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/opencensus/metrics/a$b;->setDescription(Ljava/lang/String;)Lio/opencensus/metrics/MetricOptions$Builder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lio/opencensus/metrics/MetricOptions$Builder;->setUnit(Ljava/lang/String;)Lio/opencensus/metrics/MetricOptions$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/opencensus/metrics/MetricOptions$Builder;->setLabelKeys(Ljava/util/List;)Lio/opencensus/metrics/MetricOptions$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/opencensus/metrics/MetricOptions$Builder;->setConstantLabels(Ljava/util/Map;)Lio/opencensus/metrics/MetricOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getConstantLabels()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/opencensus/metrics/LabelKey;",
            "Lio/opencensus/metrics/LabelValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getLabelKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/LabelKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnit()Ljava/lang/String;
.end method
