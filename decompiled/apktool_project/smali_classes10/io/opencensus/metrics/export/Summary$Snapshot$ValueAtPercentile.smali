.class public abstract Lio/opencensus/metrics/export/Summary$Snapshot$ValueAtPercentile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/export/Summary$Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ValueAtPercentile"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(DD)Lio/opencensus/metrics/export/Summary$Snapshot$ValueAtPercentile;
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v2, v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpg-double v2, p0, v5

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "percentile must be in the interval (0.0, 100.0]"

    invoke-static {v2, v5}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "value must be non-negative"

    invoke-static {v3, v0}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lio/opencensus/metrics/export/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/opencensus/metrics/export/g;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public abstract getPercentile()D
.end method

.method public abstract getValue()D
.end method
