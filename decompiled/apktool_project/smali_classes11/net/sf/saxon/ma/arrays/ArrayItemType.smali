.class public Lnet/sf/saxon/ma/arrays/ArrayItemType;
.super Lnet/sf/saxon/type/AnyFunctionType;
.source "SourceFile"


# static fields
.field public static final ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

.field public static final SINGLE_ARRAY:Lnet/sf/saxon/value/SequenceType;


# instance fields
.field public final e:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->SINGLE_ARRAY:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->c(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->d(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toExportString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/value/SequenceType;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "array(*)"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "array("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    iget-object p1, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v1, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " member of the supplied array {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->depictSequence(Lnet/sf/saxon/om/Sequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "} does not match the required member type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0, v1, p2}, Lnet/sf/saxon/value/SequenceType;->explainMismatch(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_0

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

    :cond_0
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

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

.method public getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "FA"

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getNormalizedDefaultPriority()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ARRAY:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getMemberType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->hashCode()I

    move-result p0

    return p0
.end method

.method public isArrayType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMapType()Z
    .locals 0

    const/4 p0, 0x0

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

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    iget-object v3, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v3, v0, p2}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_1
    sget-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-ne p1, v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/type/FunctionItemType;->isMapType()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v0, :cond_5

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    iget-object p1, p1, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->sequenceTypeRelationship(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_4

    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :cond_4
    return-object p0

    :cond_5
    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-eq p0, p1, :cond_6

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_7

    :cond_6
    sget-object p0, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    :cond_7
    return-object p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/df;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/df;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e(Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ef;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ef;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->e(Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
