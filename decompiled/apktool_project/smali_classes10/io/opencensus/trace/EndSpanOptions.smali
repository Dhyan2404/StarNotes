.class public abstract Lio/opencensus/trace/EndSpanOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/EndSpanOptions$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lio/opencensus/trace/EndSpanOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/opencensus/trace/EndSpanOptions;->builder()Lio/opencensus/trace/EndSpanOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/EndSpanOptions$Builder;->build()Lio/opencensus/trace/EndSpanOptions;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/EndSpanOptions;->DEFAULT:Lio/opencensus/trace/EndSpanOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lio/opencensus/trace/EndSpanOptions$Builder;
    .locals 2

    new-instance v0, Lio/opencensus/trace/e$b;

    invoke-direct {v0}, Lio/opencensus/trace/e$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/opencensus/trace/e$b;->setSampleToLocalSpanStore(Z)Lio/opencensus/trace/EndSpanOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getSampleToLocalSpanStore()Z
.end method

.method public abstract getStatus()Lio/opencensus/trace/Status;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
