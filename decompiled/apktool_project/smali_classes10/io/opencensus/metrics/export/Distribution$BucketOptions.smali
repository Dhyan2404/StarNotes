.class public abstract Lio/opencensus/metrics/export/Distribution$BucketOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/export/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BucketOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/metrics/export/Distribution$BucketOptions$ExplicitOptions;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/metrics/export/Distribution$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/metrics/export/Distribution$BucketOptions;-><init>()V

    return-void
.end method

.method public static explicitOptions(Ljava/util/List;)Lio/opencensus/metrics/export/Distribution$BucketOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lio/opencensus/metrics/export/Distribution$BucketOptions;"
        }
    .end annotation

    invoke-static {p0}, Lio/opencensus/metrics/export/Distribution$BucketOptions$ExplicitOptions;->a(Ljava/util/List;)Lio/opencensus/metrics/export/Distribution$BucketOptions$ExplicitOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/metrics/export/Distribution$BucketOptions$ExplicitOptions;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/metrics/export/Distribution$BucketOptions;",
            "TT;>;)TT;"
        }
    .end annotation
.end method
