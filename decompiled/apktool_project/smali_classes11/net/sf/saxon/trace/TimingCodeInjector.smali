.class public Lnet/sf/saxon/trace/TimingCodeInjector;
.super Lnet/sf/saxon/trace/TraceCodeInjector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/TraceCodeInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lnet/sf/saxon/trace/TraceableComponent;)V
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/instruct/ComponentTracer;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/ComponentTracer;-><init>(Lnet/sf/saxon/trace/TraceableComponent;)V

    invoke-interface {p1, p0}, Lnet/sf/saxon/trace/TraceableComponent;->setBody(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
