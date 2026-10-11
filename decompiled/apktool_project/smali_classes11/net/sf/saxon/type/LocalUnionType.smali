.class public Lnet/sf/saxon/type/LocalUnionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/PlainType;
.implements Lnet/sf/saxon/type/UnionType;


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/AtomicType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/type/AtomicType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lnet/sf/saxon/type/AtomicType;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/AtomicType;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/LocalUnionType;->b(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/AtomicType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/type/AtomicType;)Z
    .locals 0

    invoke-interface {p2, p0, p1}, Lnet/sf/saxon/type/PlainType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/type/AtomicType;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkAgainstFacets(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public containsListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "A"

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v2}, Lnet/sf/saxon/type/AtomicType;->getDefaultPriority()D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->ATOMIC:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getMemberTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/AtomicType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    return-object p0
.end method

.method public getPlainMemberTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/LocalUnionType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/16 p0, 0x278

    return p0
.end method

.method public getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    const/16 v0, 0x6000

    invoke-static {p0, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const-string v2, "http://ns.saxonica.com/anonymous-type"

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/LocalUnionType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    .line 3
    invoke-virtual {p3, v1}, Lnet/sf/saxon/lib/ConversionRules;->makeStringConverter(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p2}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    .line 5
    invoke-virtual {v1, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    return-object v1

    .line 8
    :cond_1
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    .line 9
    invoke-static {p1, v0}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match any member of union type "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/type/LocalUnionType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBuiltInType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdRefType()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/b1j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/b1j;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;->c(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isIdType()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/z0j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z0j;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;->c(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNamespaceSensitive()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/a1j;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/a1j;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;->c(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnionType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/c1j;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/c1j;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/LocalUnionType;->c(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "union("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "union("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/LocalUnionType;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v1, p1, p2, p3}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match any member of union type "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/LocalUnionType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
