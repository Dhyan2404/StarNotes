.class public final Lio/opencensus/trace/samplers/Samplers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/opencensus/trace/Sampler;

.field public static final b:Lio/opencensus/trace/Sampler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ba;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ba;-><init>()V

    sput-object v0, Lio/opencensus/trace/samplers/Samplers;->a:Lio/opencensus/trace/Sampler;

    new-instance v0, Lcom/sunia/HTREnginev2/utj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/utj;-><init>()V

    sput-object v0, Lio/opencensus/trace/samplers/Samplers;->b:Lio/opencensus/trace/Sampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alwaysSample()Lio/opencensus/trace/Sampler;
    .locals 1

    sget-object v0, Lio/opencensus/trace/samplers/Samplers;->a:Lio/opencensus/trace/Sampler;

    return-object v0
.end method

.method public static neverSample()Lio/opencensus/trace/Sampler;
    .locals 1

    sget-object v0, Lio/opencensus/trace/samplers/Samplers;->b:Lio/opencensus/trace/Sampler;

    return-object v0
.end method

.method public static probabilitySampler(D)Lio/opencensus/trace/Sampler;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/y7l;->a(D)Lcom/sunia/HTREnginev2/y7l;

    move-result-object p0

    return-object p0
.end method
