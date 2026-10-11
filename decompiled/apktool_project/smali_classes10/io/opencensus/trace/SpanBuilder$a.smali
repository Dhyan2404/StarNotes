.class public final Lio/opencensus/trace/SpanBuilder$a;
.super Lio/opencensus/trace/SpanBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/SpanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/SpanBuilder;-><init>()V

    const-string p0, "name"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder$a;
    .locals 0
    .param p1    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lio/opencensus/trace/SpanBuilder$a;

    invoke-direct {p1, p0}, Lio/opencensus/trace/SpanBuilder$a;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Ljava/lang/String;Lio/opencensus/trace/SpanContext;)Lio/opencensus/trace/SpanBuilder$a;
    .locals 0
    .param p1    # Lio/opencensus/trace/SpanContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lio/opencensus/trace/SpanBuilder$a;

    invoke-direct {p1, p0}, Lio/opencensus/trace/SpanBuilder$a;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public setParentLinks(Ljava/util/List;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/opencensus/trace/Span;",
            ">;)",
            "Lio/opencensus/trace/SpanBuilder;"
        }
    .end annotation

    return-object p0
.end method

.method public setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;
    .locals 0

    return-object p0
.end method

.method public setSampler(Lio/opencensus/trace/Sampler;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .param p1    # Lio/opencensus/trace/Sampler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public setSpanKind(Lio/opencensus/trace/Span$Kind;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .param p1    # Lio/opencensus/trace/Span$Kind;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-object p0
.end method

.method public startSpan()Lio/opencensus/trace/Span;
    .locals 0

    sget-object p0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    return-object p0
.end method
