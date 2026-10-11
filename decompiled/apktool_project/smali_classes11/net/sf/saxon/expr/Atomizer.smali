.class public final Lnet/sf/saxon/expr/Atomizer;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# static fields
.field public static final STRING_KINDS:Lnet/sf/saxon/type/UType;

.field public static final UNTYPED_IF_UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

.field public static final UNTYPED_KINDS:Lnet/sf/saxon/type/UType;


# instance fields
.field public o:Z

.field public p:Z

.field public q:Lnet/sf/saxon/type/ItemType;

.field public r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    sget-object v1, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/Atomizer;->STRING_KINDS:Lnet/sf/saxon/type/UType;

    sget-object v0, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    sget-object v1, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    sget-object v2, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_IF_UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    iput-object p2, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setFlattened(Z)V

    return-void
.end method

.method public static atomize(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/AtomicSequence;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/EmptySequence;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/om/EmptyAtomicSequence;->getInstance()Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/om/AtomicArray;

    invoke-direct {v0, p0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object v0
.end method

.method public static getAtomizedItemType(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    instance-of p2, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p2

    if-eqz p1, :cond_2

    sget-object p1, Lnet/sf/saxon/expr/Atomizer;->STRING_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_1
    sget-object p1, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_IF_UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_2
    sget-object p1, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p1, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz p1, :cond_7

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    instance-of p0, p0, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz p0, :cond_8

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public static getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/om/AtomizedValueIterator;

    if-eqz v0, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/AxisAtomizingIterator;

    check-cast p0, Lnet/sf/saxon/om/AtomizedValueIterator;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/AxisAtomizingIterator;-><init>(Lnet/sf/saxon/om/AtomizedValueIterator;)V

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    new-instance p1, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;

    invoke-direct {p1, p0}, Lnet/sf/saxon/tree/iter/UntypedAtomizingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/tree/iter/AtomizingIterator;

    invoke-direct {p1, p0}, Lnet/sf/saxon/tree/iter/AtomizingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1
.end method

.method public static makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/Atomizer;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/Atomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-eq p0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setAtomized()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Atomizer;->getOperandItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    const v2, 0xe000

    if-eqz p0, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0

    :cond_3
    instance-of p0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_4

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeSpecialProperties()I

    move-result p0

    const v0, -0x93f0001

    and-int/2addr p0, v0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Atomizer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/expr/Atomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    iget-boolean p1, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    iget-boolean p1, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d(Lnet/sf/saxon/type/TypeHierarchy;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Atomizer;->getOperandItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    sget-object v1, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lnet/sf/saxon/expr/Atomizer;->p:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Found while atomizing the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public emitExtraAttributes(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-eqz p0, :cond_0

    const-string v0, "diag"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->save()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Atomizer;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "data"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-boolean p0, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    invoke-static {v1, p0, v0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizedItemType(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->ATOMIC_SEQUENCE:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Atomizer"

    return-object p0
.end method

.method public isUntyped()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    instance-of v1, v1, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lnet/sf/saxon/expr/Atomizer;->getAtomizingIterator(Lnet/sf/saxon/om/SequenceIterator;Z)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/functions/Error$UserDefinedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-nez v1, :cond_1

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Atomizer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v2

    :catch_1
    move-exception p0

    throw p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/UnaryExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p0, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    instance-of v1, v2, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/ValueOf;->getOptions()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/ValueOf;->convertToCastAsString()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, v2, Lnet/sf/saxon/expr/LetExpression;

    if-nez v1, :cond_9

    instance-of v1, v2, Lnet/sf/saxon/expr/ForExpression;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    instance-of v1, v2, Lnet/sf/saxon/expr/instruct/Choose;

    if-eqz v1, :cond_3

    move-object p0, v2

    check-cast p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->atomizeActions()V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, v2, Lnet/sf/saxon/expr/instruct/Block;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    check-cast v2, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Block;->getOperanda()[Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_4

    new-instance v2, Lnet/sf/saxon/expr/Atomizer;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v2, v4, v5}, Lnet/sf/saxon/expr/Atomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/Block;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean p2, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    const/4 v1, 0x2

    if-eqz p2, :cond_7

    instance-of p2, v2, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz p2, :cond_7

    move-object p2, v2

    check-cast p2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v4

    if-ne v4, v1, :cond_7

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->isContextPossiblyUndefined()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    new-instance p1, Lnet/sf/saxon/expr/AttributeGetter;

    invoke-direct {p1, v2}, Lnet/sf/saxon/expr/AttributeGetter;-><init>(Lnet/sf/saxon/om/FingerprintedQName;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/pattern/NodeTest;

    if-nez p2, :cond_6

    move v3, v1

    :cond_6
    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/AttributeGetter;->setRequiredChecks(I)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_7
    iget-boolean p2, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    if-eqz p2, :cond_a

    instance-of p2, v2, Lnet/sf/saxon/expr/SimpleStepExpression;

    if-eqz p2, :cond_a

    check-cast v2, Lnet/sf/saxon/expr/SimpleStepExpression;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SimpleStepExpression;->getAxisExpression()Lnet/sf/saxon/expr/AxisExpression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p2

    if-ne p2, v1, :cond_a

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SimpleStepExpression;->getAxisExpression()Lnet/sf/saxon/expr/AxisExpression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/pattern/NameTest;

    if-eqz p2, :cond_a

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SimpleStepExpression;->getAxisExpression()Lnet/sf/saxon/expr/AxisExpression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    new-instance p1, Lnet/sf/saxon/expr/AttributeGetter;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/AttributeGetter;-><init>(Lnet/sf/saxon/om/FingerprintedQName;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/pattern/NodeTest;

    if-nez p2, :cond_8

    move v3, v1

    :cond_8
    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/AttributeGetter;->setRequiredChecks(I)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_9
    :goto_1
    move-object v0, v2

    check-cast v0, Lnet/sf/saxon/expr/Assignation;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/expr/Atomizer;

    iget-object p0, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v3, v1, p0}, Lnet/sf/saxon/expr/Atomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/Atomizer;->q:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Atomizer;->r:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Atomizer;->d(Lnet/sf/saxon/type/TypeHierarchy;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v4, v3, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_2

    return-object p0

    :cond_2
    instance-of v4, v3, Lnet/sf/saxon/om/Function;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lnet/sf/saxon/om/Function;

    invoke-interface {v0}, Lnet/sf/saxon/om/Function;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p0

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/Function;->isMap()Z

    move-result v0

    const-string v2, "FOTY0013"

    if-eqz v0, :cond_4

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot atomize a map ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/Atomizer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v3, "Cannot atomize a function item"

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/Atomizer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_5
    return-object v0

    :cond_6
    instance-of v2, v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/ValueOf;->getOptions()I

    move-result v3

    invoke-static {v3, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/ValueOf;->convertToCastAsString()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-boolean p2, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lnet/sf/saxon/expr/Atomizer;->o:Z

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Atomizer;->d(Lnet/sf/saxon/type/TypeHierarchy;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Atomizer;->resetLocalStaticProperties()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Atomizer;->getOperandItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Lnet/sf/saxon/type/ItemType;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-nez p1, :cond_3

    instance-of p1, p2, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz p1, :cond_2

    instance-of p1, p2, Lnet/sf/saxon/ma/map/MapType;

    if-eqz p1, :cond_1

    const-string p1, "map"

    goto :goto_0

    :cond_1
    const-string p1, "function item"

    :goto_0
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot atomize a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Atomizer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOTY0013"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot atomize an element that is defined in the schema to have element-only content"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Atomizer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOTY0012"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/Expression;->setFlattened(Z)V

    return-object p0
.end method
