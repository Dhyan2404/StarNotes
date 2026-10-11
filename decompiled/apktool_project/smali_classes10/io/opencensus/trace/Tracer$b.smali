.class public final Lio/opencensus/trace/Tracer$b;
.super Lio/opencensus/trace/Tracer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/Tracer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/opencensus/trace/Tracer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/Tracer$b;-><init>()V

    return-void
.end method


# virtual methods
.method public spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .param p2    # Lio/opencensus/trace/Span;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/opencensus/trace/SpanBuilder$a;->a(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder$a;

    move-result-object p0

    return-object p0
.end method

.method public spanBuilderWithRemoteParent(Ljava/lang/String;Lio/opencensus/trace/SpanContext;)Lio/opencensus/trace/SpanBuilder;
    .locals 0
    .param p2    # Lio/opencensus/trace/SpanContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/opencensus/trace/SpanBuilder$a;->b(Ljava/lang/String;Lio/opencensus/trace/SpanContext;)Lio/opencensus/trace/SpanBuilder$a;

    move-result-object p0

    return-object p0
.end method
