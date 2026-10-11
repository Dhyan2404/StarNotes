.class public interface abstract Lnet/sf/saxon/type/UnionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ItemType;
.implements Lnet/sf/saxon/type/CastingTarget;


# virtual methods
.method public abstract checkAgainstFacets(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
.end method

.method public abstract containsListType()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 2
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

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/om/Genre;->ATOMIC:Lnet/sf/saxon/om/Genre;

    if-ne p2, v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "The required type is a union type allowing any of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "("

    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-interface {v1}, Lnet/sf/saxon/type/PlainType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "*member types unobtainable*"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "), but the supplied type "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not any of these"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/type/SimpleType;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPlainMemberTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation
.end method

.method public abstract getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTypeName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation
.end method
