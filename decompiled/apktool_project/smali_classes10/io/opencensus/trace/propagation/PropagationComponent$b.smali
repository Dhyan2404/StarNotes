.class public final Lio/opencensus/trace/propagation/PropagationComponent$b;
.super Lio/opencensus/trace/propagation/PropagationComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/propagation/PropagationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/PropagationComponent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/propagation/PropagationComponent$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/propagation/PropagationComponent$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getB3Format()Lio/opencensus/trace/propagation/TextFormat;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/propagation/TextFormat;->a()Lio/opencensus/trace/propagation/TextFormat;

    move-result-object p0

    return-object p0
.end method

.method public getBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/propagation/BinaryFormat;->a()Lio/opencensus/trace/propagation/BinaryFormat;

    move-result-object p0

    return-object p0
.end method

.method public getTraceContextFormat()Lio/opencensus/trace/propagation/TextFormat;
    .locals 0

    invoke-static {}, Lio/opencensus/trace/propagation/TextFormat;->a()Lio/opencensus/trace/propagation/TextFormat;

    move-result-object p0

    return-object p0
.end method
