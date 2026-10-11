.class public Lnet/sf/saxon/expr/compat/TypeChecker10;
.super Lnet/sf/saxon/expr/parser/TypeChecker;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/TypeChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public makeArithmeticExpression(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/compat/ArithmeticExpression10;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/compat/ArithmeticExpression10;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public makeGeneralComparison(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/compat/GeneralComparison10;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public processValueOf(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    move-object p1, p0

    :cond_2
    return-object p1
.end method

.method public staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->implementsStaticTypeCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1, p3, p4}, Lnet/sf/saxon/expr/Expression;->staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v4

    invoke-static {v4}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    new-array p2, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p2, v6

    const-string p3, "string"

    invoke-static {p3, p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    new-instance p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    new-array p2, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p2, v6

    const-string p3, "number"

    invoke-static {p3, p0, p2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :try_start_1
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
.end method
