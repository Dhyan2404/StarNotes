.class public Lnet/sf/saxon/functions/IndexOf;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/IndexOf$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getAtomicComparer(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/functions/IndexOf$a;

    invoke-direct {v1, p1, v0, p2, p0}, Lnet/sf/saxon/functions/IndexOf$a;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    invoke-static {v1}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/value/IntegerValue;

    const/4 v0, 0x0

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lnet/sf/saxon/expr/Expression;->MAX_SEQUENCE_LENGTH:Lnet/sf/saxon/value/IntegerValue;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "IndexOf"

    return-object p0
.end method

.method public supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p3

    instance-of v0, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lnet/sf/saxon/type/AtomicType;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    check-cast p3, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->preAllocateComparer(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/expr/StaticContext;)V

    :cond_0
    return-void
.end method
