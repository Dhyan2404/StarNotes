.class public Lio/opencensus/contrib/http/util/HttpPropagationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudTraceFormat()Lio/opencensus/trace/propagation/TextFormat;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fwd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fwd;-><init>()V

    return-object v0
.end method
