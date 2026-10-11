.class public abstract Lio/opencensus/metrics/export/Distribution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/metrics/export/Distribution$Bucket;,
        Lio/opencensus/metrics/export/Distribution$BucketOptions;
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

.method public static create(JDDLio/opencensus/metrics/export/Distribution$BucketOptions;Ljava/util/List;)Lio/opencensus/metrics/export/Distribution;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JDD",
            "Lio/opencensus/metrics/export/Distribution$BucketOptions;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Distribution$Bucket;",
            ">;)",
            "Lio/opencensus/metrics/export/Distribution;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "count should be non-negative."

    invoke-static {v3, v4}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmpl-double v5, p4, v3

    if-ltz v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const-string v7, "sum of squared deviations should be non-negative."

    invoke-static {v6, v7}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    if-nez v0, :cond_4

    cmpl-double v0, p2, v3

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "sum should be 0 if count is 0."

    invoke-static {v0, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const-string v0, "sum of squared deviations should be 0 if count is 0."

    invoke-static {v1, v0}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    :cond_4
    const-string v0, "bucketOptions"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "buckets"

    move-object/from16 v3, p7

    invoke-static {v3, v2}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    const-string v0, "bucket"

    invoke-static {v10, v0}, Lio/opencensus/internal/Utils;->checkListElementNotNull(Ljava/util/List;Ljava/lang/Object;)V

    new-instance v0, Lio/opencensus/metrics/export/a;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lio/opencensus/metrics/export/a;-><init>(JDDLio/opencensus/metrics/export/Distribution$BucketOptions;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getBucketOptions()Lio/opencensus/metrics/export/Distribution$BucketOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBuckets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Distribution$Bucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()J
.end method

.method public abstract getSum()D
.end method

.method public abstract getSumOfSquaredDeviations()D
.end method
