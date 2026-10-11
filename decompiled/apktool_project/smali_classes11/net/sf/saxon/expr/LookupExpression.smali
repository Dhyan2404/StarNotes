.class public Lnet/sf/saxon/expr/LookupExpression;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"


# instance fields
.field protected isArrayLookup:Z

.field protected isMapLookup:Z

.field protected isSingleContainer:Z

.field protected isSingleEntry:Z

.field public p:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    const/16 v0, 0xd5

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->p:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    iput-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    return-void
.end method

.method public static synthetic A(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/LookupExpression;->B(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getInstance()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/LookupExpression;->v(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->t(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->u(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->y(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->A(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static mustBeArrayOrMap(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The items on the LHS of the \'?\' operator must be maps or arrays; but value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") was supplied"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XPTY0004"

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v0
.end method

.method public static synthetic n(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/LookupExpression;->z(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(ILnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/LookupExpression;->r(ILnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->x(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->s(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(ILnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p2, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    invoke-static {p1, p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic s(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/x5j;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/x5j;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/LookupExpression;->B(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/r5j;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/r5j;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic v(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/expr/LookupExpression$a;->a:[I

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-static {p0, p3}, Lnet/sf/saxon/expr/LookupExpression;->mustBeArrayOrMap(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    check-cast p3, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p2, p3, p0}, Lnet/sf/saxon/Configuration;->externalObjectAsMap(Lnet/sf/saxon/value/ObjectValue;Ljava/lang/String;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An item on the LHS of the \'?\' operator is an external object, but a value on the RHS of the operator ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") is not a singleton string"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XPTY0004"

    invoke-direct {p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/q5j;

    invoke-direct {p1, p3}, Lcom/sunia/HTREnginev2/q5j;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p2, Lcom/sunia/HTREnginev2/p5j;

    invoke-direct {p2, p0, p3}, Lcom/sunia/HTREnginev2/p5j;-><init>(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/Item;)V

    invoke-static {p2}, Lnet/sf/saxon/expr/SequenceMapper;->of(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/SequenceMapper;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    return-object p2
.end method

.method public static synthetic x(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v0

    invoke-static {p1, v0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/LookupExpression;->B(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic z(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/IntegerValue;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    invoke-static {p2, p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An item on the LHS of the \'?\' operator ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is an array, but a value on the RHS of the operator ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not an integer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPTY0004"

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p2
.end method


# virtual methods
.method public computeCardinality()I
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    const v1, 0xe000

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v2, v0, Lnet/sf/saxon/ma/map/RecordTest;

    const/16 v3, 0x2000

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/RecordTest;->isExtensible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0

    :cond_3
    instance-of p0, v0, Lnet/sf/saxon/ma/map/MapType;

    if-eqz p0, :cond_4

    check-cast v0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-static {p0, v3}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x416b4bd2

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/LookupExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/LookupExpression;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/LookupExpression;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/LookupExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/LookupExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    iget-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    .line 5
    iget-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    .line 6
    iget-boolean p1, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    iput-boolean p1, v0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    .line 7
    iget-boolean p0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/LookupExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/LookupExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "lookup"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCost()D
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "lookupExp"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v0, :cond_4

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/ma/map/RecordTest;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/RecordTest;->isExtensible()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, v0, Lnet/sf/saxon/ma/map/MapType;

    if-eqz p0, :cond_4

    check-cast v0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole(I)Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->ABSORB:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/LookupExpression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p1

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->asSubscript()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    new-instance v1, Lcom/sunia/HTREnginev2/s5j;

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/s5j;-><init>(ILnet/sf/saxon/value/IntegerValue;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/t5j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/t5j;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v1, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/LookupExpression;->B(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_3
    iget-boolean v0, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    new-instance p1, Lcom/sunia/HTREnginev2/u5j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/u5j;-><init>(Lnet/sf/saxon/value/AtomicValue;)V

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/v5j;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/v5j;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/w5j;

    invoke-direct {v2, p0, p1, v0}, Lcom/sunia/HTREnginev2/w5j;-><init>(Lnet/sf/saxon/expr/LookupExpression;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/Configuration;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/SequenceMapper;->of(Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/SequenceMapper;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p1, v1, p0}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    return-object p1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    instance-of v1, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/StringValue;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    iput-boolean v4, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    instance-of v4, v3, Lnet/sf/saxon/ma/map/TupleType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    instance-of v7, v2, Lnet/sf/saxon/ma/map/TupleType;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v6

    :goto_1
    instance-of v8, v3, Lnet/sf/saxon/ma/map/MapType;

    if-nez v8, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v8, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v6

    :goto_3
    iput-boolean v8, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    sget-object v8, Lnet/sf/saxon/type/AnyExternalObjectType;->THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;

    invoke-virtual {v1, v3, v8}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v1, "use of lookup expressions on external objects"

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/Configuration;->makeObjectLookupExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v8

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_6

    move v8, v6

    goto :goto_4

    :cond_6
    move v8, v5

    :goto_4
    iput-boolean v8, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleContainer:Z

    iget-boolean v8, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    const-string v10, "XPTY0004"

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lnet/sf/saxon/expr/LookupExpression;->isMapLookup:Z

    if-nez v8, :cond_8

    sget-object v8, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {v1, v3, v8}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v8

    sget-object v11, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v8, v11, :cond_8

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v8

    if-ne v8, v11, :cond_8

    sget-object v8, Lnet/sf/saxon/type/AnyExternalObjectType;->THE_INSTANCE:Lnet/sf/saxon/type/AnyExternalObjectType;

    invoke-virtual {v1, v3, v8}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    if-ne v1, v11, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The left-hand operand of \'?\' must be a map or an array; the expression can succeed only if the operand is an empty sequence "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_5

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The left-hand operand of \'?\' must be a map or an array; the supplied expression is of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v6}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "?"

    invoke-direct {p2, v6, v1, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iget-boolean v8, p0, Lnet/sf/saxon/expr/LookupExpression;->isArrayLookup:Z

    if-eqz v8, :cond_9

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v0, v8, v1, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    if-ne p1, v9, :cond_a

    move v5, v6

    :cond_a
    iput-boolean v5, p0, Lnet/sf/saxon/expr/LookupExpression;->isSingleEntry:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_d

    if-eqz v4, :cond_b

    move-object v2, v3

    :cond_b
    check-cast v2, Lnet/sf/saxon/ma/map/TupleType;

    invoke-interface {v2}, Lnet/sf/saxon/ma/map/TupleType;->isExtensible()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lnet/sf/saxon/ma/map/TupleType;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    if-eqz p2, :cond_c

    goto :goto_6

    :cond_c
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not defined in the record type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2

    :cond_d
    :goto_6
    iput-boolean v6, p0, Lnet/sf/saxon/expr/LookupExpression;->p:Z

    return-object p0
.end method
