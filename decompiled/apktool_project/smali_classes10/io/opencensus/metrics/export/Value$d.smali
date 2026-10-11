.class public abstract Lio/opencensus/metrics/export/Value$d;
.super Lio/opencensus/metrics/export/Value;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/metrics/export/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/metrics/export/Value;-><init>()V

    return-void
.end method

.method public static a(Lio/opencensus/metrics/export/Summary;)Lio/opencensus/metrics/export/Value$d;
    .locals 1

    new-instance v0, Lio/opencensus/metrics/export/k;

    invoke-direct {v0, p0}, Lio/opencensus/metrics/export/k;-><init>(Lio/opencensus/metrics/export/Summary;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lio/opencensus/metrics/export/Summary;
.end method

.method public final match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0}, Lio/opencensus/metrics/export/Value$d;->b()Lio/opencensus/metrics/export/Summary;

    move-result-object p0

    invoke-interface {p4, p0}, Lio/opencensus/common/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
