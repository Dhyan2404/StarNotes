.class public Lnet/sf/saxon/pattern/NodeKindTest;
.super Lnet/sf/saxon/pattern/NodeTest;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

.field public static final TEXT:Lnet/sf/saxon/pattern/NodeKindTest;


# instance fields
.field public final i:I

.field public final j:Lnet/sf/saxon/type/UType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    new-instance v0, Lnet/sf/saxon/pattern/NodeKindTest;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lnet/sf/saxon/pattern/NodeKindTest;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/NodeTest;-><init>()V

    iput p1, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    invoke-static {p1}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/NodeKindTest;->j:Lnet/sf/saxon/type/UType;

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/pattern/NodeKindTest;[BI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeKindTest;->f([BI)Z

    move-result p0

    return p0
.end method

.method public static synthetic d([BI)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/pattern/NodeKindTest;->e([BI)Z

    move-result p0

    return p0
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 1

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

    const-string p0, "** error **"

    return-object p0

    :cond_0
    const-string p0, "namespace-node()"

    return-object p0

    :cond_1
    const-string p0, "document-node()"

    return-object p0

    :cond_2
    const-string p0, "comment()"

    return-object p0

    :cond_3
    const-string p0, "processing-instruction()"

    return-object p0

    :cond_4
    const-string p0, "text()"

    return-object p0

    :cond_5
    const-string p0, "attribute()"

    return-object p0

    :cond_6
    const-string p0, "element()"

    return-object p0
.end method

.method public static synthetic e([BI)Z
    .locals 0

    aget-byte p0, p0, p1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic f([BI)Z
    .locals 0

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0xf

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;
    .locals 3

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

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown node kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in NodeKindTest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_5
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_6
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0

    :cond_7
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0
.end method

.method public static nodeKindName(I)Ljava/lang/String;
    .locals 1

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

    const-string p0, "** error **"

    return-object p0

    :cond_0
    const-string p0, "namespace"

    return-object p0

    :cond_1
    const-string p0, "document"

    return-object p0

    :cond_2
    const-string p0, "comment"

    return-object p0

    :cond_3
    const-string p0, "processing-instruction"

    return-object p0

    :cond_4
    const-string p0, "text"

    return-object p0

    :cond_5
    const-string p0, "attribute"

    return-object p0

    :cond_6
    const-string p0, "element"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/pattern/NodeKindTest;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/NodeKindTest;

    iget p1, p1, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/pattern/NodeTest;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    const-string v0, "The supplied value is "

    if-eqz p2, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-nez p0, :cond_1

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

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
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
    .locals 1

    .line 2
    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

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

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown node kind"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 5
    :cond_1
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 8
    :cond_4
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 9
    :cond_5
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    .line 10
    :cond_6
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

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

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown node kind"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_5
    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/tree/tiny/NodeVectorTree;->getNodeKindArray()[B

    move-result-object p1

    iget v0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/duj;

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/duj;-><init>([B)V

    invoke-static {p0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/euj;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/euj;-><init>(Lnet/sf/saxon/pattern/NodeKindTest;[B)V

    invoke-static {v0}, Lnet/sf/saxon/z/IntPredicateLambda;->of(Ljava/util/function/IntPredicate;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p0

    return-object p0
.end method

.method public getNodeKind()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    return p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    return p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->j:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    return p0
.end method

.method public matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    .line 2
    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    .line 1
    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_0

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p1

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "/"

    return-object p0

    :cond_1
    const-string p0, "@*"

    return-object p0

    :cond_2
    const-string p0, "*"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/NodeKindTest;->i:I

    invoke-static {p0}, Lnet/sf/saxon/pattern/NodeKindTest;->describe(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
