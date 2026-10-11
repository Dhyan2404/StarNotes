.class public Lnet/sf/saxon/functions/NamespaceUri_1;
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

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "NamespaceUriFnCompiler"

    return-object p0
.end method

.method public bridge synthetic resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/NamespaceUri_1;->resultWhenEmpty()Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/value/AnyURIValue;
    .locals 1

    .line 2
    new-instance p0, Lnet/sf/saxon/value/AnyURIValue;

    const-string v0, ""

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
