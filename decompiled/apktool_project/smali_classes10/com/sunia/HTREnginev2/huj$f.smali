.class public final Lcom/sunia/HTREnginev2/huj$f;
.super Lio/opencensus/tags/propagation/TagPropagationComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/huj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/tags/propagation/TagPropagationComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/huj$f;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/huj$f;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/huj$f;->a:Lio/opencensus/tags/propagation/TagPropagationComponent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/tags/propagation/TagPropagationComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinarySerializer()Lio/opencensus/tags/propagation/TagContextBinarySerializer;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->b()Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    move-result-object p0

    return-object p0
.end method

.method public getCorrelationContextFormat()Lio/opencensus/tags/propagation/TagContextTextFormat;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->d()Lio/opencensus/tags/propagation/TagContextTextFormat;

    move-result-object p0

    return-object p0
.end method
