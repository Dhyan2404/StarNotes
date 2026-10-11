.class public final Lio/opencensus/internal/ZeroTimeClock;
.super Lio/opencensus/common/Clock;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/internal/ZeroTimeClock;

.field public static final b:Lio/opencensus/common/Timestamp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/opencensus/internal/ZeroTimeClock;

    invoke-direct {v0}, Lio/opencensus/internal/ZeroTimeClock;-><init>()V

    sput-object v0, Lio/opencensus/internal/ZeroTimeClock;->a:Lio/opencensus/internal/ZeroTimeClock;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/opencensus/common/Timestamp;->create(JI)Lio/opencensus/common/Timestamp;

    move-result-object v0

    sput-object v0, Lio/opencensus/internal/ZeroTimeClock;->b:Lio/opencensus/common/Timestamp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/common/Clock;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/opencensus/internal/ZeroTimeClock;
    .locals 1

    sget-object v0, Lio/opencensus/internal/ZeroTimeClock;->a:Lio/opencensus/internal/ZeroTimeClock;

    return-object v0
.end method


# virtual methods
.method public now()Lio/opencensus/common/Timestamp;
    .locals 0

    sget-object p0, Lio/opencensus/internal/ZeroTimeClock;->b:Lio/opencensus/common/Timestamp;

    return-object p0
.end method

.method public nowNanos()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
