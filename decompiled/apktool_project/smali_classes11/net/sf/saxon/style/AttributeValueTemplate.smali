.class public abstract Lnet/sf/saxon/style/AttributeValueTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-ge p2, p3, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lnet/sf/saxon/expr/Expression;)Z
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/IntegerValue;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_1

    invoke-interface {p0, v2}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static c(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_b

    const-string v6, "{"

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "{{"

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "}"

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "}}"

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v6, :cond_0

    if-ge v2, v6, :cond_1

    :cond_0
    if-ltz v8, :cond_a

    if-ge v2, v8, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ltz v8, :cond_4

    if-ltz v6, :cond_2

    if-ge v8, v6, :cond_4

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v5, v8, 0x1

    invoke-static {v1, p0, v4, v5}, Lnet/sf/saxon/style/AttributeValueTemplate;->a(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 v4, v8, 0x2

    goto :goto_0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing curly brace in attribute value template \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" must be doubled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "XTSE0370"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p1

    :cond_4
    if-ltz v7, :cond_5

    if-ne v7, v6, :cond_5

    add-int/lit8 v5, v7, 0x1

    invoke-static {v1, p0, v4, v5}, Lnet/sf/saxon/style/AttributeValueTemplate;->a(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 v4, v7, 0x2

    goto :goto_0

    :cond_5
    if-ltz v6, :cond_9

    if-le v6, v4, :cond_6

    invoke-static {v1, p0, v4, v6}, Lnet/sf/saxon/style/AttributeValueTemplate;->a(Ljava/util/List;Ljava/lang/String;II)V

    :cond_6
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    const-string v7, "XP"

    invoke-virtual {v4, v7, v3, v0}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v4

    sget-object v7, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XPATH:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    const/16 v8, 0x1f

    invoke-virtual {v4, v7, v8}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/parser/XPathParser;->setAllowAbsentExpression(Z)V

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0xd7

    invoke-virtual {v4, p0, v6, v7, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parse(Ljava/lang/String;IILnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/XPathParser;->getTokenizer()Lnet/sf/saxon/expr/parser/Tokenizer;

    move-result-object v4

    iget v4, v4, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    add-int/2addr v4, v5

    instance-of v5, p1, Lnet/sf/saxon/style/ExpressionContext;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/style/XSLAnalyzeString;

    if-eqz v5, :cond_7

    invoke-static {v6}, Lnet/sf/saxon/style/AttributeValueTemplate;->b(Lnet/sf/saxon/expr/Expression;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lnet/sf/saxon/style/AttributeValueTemplate;->c(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "} in regex attribute: perhaps {{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lnet/sf/saxon/style/AttributeValueTemplate;->c(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}} was intended? (The attribute is an AVT, so curly braces should be doubled)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_7
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v6, p1}, Lnet/sf/saxon/style/AttributeValueTemplate;->makeFirstItem(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v5, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v7, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v5, v7}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-static {v6, v5, p1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->makeSimpleContentConstructor(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error parsing AVT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    invoke-static {v1, p0, v4, v2}, Lnet/sf/saxon/style/AttributeValueTemplate;->a(Ljava/util/List;Ljava/lang/String;II)V

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    goto :goto_2

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_d

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const-string v1, "concat"

    invoke-static {v1, v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object p0
.end method

.method public static makeFirstItem(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {v0, p0, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    move-object p0, v0

    :cond_3
    return-object p0
.end method
