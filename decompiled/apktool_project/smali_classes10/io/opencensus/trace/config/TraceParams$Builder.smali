.class public abstract Lio/opencensus/trace/config/TraceParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/config/TraceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/config/TraceParams;
.end method

.method public build()Lio/opencensus/trace/config/TraceParams;
    .locals 4

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams$Builder;->a()Lio/opencensus/trace/config/TraceParams;

    move-result-object p0

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAttributes()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "maxNumberOfAttributes"

    invoke-static {v0, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfAnnotations()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "maxNumberOfAnnotations"

    invoke-static {v0, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfMessageEvents()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "maxNumberOfMessageEvents"

    invoke-static {v0, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/opencensus/trace/config/TraceParams;->getMaxNumberOfLinks()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const-string v0, "maxNumberOfLinks"

    invoke-static {v1, v0}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public abstract setMaxNumberOfAnnotations(I)Lio/opencensus/trace/config/TraceParams$Builder;
.end method

.method public abstract setMaxNumberOfAttributes(I)Lio/opencensus/trace/config/TraceParams$Builder;
.end method

.method public abstract setMaxNumberOfLinks(I)Lio/opencensus/trace/config/TraceParams$Builder;
.end method

.method public abstract setMaxNumberOfMessageEvents(I)Lio/opencensus/trace/config/TraceParams$Builder;
.end method

.method public setMaxNumberOfNetworkEvents(I)Lio/opencensus/trace/config/TraceParams$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/opencensus/trace/config/TraceParams$Builder;->setMaxNumberOfMessageEvents(I)Lio/opencensus/trace/config/TraceParams$Builder;

    move-result-object p0

    return-object p0
.end method

.method public abstract setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/config/TraceParams$Builder;
.end method
