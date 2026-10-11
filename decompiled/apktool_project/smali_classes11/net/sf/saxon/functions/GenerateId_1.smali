.class public Lnet/sf/saxon/functions/GenerateId_1;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method

.method public static generateId(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/value/StringValue;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p0
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

    invoke-static {p1}, Lnet/sf/saxon/functions/GenerateId_1;->generateId(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "GenerateIdCompiler"

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method

.method public resultWhenEmpty()Lnet/sf/saxon/om/Sequence;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0
.end method
