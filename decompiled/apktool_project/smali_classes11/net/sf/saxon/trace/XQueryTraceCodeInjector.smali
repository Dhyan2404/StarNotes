.class public Lnet/sf/saxon/trace/XQueryTraceCodeInjector;
.super Lnet/sf/saxon/trace/TraceCodeInjector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/trace/TraceCodeInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public isApplicable(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->isInstruction()Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/expr/LetExpression;

    if-nez p0, :cond_1

    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
