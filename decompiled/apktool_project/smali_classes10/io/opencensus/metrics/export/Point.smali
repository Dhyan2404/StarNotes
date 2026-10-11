.class public abstract Lio/opencensus/metrics/export/Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/opencensus/metrics/export/Value;Lio/opencensus/common/Timestamp;)Lio/opencensus/metrics/export/Point;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bk;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/bk;-><init>(Lio/opencensus/metrics/export/Value;Lio/opencensus/common/Timestamp;)V

    return-object v0
.end method


# virtual methods
.method public abstract getTimestamp()Lio/opencensus/common/Timestamp;
.end method

.method public abstract getValue()Lio/opencensus/metrics/export/Value;
.end method
