.class public Lnet/sf/saxon/expr/AtomicSequenceConverter;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;,
        Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;
    }
.end annotation


# static fields
.field public static TO_STRING_MAPPER:Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;


# instance fields
.field protected converter:Lnet/sf/saxon/type/Converter;

.field public o:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

.field protected requiredItemType:Lnet/sf/saxon/type/PlainType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;

    invoke-direct {v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->TO_STRING_MAPPER:Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    return-void
.end method

.method public static makeDownCaster(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/AtomicSequenceConverter;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    new-instance p0, Lnet/sf/saxon/type/Converter$DownCastingConverter;

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/type/Converter$DownCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    return-object v0
.end method


# virtual methods
.method public allocateConverter(Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/type/Converter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;ZLnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    return-object p0
.end method

.method public allocateConverter(Lnet/sf/saxon/Configuration;ZLnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Converter;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    .line 3
    instance-of v0, p3, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_0

    .line 4
    sget-object p3, Lnet/sf/saxon/type/Converter$IdentityConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$IdentityConverter;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p3, Lnet/sf/saxon/type/AtomicType;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    move-object p3, v1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    instance-of v2, v0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_3

    .line 7
    check-cast p3, Lnet/sf/saxon/type/AtomicType;

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, p3, v0}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p3

    goto :goto_0

    .line 8
    :cond_3
    check-cast v0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/type/SimpleType;->isUnionType()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    new-instance p3, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;

    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-direct {p3, v0, p1}, Lnet/sf/saxon/type/StringConverter$StringToUnionConverter;-><init>(Lnet/sf/saxon/type/PlainType;Lnet/sf/saxon/lib/ConversionRules;)V

    :goto_0
    if-nez p3, :cond_4

    if-nez p2, :cond_4

    .line 10
    new-instance p3, Lnet/sf/saxon/expr/AtomicSequenceConverter$a;

    invoke-direct {p3, p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter$a;-><init>(Lnet/sf/saxon/expr/AtomicSequenceConverter;Lnet/sf/saxon/lib/ConversionRules;)V

    :cond_4
    return-object p3
.end method

.method public allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;ZLnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    return-void
.end method

.method public computeCardinality()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeHashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeSpecialProperties()I

    move-result v0

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v1, :cond_0

    const p0, -0x4000001

    and-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x4000000

    or-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

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

    const-string p0, "convert"

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    check-cast p1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    iget-object p1, p1, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getConverterDynamically(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/type/Converter;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->o:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-eqz p0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "convert"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    instance-of v1, v0, Lnet/sf/saxon/type/Converter$PromoterToDouble;

    if-nez v1, :cond_0

    instance-of v0, v0, Lnet/sf/saxon/type/Converter$PromoterToFloat;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flags"

    const-string v1, "p"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->save()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diag"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getConverter()Lnet/sf/saxon/type/Converter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    return-object p0
.end method

.method public getConverterDynamically(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/type/Converter;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "convert"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRequiredItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    return-object p0
.end method

.method public getRoleDiagnostic()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->o:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "AtomicSequenceConverter"

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getConverterDynamically(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/type/Converter$ToStringConverter;->INSTANCE:Lnet/sf/saxon/type/Converter$ToStringConverter;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    sget-object p1, Lnet/sf/saxon/expr/AtomicSequenceConverter;->TO_STRING_MAPPER:Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;

    invoke-direct {p0, v0, p1, v2}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object p0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;

    invoke-direct {v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;-><init>()V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->setConverter(Lnet/sf/saxon/type/Converter;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->o:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->setErrorCode(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {p0, v0, v1, v2}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;Z)V

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/UnaryExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v2, :cond_2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v1, v3, :cond_8

    :cond_2
    if-eq v0, v2, :cond_3

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_8

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    new-instance v1, Lnet/sf/saxon/expr/UntypedSequenceConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/expr/UntypedSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v2, :cond_6

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v1, v3, :cond_8

    :cond_6
    if-eq v0, v2, :cond_7

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    new-instance v1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public setConverter(Lnet/sf/saxon/type/Converter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    return-void
.end method

.method public setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "XPTY0004"

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->o:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    :cond_0
    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    instance-of v1, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    instance-of v1, v1, Lnet/sf/saxon/type/AtomicType;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    if-eqz v2, :cond_2

    new-instance v2, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p2, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->converter:Lnet/sf/saxon/type/Converter;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverterStatically(Lnet/sf/saxon/Configuration;Z)V

    :cond_1
    return-object p0
.end method
