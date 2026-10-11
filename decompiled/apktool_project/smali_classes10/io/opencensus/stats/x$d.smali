.class public final Lio/opencensus/stats/x$d;
.super Lio/opencensus/stats/StatsRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/stats/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/stats/StatsRecorder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/stats/x$d;

    invoke-direct {v0}, Lio/opencensus/stats/x$d;-><init>()V

    sput-object v0, Lio/opencensus/stats/x$d;->a:Lio/opencensus/stats/StatsRecorder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/stats/StatsRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public newMeasureMap()Lio/opencensus/stats/MeasureMap;
    .locals 0

    invoke-static {}, Lio/opencensus/stats/x;->b()Lio/opencensus/stats/MeasureMap;

    move-result-object p0

    return-object p0
.end method
