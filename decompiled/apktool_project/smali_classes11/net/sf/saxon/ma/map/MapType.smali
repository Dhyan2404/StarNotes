.class public Lnet/sf/saxon/ma/map/MapType;
.super Lnet/sf/saxon/type/AnyFunctionType;
.source "SourceFile"


# static fields
.field public static final ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

.field public static final EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

.field public static final OPTIONAL_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;

.field public static final SEQUENCE_OF_MAPS:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;


# instance fields
.field public final e:Lnet/sf/saxon/type/AtomicType;

.field public final f:Lnet/sf/saxon/value/SequenceType;

.field public final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/ma/map/MapType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    new-instance v3, Lnet/sf/saxon/ma/map/MapType;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Z)V

    sput-object v3, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v1, 0x6000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/ma/map/MapType;->OPTIONAL_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/ma/map/MapType;->SINGLE_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;

    const v1, 0xe000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/ma/map/MapType;->SEQUENCE_OF_MAPS:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    .line 3
    iput-object p2, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/sf/saxon/ma/map/MapType;->g:Z

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    .line 8
    iput-boolean p3, p0, Lnet/sf/saxon/ma/map/MapType;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/sf/saxon/ma/map/MapType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lnet/sf/saxon/ma/map/MapType;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    iget-object v3, p1, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v3, p1, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lnet/sf/saxon/ma/map/MapType;->g:Z

    iget-boolean p1, p1, Lnet/sf/saxon/ma/map/MapType;->g:Z

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v1, v2, p2}, Lnet/sf/saxon/type/PlainType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The map contains a key ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->show()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") of type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " that is not an instance of the required type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v2, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v1, v2, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The map contains an entry with key ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->show()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") whose corresponding value ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is not an instance of the required type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/value/SequenceType;->explainMismatch(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    filled-new-array {p0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "FM"

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getNormalizedDefaultPriority()D

    move-result-wide v0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getNormalizedDefaultPriority()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->MAP:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getKeyType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    return-object p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getValueType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isArrayType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMapType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/ma/map/MapType;->g:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v0, p0, p2}, Lnet/sf/saxon/ma/map/MapItem;->conforms(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method

.method public relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/MapType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p1, v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/ma/map/RecordTest;

    if-eqz v0, :cond_4

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/type/FunctionItemType;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/TypeHierarchy;->inverseRelationship(Lnet/sf/saxon/type/Affinity;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_e

    check-cast p1, Lnet/sf/saxon/ma/map/MapType;

    iget-object v0, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    iget-object v1, p1, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_5

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object p1, p1, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-ne p0, v1, :cond_6

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    if-ne v0, p0, :cond_7

    return-object v0

    :cond_7
    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, p1, :cond_8

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v0, p2, :cond_9

    :cond_8
    if-eq p0, p1, :cond_d

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p2, :cond_9

    goto :goto_1

    :cond_9
    if-eq v0, p1, :cond_a

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v0, p2, :cond_b

    :cond_a
    if-eq p0, p1, :cond_c

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_b

    goto :goto_0

    :cond_b
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_c
    :goto_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_d
    :goto_1
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result p0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    :cond_f
    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, v0, :cond_0

    const-string p0, "map(*)"

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, v0, :cond_1

    const-string p0, "map{}"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "map("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toExportString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, v0, :cond_0

    const-string p0, "map(*)"

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->EMPTY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    if-ne p0, v0, :cond_1

    const-string p0, "map{}"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "map("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/ma/map/MapType;->e:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/ma/map/MapType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
