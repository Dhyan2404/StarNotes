.class public Lnet/sf/saxon/expr/FilterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/FilterIterator$NonNumeric;
    }
.end annotation


# instance fields
.field protected base:Lnet/sf/saxon/om/FocusIterator;

.field protected filter:Lnet/sf/saxon/expr/Expression;

.field protected filterContext:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/expr/FilterIterator;->filter:Lnet/sf/saxon/expr/Expression;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/FilterIterator;->filterContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    return-void
.end method

.method public static testPredicateValue(Lnet/sf/saxon/om/SequenceIterator;JLnet/sf/saxon/expr/Expression;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    instance-of v2, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "a sequence of two or more items starting with a boolean"

    invoke-static {p0, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_3
    instance-of v2, v0, Lnet/sf/saxon/value/StringValue;

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p0, "a sequence of two or more items starting with a string"

    invoke-static {p0, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_5
    instance-of v2, v0, Lnet/sf/saxon/value/Int64Value;

    const-string v4, "a sequence of two or more items starting with a numeric value"

    if-eqz v2, :cond_8

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {v4, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_6
    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v4

    cmp-long p0, v4, p1

    if-nez p0, :cond_7

    move v1, v3

    :cond_7
    return v1

    :cond_8
    instance-of v2, v0, Lnet/sf/saxon/value/NumericValue;

    if-eqz v2, :cond_b

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {v4, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_9
    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result p0

    if-nez p0, :cond_a

    move v1, v3

    :cond_a
    return v1

    :cond_b
    instance-of p0, v0, Lnet/sf/saxon/value/AtomicValue;

    const-string p1, ")"

    const-string p2, " ("

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with an atomic value of type "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return v1

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a sequence starting with "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->describeGenre(Lnet/sf/saxon/om/Genre;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->ebvError(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getNextMatchingItem()Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterIterator;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public matches()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/FilterIterator;->filter:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/expr/FilterIterator;->filterContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v1}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result v1

    int-to-long v1, v1

    iget-object p0, p0, Lnet/sf/saxon/expr/FilterIterator;->filter:Lnet/sf/saxon/expr/Expression;

    invoke-static {v0, v1, v2, p0}, Lnet/sf/saxon/expr/FilterIterator;->testPredicateValue(Lnet/sf/saxon/om/SequenceIterator;JLnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FilterIterator;->getNextMatchingItem()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public setSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/FilterIterator;->filterContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/FilterIterator;->base:Lnet/sf/saxon/om/FocusIterator;

    return-void
.end method
