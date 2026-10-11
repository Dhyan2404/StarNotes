.class public final Lnet/sf/saxon/functions/RoundHalfToEven;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 p0, 0x1

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/NumericValue;

    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p2

    if-lez p2, :cond_1

    return-object p1

    :cond_1
    const-wide/32 v0, -0x80000000

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p2

    if-gez p2, :cond_2

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    :cond_3
    :goto_0
    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/NumericValue;->roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "RoundingCompiler"

    return-object p0
.end method
