.class public abstract Lio/opencensus/trace/propagation/PropagationComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/propagation/PropagationComponent$b;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/propagation/PropagationComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/trace/propagation/PropagationComponent$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/propagation/PropagationComponent$b;-><init>(Lio/opencensus/trace/propagation/PropagationComponent$a;)V

    sput-object v0, Lio/opencensus/trace/propagation/PropagationComponent;->a:Lio/opencensus/trace/propagation/PropagationComponent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoopPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;
    .locals 1

    sget-object v0, Lio/opencensus/trace/propagation/PropagationComponent;->a:Lio/opencensus/trace/propagation/PropagationComponent;

    return-object v0
.end method


# virtual methods
.method public abstract getB3Format()Lio/opencensus/trace/propagation/TextFormat;
.end method

.method public abstract getBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;
.end method

.method public abstract getTraceContextFormat()Lio/opencensus/trace/propagation/TextFormat;
.end method
