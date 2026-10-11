.class public Lnet/sf/saxon/functions/LocalName_1;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "LocalNameCompiler"

    return-object p0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0
.end method
