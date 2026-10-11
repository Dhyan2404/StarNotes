.class public Lnet/sf/saxon/type/SpecificFunctionType;
.super Lnet/sf/saxon/type/AnyFunctionType;
.source "SourceFile"


# static fields
.field public static final COMPONENT_FUNCTION_TYPE:Lnet/sf/saxon/type/FunctionItemType;


# instance fields
.field public final e:[Lnet/sf/saxon/value/SequenceType;

.field public final f:Lnet/sf/saxon/value/SequenceType;

.field public final g:Lnet/sf/saxon/query/AnnotationList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/type/SpecificFunctionType;->COMPONENT_FUNCTION_TYPE:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [Lnet/sf/saxon/value/SequenceType;

    iput-object p1, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    .line 4
    sget-object p1, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    iput-object p1, p0, Lnet/sf/saxon/type/SpecificFunctionType;->g:Lnet/sf/saxon/query/AnnotationList;

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/query/AnnotationList;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [Lnet/sf/saxon/value/SequenceType;

    iput-object p1, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lnet/sf/saxon/type/SpecificFunctionType;->g:Lnet/sf/saxon/query/AnnotationList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/type/SpecificFunctionType;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v2, p1, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v0, v0

    iget-object v2, p1, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    iget-object v3, p1, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/type/SpecificFunctionType;->getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/AnnotationList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 12
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

    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    const-string v1, ". "

    const-string v2, ")"

    const-string v3, ") is not an instance of the return type in the function signature ("

    const-string v4, "The function argument is of type "

    const/16 v5, 0x4000

    const-string v6, "The function arity is "

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v10, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v11, v9, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v10, v11, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The supplied map contains an entry with key ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") whose corresponding value ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v0, v9, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/value/SequenceType;->explainMismatch(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; a map can only be supplied for a function type whose argument type is atomic"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; a map can only be supplied for a function type with arity 1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    if-ne v0, v7, :cond_a

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v4, :cond_6

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The function expects an argument of type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; an array can only be supplied for a function that expects an integer"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/GroundedValue;

    iget-object v5, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v5, v4, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The supplied array contains an entry ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0, v4, p2}, Lnet/sf/saxon/value/SequenceType;->explainMismatch(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; an array can only be supplied for a function type whose argument type is xs:integer"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; an array can only be supplied for a function type with arity 1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_b
    check-cast p1, Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v1

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v2

    if-eq v1, v2, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The required function arity is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; the supplied function has arity "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object p1, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v1, :cond_d

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The return type of the required function is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but the returntype of the supplied function is "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result p1

    if-ge v8, p1, :cond_f

    iget-object p1, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object p1, p1, v8

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {p2, p1, v1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v1, :cond_e

    sget-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq p1, v1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The type of the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, v8, 0x1

    invoke-static {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " argument of the required function is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but the declaredtype of the corresponding argument of the supplied function is "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    aget-object p0, p0, v8

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->g:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length p0, p0

    return p0
.end method

.method public getDefaultPriority()D
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    array-length v0, p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/type/ItemType;->getNormalizedDefaultPriority()D

    move-result-wide v4

    mul-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v1, p0

    xor-int/2addr v0, v1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p0

    return p0
.end method

.method public makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapItem;

    const/16 v2, 0x4000

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v2, v0, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    return v3

    :cond_3
    return v1

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/type/SpecificFunctionType;->getArity()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v2, :cond_5

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v0, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_7
    return v3

    :cond_8
    return v1

    :cond_9
    check-cast p1, Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p0, p1, :cond_a

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_b

    :cond_a
    move v1, v3

    :cond_b
    return v1
.end method

.method public relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
    .locals 9

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    if-eq p1, v0, :cond_13

    instance-of v0, p1, Lnet/sf/saxon/type/AnyFunctionTypeWithAssertions;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/SpecificFunctionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_10

    instance-of v0, p1, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v0, v0

    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    array-length v3, v3

    if-eq v0, v3, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v6, v5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ge v0, v6, :cond_8

    aget-object v5, v5, v0

    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {p2, v5, v6}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/type/SpecificFunctionType$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v2, :cond_7

    if-eq v5, v1, :cond_6

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_5
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/SpecificFunctionType$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_b

    if-eq p0, v8, :cond_a

    if-eq p0, v7, :cond_9

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_b
    move v4, v2

    goto :goto_2

    :cond_c
    :goto_3
    if-eqz v2, :cond_e

    if-eqz v4, :cond_d

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_d
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_e
    if-eqz v4, :cond_f

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_f
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_10
    :goto_4
    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/type/FunctionItemType;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/SpecificFunctionType$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_12

    if-eq p1, v1, :cond_11

    return-object p0

    :cond_11
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_12
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_13
    :goto_5
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "(function("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->toExportString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ") as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toExportString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "(function("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/type/SpecificFunctionType;->e:[Lnet/sf/saxon/value/SequenceType;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ") as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/SpecificFunctionType;->f:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
