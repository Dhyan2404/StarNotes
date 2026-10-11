.class public Lnet/sf/saxon/functions/Concat;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/PushableFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Concat;->b(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Concat;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance p0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 4
    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    .line 5
    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p1
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ConcatCompiler"

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    new-array p0, p0, [Lnet/sf/saxon/value/SequenceType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public getRequiredType(I)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p2, Lcom/sunia/HTREnginev2/x7e;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/x7e;-><init>()V

    invoke-static {p3, p2}, Lnet/sf/saxon/expr/oper/OperandArray;->every([Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    const-string v0, "Did you intend to apply string concatenation to boolean operands? Perhaps you intended \'or\' rather than \'||\'. To suppress this warning, use string() on the arguments."

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_0
    new-instance p1, Lnet/sf/saxon/functions/Concat$a;

    invoke-direct {p1, p0, p0, p3}, Lnet/sf/saxon/functions/Concat$a;-><init>(Lnet/sf/saxon/functions/Concat;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/str/UniStringConsumer;->open()V

    array-length p1, p3

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p3, p2

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {p0, v1}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/str/UniStringConsumer;->close()V

    return-void
.end method

.method public resultIfEmpty(I)Lnet/sf/saxon/om/Sequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
