.class public Lnet/sf/saxon/functions/StringJoin;
.super Lnet/sf/saxon/functions/FoldingFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/PushableFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/StringJoin$a;
    }
.end annotation


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/FoldingFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/functions/StringJoin;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    check-cast p1, Lnet/sf/saxon/functions/StringJoin;

    iget-boolean p1, p1, Lnet/sf/saxon/functions/StringJoin;->h:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x6000

    return p0

    :cond_0
    const/16 p0, 0x4000

    return p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "StringJoinCompiler"

    return-object p0
.end method

.method public varargs getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p1

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :cond_0
    new-instance p2, Lnet/sf/saxon/functions/StringJoin$a;

    iget-boolean p0, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/functions/StringJoin$a;-><init>(Lnet/sf/saxon/str/UnicodeString;Z)V

    return-object p2
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/functions/SystemFunction;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x5000000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public isReturnEmptyIfEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    return p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    aget-object p2, p3, p1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p2

    if-nez p2, :cond_2

    aget-object p2, p3, p1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, p3, p1

    return-object p0

    :cond_2
    :goto_0
    iget-boolean p2, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    new-instance p0, Lnet/sf/saxon/expr/CastExpression;

    aget-object p1, p3, p1

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    new-array p2, v0, [Lnet/sf/saxon/expr/Expression;

    aget-object p3, p3, p1

    aput-object p3, p2, p1

    const-string p1, "string"

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p0, p3

    const/4 p2, 0x1

    if-le p0, p2, :cond_0

    aget-object p0, p3, p2

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    :goto_0
    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/str/UniStringConsumer;->open()V

    aget-object p3, p3, v1

    invoke-interface {p3}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p3

    :goto_1
    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_2

    :cond_1
    invoke-interface {p1, p0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :goto_2
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/str/UniStringConsumer;->close()V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public setReturnEmptyIfEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/functions/StringJoin;->h:Z

    return-void
.end method
