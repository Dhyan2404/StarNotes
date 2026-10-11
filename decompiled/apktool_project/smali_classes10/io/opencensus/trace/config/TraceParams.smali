.class public abstract Lio/opencensus/trace/config/TraceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/config/TraceParams$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lio/opencensus/trace/config/TraceParams;

.field public static final a:D = 1.0E-4

.field public static final b:Lio/opencensus/trace/Sampler;

.field public static final c:I = 0x20

.field public static final d:I = 0x20

.field public static final e:I = 0x80

.field public static final f:I = 0x20


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    invoke-static {v0, v1}, Lio/opencensus/trace/samplers/Samplers;->probabilitySampler(D)Lio/opencensus/trace/Sampler;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/config/TraceParams;->b:Lio/opencensus/trace/Sampler;

    invoke-static {}, Lio/opencensus/trace/config/TraceParams;->a()Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/opencensus/trace/config/TraceParams$Builder;->setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lio/opencensus/trace/config/TraceParams$Builder;->setMaxNumberOfAttributes(I)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/opencensus/trace/config/TraceParams$Builder;->setMaxNumberOfAnnotations(I)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lio/opencensus/trace/config/TraceParams$Builder;->setMaxNumberOfMessageEvents(I)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/opencensus/trace/config/TraceParams$Builder;->setMaxNumberOfLinks(I)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/trace/config/TraceParams$Builder;->build()Lio/opencensus/trace/config/TraceParams;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/config/TraceParams;->DEFAULT:Lio/opencensus/trace/config/TraceParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 1

    new-instance v0, Lio/opencensus/trace/config/a$b;

    invoke-direct {v0}, Lio/opencensus/trace/config/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getMaxNumberOfAnnotations()I
.end method

.method public abstract getMaxNumberOfAttributes()I
.end method

.method public abstract getMaxNumberOfLinks()I
.end method

.method public abstract getMaxNumberOfMessageEvents()I
.end method

.method public getMaxNumberOfNetworkEvents()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfMessageEvents()I

    move-result p0

    return p0
.end method

.method public abstract getSampler()Lio/opencensus/trace/Sampler;
.end method

.method public abstract toBuilder()Lio/opencensus/trace/config/TraceParams$Builder;
.end method
