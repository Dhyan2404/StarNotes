.class public final Lnet/sf/saxon/functions/Floor;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->floor()Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "RoundingCompiler"

    return-object p0
.end method
