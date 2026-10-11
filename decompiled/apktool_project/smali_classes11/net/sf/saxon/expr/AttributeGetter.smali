.class public final Lnet/sf/saxon/expr/AttributeGetter;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# static fields
.field public static final CHECK_CONTEXT_ITEM_IS_NODE:I = 0x2

.field public static final synthetic p:Z


# instance fields
.field public final n:Lnet/sf/saxon/om/FingerprintedQName;

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/FingerprintedQName;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/sf/saxon/expr/AttributeGetter;->o:I

    iput-object p1, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    move-object p2, v0

    :cond_0
    new-instance p1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0, p0}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    invoke-virtual {p2, v1, p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x6000

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->hashCode()I

    move-result p0

    const v0, 0x14673

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    const/high16 p0, 0x800000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/AttributeGetter;
    .locals 1

    .line 2
    new-instance p1, Lnet/sf/saxon/expr/AttributeGetter;

    iget-object v0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/AttributeGetter;-><init>(Lnet/sf/saxon/om/FingerprintedQName;)V

    .line 3
    iget p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->o:I

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/AttributeGetter;->setRequiredChecks(I)V

    return-object p1
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AttributeGetter;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/AttributeGetter;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/AttributeGetter;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/AttributeGetter;

    iget-object p1, p1, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/FingerprintedQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getFingerprint()I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v1, "XPDY0002"

    const-string v3, "The context item for @"

    if-nez v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v5}, Lnet/sf/saxon/om/FingerprintedQName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is absent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1, p1}, Lnet/sf/saxon/expr/Expression;->dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_2
    instance-of v4, v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v3}, Lnet/sf/saxon/om/FingerprintedQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a node"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_3
    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/FingerprintedQName;->getURI()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    :cond_5
    :goto_1
    return-object v2
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    const-string v0, "attVal"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/FingerprintedQName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->o:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "chk"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAttributeName()Lnet/sf/saxon/om/FingerprintedQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "attGetter"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getRequiredChecks()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->o:I

    return p0
.end method

.method public setRequiredChecks(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/AttributeGetter;->o:I

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data(@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/AttributeGetter;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/FingerprintedQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
