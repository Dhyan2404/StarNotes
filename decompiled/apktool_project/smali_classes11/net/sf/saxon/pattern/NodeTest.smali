.class public abstract Lnet/sf/saxon/pattern/NodeTest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/NodePredicate;
.implements Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;


# instance fields
.field public e:Lnet/sf/saxon/value/SequenceType;

.field public f:Lnet/sf/saxon/value/SequenceType;

.field public g:Lnet/sf/saxon/value/SequenceType;

.field public h:Lnet/sf/saxon/value/SequenceType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->b(Lnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z

    move-result p0

    return p0
.end method

.method private synthetic b(Lnet/sf/saxon/tree/tiny/NodeVectorTree;I)Z
    .locals 2

    invoke-interface {p1, p2}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKind(I)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-interface {p1, p2}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNode(I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public copy()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    return-object p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 1
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

    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    const-string v0, "The supplied value is "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/UType;->toStringWithIndefiniteArticle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->describeGenre(Lnet/sf/saxon/om/Genre;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result p0

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const-string p0, "*"

    return-object p0

    :cond_0
    const-string p0, "NN"

    return-object p0

    :cond_1
    const-string p0, "ND"

    return-object p0

    :cond_2
    const-string p0, "NC"

    return-object p0

    :cond_3
    const-string p0, "NP"

    return-object p0

    :cond_4
    const-string p0, "NT"

    return-object p0

    :cond_5
    const-string p0, "NA"

    return-object p0

    :cond_6
    const-string p0, "NE"

    return-object p0

    :cond_7
    const-string p0, "N"

    return-object p0
.end method

.method public getContentType()Lnet/sf/saxon/type/SchemaType;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/PrimitiveUType;

    sget-object v0, Lnet/sf/saxon/pattern/NodeTest$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :pswitch_4
    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getDefaultPriority()D
.end method

.method public getFingerprint()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->NODE:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fuj;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/fuj;-><init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/tree/tiny/NodeVectorTree;)V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRequiredNodeNames()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/z/IntSet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/z/IntUniversalSet;->getInstance()Lnet/sf/saxon/z/IntUniversalSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
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

.method public isNillable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    .line 1
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public one()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->e:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->e:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTest;->e:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public oneOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->f:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xc000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->f:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTest;->f:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    invoke-static {p1}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zeroOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->h:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xe000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->h:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTest;->h:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public zeroOrOne()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->g:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x6000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/pattern/NodeTest;->g:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeTest;->g:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method
