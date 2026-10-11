.class public abstract Lio/opencensus/metrics/export/Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/metrics/export/Value$d;,
        Lio/opencensus/metrics/export/Value$a;,
        Lio/opencensus/metrics/export/Value$c;,
        Lio/opencensus/metrics/export/Value$b;
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

.method public static distributionValue(Lio/opencensus/metrics/export/Distribution;)Lio/opencensus/metrics/export/Value;
    .locals 0

    invoke-static {p0}, Lio/opencensus/metrics/export/Value$a;->a(Lio/opencensus/metrics/export/Distribution;)Lio/opencensus/metrics/export/Value$a;

    move-result-object p0

    return-object p0
.end method

.method public static doubleValue(D)Lio/opencensus/metrics/export/Value;
    .locals 0

    invoke-static {p0, p1}, Lio/opencensus/metrics/export/Value$b;->a(D)Lio/opencensus/metrics/export/Value$b;

    move-result-object p0

    return-object p0
.end method

.method public static longValue(J)Lio/opencensus/metrics/export/Value;
    .locals 0

    invoke-static {p0, p1}, Lio/opencensus/metrics/export/Value$c;->a(J)Lio/opencensus/metrics/export/Value$c;

    move-result-object p0

    return-object p0
.end method

.method public static summaryValue(Lio/opencensus/metrics/export/Summary;)Lio/opencensus/metrics/export/Value;
    .locals 0

    invoke-static {p0}, Lio/opencensus/metrics/export/Value$d;->a(Lio/opencensus/metrics/export/Summary;)Lio/opencensus/metrics/export/Value$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Double;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/metrics/export/Distribution;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/metrics/export/Summary;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Lio/opencensus/metrics/export/Value;",
            "TT;>;)TT;"
        }
    .end annotation
.end method
