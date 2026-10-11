.class public final Lnet/sf/saxon/pattern/MultipleNodeKindTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"


# static fields
.field public static final CHILD_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

.field public static final DOC_ELEM_ATTR:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

.field public static final LEAF:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

.field public static final PARENT_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;


# instance fields
.field public i:Lnet/sf/saxon/type/UType;

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    sget-object v1, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    sget-object v2, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    sput-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->PARENT_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    sput-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->DOC_ELEM_ATTR:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    sget-object v1, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    sget-object v4, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v4}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    invoke-virtual {v5, v6}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v5

    sget-object v7, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v5, v7}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    sput-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->LEAF:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    sput-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->CHILD_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/UType;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    sget-object v0, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_2
    sget-object v0, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_3
    sget-object v0, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_4
    sget-object v0, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_5
    sget-object v0, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    :cond_6
    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/MultipleNodeKindTest;[BI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->g([BI)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->h(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g([BI)Z
    .locals 0

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0xf

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    :cond_0
    iget p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    const/4 p2, 0x1

    shl-int p1, p2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public static synthetic h(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    check-cast p1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    iget-object p1, p1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ljava/util/LinkedList;Ljava/lang/StringBuilder;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lnet/sf/saxon/type/PrimitiveUType;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/type/ItemType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/PrimitiveUType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/PrimitiveUType;

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto :goto_1

    :cond_1
    const/16 v0, 0x7c

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/mqj;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/mqj;-><init>(Lnet/sf/saxon/pattern/MultipleNodeKindTest;[B)V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->hashCode()I

    move-result p0

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    const/4 p2, 0x1

    shl-int p1, p2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sunia/HTREnginev2/jqj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jqj;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->f(Ljava/util/LinkedList;Ljava/lang/StringBuilder;Ljava/util/function/Function;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    sget-object v1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->CHILD_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    iget v1, v1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->j:I

    if-ne v0, v1, :cond_0

    const-string p0, "node()"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sunia/HTREnginev2/kqj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/kqj;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->f(Ljava/util/LinkedList;Ljava/lang/StringBuilder;Ljava/util/function/Function;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->i:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sunia/HTREnginev2/lqj;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/lqj;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->f(Ljava/util/LinkedList;Ljava/lang/StringBuilder;Ljava/util/function/Function;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
