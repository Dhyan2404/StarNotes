.class public final Lnet/sf/saxon/expr/UntypedSequenceConverter;
.super Lnet/sf/saxon/expr/AtomicSequenceConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    return-void
.end method

.method public static makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/UntypedSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object p1

    if-ne p2, p1, :cond_1

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    iput-object p2, v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;-><init>(Lnet/sf/saxon/type/PlainType;Lnet/sf/saxon/lib/ConversionRules;)V

    :goto_0
    new-instance p2, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;-><init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/Converter;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    return-object v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot convert untyped atomic values to a namespace-sensitive type"

    const-string p2, "XPTY0117"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static makeUntypedSequenceRejector(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/UntypedSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    new-instance v1, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;

    invoke-direct {v1, p2, p1}, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;-><init>(Lnet/sf/saxon/type/PlainType;Lnet/sf/saxon/expr/Expression;)V

    new-instance p1, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;-><init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/Converter;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    return-object v0
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->computeHashCode()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    const/high16 v0, 0x4000000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRequiredItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/expr/UntypedSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v0
.end method

.method public displayOperator(Lnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 0

    const-string p0, "convertUntyped"

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "cvUntyped"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRequiredItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->save()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diag"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "convertUntyped"

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRequiredItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRequiredItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v0, :cond_2

    const/high16 p1, 0x4000000

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
