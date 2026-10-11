.class public final Lio/opencensus/trace/config/TraceConfig$b;
.super Lio/opencensus/trace/config/TraceConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/config/TraceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceConfig;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/config/TraceConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/config/TraceConfig$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTraceParams()Lio/opencensus/trace/config/TraceParams;
    .locals 0

    sget-object p0, Lio/opencensus/trace/config/TraceParams;->DEFAULT:Lio/opencensus/trace/config/TraceParams;

    return-object p0
.end method

.method public updateActiveTraceParams(Lio/opencensus/trace/config/TraceParams;)V
    .locals 0

    return-void
.end method
