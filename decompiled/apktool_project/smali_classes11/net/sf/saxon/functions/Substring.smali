.class public Lnet/sf/saxon/functions/Substring;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static substring(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/StringValue;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v0

    .line 2
    instance-of v2, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v2, :cond_1

    .line 3
    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 4
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5

    const-wide/16 v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v2

    if-gtz v2, :cond_3

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v2

    if-lez v2, :cond_4

    .line 9
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    :cond_5
    :goto_0
    cmp-long p1, v2, v0

    if-lez p1, :cond_6

    .line 11
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 12
    :cond_6
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p1
.end method

.method public static substring(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/StringValue;
    .locals 8

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v0

    .line 14
    instance-of v2, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v2, :cond_0

    .line 15
    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    .line 16
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 19
    :cond_1
    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/value/NumericValue;->compareTo(J)I

    move-result v2

    if-lez v2, :cond_2

    .line 20
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 21
    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/32 v2, -0x7fffffff

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 23
    :cond_4
    :goto_0
    instance-of p1, p2, Lnet/sf/saxon/value/Int64Value;

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_5

    .line 24
    check-cast p2, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p2}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide p1

    cmp-long v6, p1, v4

    if-gtz v6, :cond_9

    .line 25
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 26
    :cond_5
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 28
    :cond_6
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result p1

    if-gtz p1, :cond_7

    .line 29
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    .line 30
    :cond_7
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v6

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/32 p1, 0x7fffffff

    goto :goto_1

    .line 32
    :cond_8
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    :cond_9
    :goto_1
    add-long/2addr p1, v2

    cmp-long v6, p1, v2

    if-gez v6, :cond_a

    .line 33
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_a
    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v6, v2

    cmp-long v3, v6, v0

    if-ltz v3, :cond_b

    .line 34
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_b
    long-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-long p1, p1

    .line 35
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    if-gez v2, :cond_d

    cmp-long v0, p1, v4

    if-gez v0, :cond_c

    .line 36
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_c
    const/4 v2, 0x0

    .line 37
    :cond_d
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Substring;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 4
    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    .line 5
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {p0, p1}, Lnet/sf/saxon/functions/Substring;->substring(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    .line 8
    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/Substring;->substring(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SubstringCompiler"

    return-object p0
.end method

.method public typeCheckCaller(Lnet/sf/saxon/expr/FunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->typeCheckCaller(Lnet/sf/saxon/expr/FunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    if-eq p3, p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/functions/Number_1;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v3, v4}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, p3, v0}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 p3, 0x2

    if-le p0, p3, :cond_2

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p3, p0}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-object p1
.end method
