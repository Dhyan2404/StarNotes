.class public final Lnet/sf/saxon/expr/AxisExpression;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lnet/sf/saxon/pattern/NodeTest;

.field public p:Lnet/sf/saxon/type/ItemType;

.field public q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(ILnet/sf/saxon/pattern/NodeTest;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    sget-object v0, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->DEFAULT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iput-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/AxisExpression;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/AxisExpression;->s:Z

    iput p1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    iput-object p2, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    return-void
.end method

.method public static e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "}"

    const-string v4, "Q{"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "of element"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a valid element named"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "of attribute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a valid attribute named"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a node with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "simple"

    goto :goto_0

    :cond_2
    const-string p0, "complex"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lnet/sf/saxon/pattern/NodeTest;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    move-object p2, v0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    :cond_1
    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public final computeCardinality()I
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/pattern/NodeTest;

    const v3, 0xe000

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v1, :cond_6

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    :goto_0
    iget v2, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v4, 0x2

    const/16 v5, 0x2000

    const/16 v6, 0x6000

    if-ne v2, v4, :cond_3

    instance-of v4, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of v1, p0, Lnet/sf/saxon/type/ComplexType;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/sf/saxon/type/ComplexType;->getAttributeUseCardinality(Lnet/sf/saxon/om/StructuredQName;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v6

    :cond_1
    instance-of p0, p0, Lnet/sf/saxon/type/SimpleType;

    if-eqz p0, :cond_2

    return v5

    :cond_2
    return v6

    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    instance-of v2, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of v1, p0, Lnet/sf/saxon/type/ComplexType;

    if-eqz v1, :cond_4

    :try_start_1
    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v0

    invoke-interface {p0, v0}, Lnet/sf/saxon/type/ComplexType;->getDescendantElementCardinality(I)I

    move-result p0
    :try_end_1
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return v3

    :cond_4
    return v5

    :cond_5
    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_6

    return v6

    :cond_6
    return v3
.end method

.method public computeHashCode()I
    .locals 2

    const v0, 0x8f0dba

    iget v1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x14

    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public computeSpecialProperties()I
    .locals 3

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    iget v1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    const/high16 v2, 0x1810000

    or-int/2addr v0, v2

    sget-object v2, Lnet/sf/saxon/om/AxisInfo;->isPeerAxis:[Z

    aget-boolean v1, v2, v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {v1}, Lnet/sf/saxon/expr/AxisExpression;->h(Lnet/sf/saxon/pattern/NodeTest;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v1, 0x80000

    :goto_2
    or-int/2addr v0, v1

    sget-object v1, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_3

    const/high16 v1, 0x100000

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    or-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-ne p0, v1, :cond_5

    :cond_4
    const/high16 v2, 0x200000

    :cond_5
    or-int p0, v0, v2

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance p1, Lnet/sf/saxon/expr/AxisExpression;

    iget v0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    iput-object v0, p1, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iput-object v0, p1, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/AxisExpression;->r:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/AxisExpression;->r:Z

    iget-boolean v0, p0, Lnet/sf/saxon/expr/AxisExpression;->s:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/AxisExpression;->s:Z

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public final d(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/pattern/NodeTest;

    if-nez v6, :cond_0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v5

    :cond_0
    iget-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    const-string v7, " axis will never select "

    const-string v8, "The "

    if-eqz v6, :cond_2

    sget-object v6, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    iget v9, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-static {v6, v9}, Lnet/sf/saxon/om/AxisInfo;->getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;

    move-result-object v6

    iget-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {v9}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/type/UType;->toStringWithIndefiniteArticle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_1
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v9, v6, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v9, :cond_4

    iget v9, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    check-cast v6, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v6}, Lnet/sf/saxon/pattern/NameTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p3, :cond_3

    const-string v2, "The names of namespace nodes are never prefixed, so this axis step will never select anything"

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_3
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface {v5}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    iget v9, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-static {v6, v9}, Lnet/sf/saxon/om/AxisInfo;->getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;

    move-result-object v9

    iget-object v10, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v10, :cond_5

    sget-object v10, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    goto :goto_0

    :cond_5
    invoke-interface {v10}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v10

    :goto_0
    sget-object v11, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    invoke-virtual {v9, v11}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " axis starting at "

    if-eqz v11, :cond_7

    if-eqz p3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/type/UType;->toStringWithIndefiniteArticle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will never select anything"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_6
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->isParentless()Z

    move-result v11

    if-eqz v11, :cond_a

    iget v11, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v13, 0x9

    if-eq v11, v13, :cond_8

    if-nez v11, :cond_a

    :cond_8
    if-eqz p3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " axis will never select anything because the context item is parentless"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_9
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {v9, v10}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v11

    if-nez v11, :cond_c

    if-eqz p3, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/type/UType;->toStringWithIndefiniteArticle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will never select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/type/UType;->toStringWithIndefiniteArticle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_b
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_c
    sget-object v11, Lnet/sf/saxon/om/AxisInfo;->excludeSelfAxis:[I

    iget v12, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget v11, v11, v12

    iget-object v12, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v12, :cond_d

    sget-object v12, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    goto :goto_1

    :cond_d
    invoke-interface {v12}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v12

    :goto_1
    iget v13, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v14, 0xc

    if-eq v13, v11, :cond_e

    invoke-static {v6, v11}, Lnet/sf/saxon/om/AxisInfo;->getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;

    move-result-object v11

    invoke-virtual {v11, v10}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v10

    if-nez v10, :cond_e

    iput v14, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-static {v6, v14}, Lnet/sf/saxon/om/AxisInfo;->getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;

    move-result-object v9

    :cond_e
    invoke-virtual {v9}, Lnet/sf/saxon/type/UType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    iget-object v10, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    const/16 v11, 0x17

    if-eqz v10, :cond_12

    instance-of v13, v10, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v13, :cond_f

    goto :goto_3

    :cond_f
    instance-of v13, v6, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-nez v13, :cond_11

    invoke-interface {v10}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_2

    :cond_10
    new-instance v9, Lnet/sf/saxon/pattern/CombinedNodeTest;

    check-cast v6, Lnet/sf/saxon/pattern/NodeTest;

    iget-object v10, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v9, v6, v11, v10}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    iput-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    goto :goto_4

    :cond_11
    :goto_2
    iget-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    iput-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    goto :goto_4

    :cond_12
    :goto_3
    iput-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    :goto_4
    invoke-interface {v5}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v6

    iget-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v9, :cond_4d

    instance-of v9, v5, Lnet/sf/saxon/pattern/DocumentNodeTest;

    const/4 v15, 0x3

    const/4 v14, 0x1

    if-eqz v9, :cond_1a

    sget-object v9, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v12, v9}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    move-object v9, v5

    check-cast v9, Lnet/sf/saxon/pattern/DocumentNodeTest;

    invoke-virtual {v9}, Lnet/sf/saxon/pattern/DocumentNodeTest;->getElementTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Optional;->isPresent()Z

    move-result v17

    if-eqz v17, :cond_1a

    iget-object v10, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v10}, Lnet/sf/saxon/pattern/NodeTest;->getRequiredNodeNames()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v18

    if-eqz v18, :cond_1a

    iget v13, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    if-ne v13, v15, :cond_19

    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/z/IntSet;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v2, v5}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz p3, :cond_13

    const-string v2, "Starting at a document node, the step is selecting an element whose name is not among the names of child elements permitted for this document node type"

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_13
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v2

    if-eqz v2, :cond_18

    instance-of v2, v9, Lnet/sf/saxon/pattern/SchemaNodeTest;

    if-eqz v2, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v2}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v2

    if-ne v2, v14, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v2}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v10

    goto :goto_5

    :cond_15
    const/4 v10, -0x1

    :goto_5
    invoke-virtual {v4, v10}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v2

    if-nez v2, :cond_17

    if-eqz p3, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-virtual {v3, v10}, Lnet/sf/saxon/om/NamePool;->getEQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not declared in the schema"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_16
    iput-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    goto :goto_6

    :cond_17
    new-instance v1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v3, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {v2}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    invoke-direct {v3, v14, v2, v4, v14}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v1, v9, v11, v3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    iput-object v1, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    goto :goto_6

    :cond_18
    iput-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    :goto_6
    return-object v0

    :cond_19
    const/4 v11, 0x4

    if-ne v13, v11, :cond_1a

    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/z/IntSet;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {v10, v11}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object v10

    invoke-virtual {v10}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v14

    if-nez v10, :cond_1a

    new-instance v3, Lnet/sf/saxon/expr/AxisExpression;

    invoke-direct {v3, v15, v9}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    new-instance v4, Lnet/sf/saxon/expr/AxisExpression;

    iget-object v5, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1a
    check-cast v5, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v5}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v9

    if-ne v5, v9, :cond_1b

    return-object v0

    :cond_1b
    invoke-interface {v3}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v9

    if-nez v9, :cond_1d

    iget-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v9}, Lnet/sf/saxon/pattern/NodeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v10

    if-eq v9, v10, :cond_1d

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v10

    if-eq v9, v10, :cond_1d

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v10

    if-eq v9, v10, :cond_1d

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v9, v10, :cond_1d

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v9, v10, :cond_1d

    sget-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v9, v10, :cond_1d

    if-eqz p3, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " axis will never select any typed nodes, because the expression is being compiled in an environment that is not schema-aware"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_1c
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v9}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v9

    iget-object v10, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v10}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result v11

    const-string v13, " nodes when starting at "

    const-string v14, " axis will never select any "

    const/4 v15, 0x0

    if-eqz v11, :cond_27

    if-eqz p3, :cond_4d

    iget v2, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v11, 0x3

    if-eq v2, v11, :cond_1e

    const/4 v11, 0x4

    if-eq v2, v11, :cond_1e

    const/4 v11, 0x5

    if-ne v2, v11, :cond_20

    :cond_1e
    sget-object v2, Lnet/sf/saxon/type/UType;->PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

    sget-object v11, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v11}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    invoke-virtual {v2, v12}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    if-ne v6, v3, :cond_1f

    const-string v3, "an attribute node"

    goto :goto_7

    :cond_1f
    invoke-static {v5}, Lnet/sf/saxon/expr/AxisExpression;->g(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_11

    :cond_20
    iget v2, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_21

    sget-object v2, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v12, v2}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Atomizer;

    if-eqz v2, :cond_21

    const-string v2, "Selecting the text nodes of an element with simple content may give the wrong answer in the presence of comments or processing instructions. It is usually better to omit the \'/text()\' step"

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_11

    :cond_21
    iget v2, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4d

    const/4 v2, -0x1

    if-ne v9, v2, :cond_23

    invoke-virtual {v4, v5}, Lnet/sf/saxon/Configuration;->getExtensionsOfType(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/SchemaType;

    check-cast v4, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v4}, Lnet/sf/saxon/type/ComplexType;->allowsAttributes()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_8

    :cond_23
    invoke-virtual {v4, v5}, Lnet/sf/saxon/Configuration;->getExtensionsOfType(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/SchemaType;

    :try_start_0
    check-cast v4, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v4, v10}, Lnet/sf/saxon/type/ComplexType;->getAttributeUseType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SimpleType;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_24

    :goto_8
    const/4 v14, 0x1

    goto :goto_9

    :cond_25
    move v14, v15

    :goto_9
    if-nez v14, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v6, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_26

    const-string v3, "any attribute nodes"

    goto :goto_a

    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "an attribute node named "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v3}, Lnet/sf/saxon/expr/AxisExpression;->e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when starting at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/expr/AxisExpression;->g(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_11

    :cond_27
    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v6}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v7

    if-eqz v7, :cond_2a

    iget v7, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v11, 0x3

    if-eq v7, v11, :cond_28

    const/4 v11, 0x4

    if-eq v7, v11, :cond_28

    const/4 v11, 0x5

    if-ne v7, v11, :cond_2a

    :cond_28
    sget-object v7, Lnet/sf/saxon/type/UType;->PARENT_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v7, v12}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v7

    if-eqz v7, :cond_2a

    if-eqz p3, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/expr/AxisExpression;->g(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", as this type requires simple content"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_29
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-interface {v6}, Lnet/sf/saxon/type/ComplexType;->isEmptyContent()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget v7, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v11, 0x3

    if-eq v7, v11, :cond_2b

    const/4 v11, 0x4

    if-eq v7, v11, :cond_2b

    const/4 v11, 0x5

    if-ne v7, v11, :cond_30

    :cond_2b
    invoke-virtual {v4, v5}, Lnet/sf/saxon/Configuration;->getExtensionsOfType(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/SchemaType;

    check-cast v3, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v3}, Lnet/sf/saxon/type/ComplexType;->isEmptyContent()Z

    move-result v3

    if-nez v3, :cond_2c

    return-object v0

    :cond_2d
    if-eqz p3, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " axis will never select any nodes when starting at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lnet/sf/saxon/expr/AxisExpression;->g(Lnet/sf/saxon/type/SchemaType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", as this type requires empty content"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_2e
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_2f
    const/4 v11, 0x5

    :cond_30
    iget v7, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const-string v8, "The complex type "

    const/4 v13, 0x2

    if-ne v7, v13, :cond_37

    const/4 v13, -0x1

    if-ne v9, v13, :cond_31

    if-eqz p3, :cond_4d

    invoke-interface {v6}, Lnet/sf/saxon/type/ComplexType;->allowsAttributes()Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allows no attributes other than the standard attributes in the xsi namespace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_11

    :cond_31
    const/16 v2, 0x281

    if-ne v9, v2, :cond_32

    :try_start_1
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_b

    :cond_32
    const/16 v2, 0x283

    if-ne v9, v2, :cond_33

    sget-object v2, Lnet/sf/saxon/type/BuiltInListType;->ANY_URIS:Lnet/sf/saxon/type/BuiltInListType;

    goto :goto_b

    :cond_33
    const/16 v2, 0x284

    if-ne v9, v2, :cond_34

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_b

    :cond_34
    const/16 v2, 0x282

    if-ne v9, v2, :cond_35

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_b

    :cond_35
    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v2, v10}, Lnet/sf/saxon/type/ComplexType;->getAttributeUseType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_36

    if-eqz p3, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow an attribute named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v3}, Lnet/sf/saxon/expr/AxisExpression;->e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_36
    new-instance v1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    iget-object v3, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    new-instance v5, Lnet/sf/saxon/pattern/ContentTypeTest;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2, v4, v15}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    const/16 v2, 0x17

    invoke-direct {v1, v3, v2, v5}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    iput-object v1, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;
    :try_end_1
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_11

    :cond_37
    const/4 v6, 0x3

    if-ne v7, v6, :cond_43

    sget-object v6, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v12, v6}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    if-nez v10, :cond_3c

    :try_start_2
    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v2}, Lnet/sf/saxon/type/ComplexType;->containsElementWildcard()Z

    move-result v2

    if-eqz v2, :cond_38

    return-object v0

    :cond_38
    new-instance v2, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v2}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v6, v2, v15}, Lnet/sf/saxon/type/ComplexType;->gatherAllPermittedChildren(Lnet/sf/saxon/z/IntHashSet;Z)V

    invoke-virtual {v2}, Lnet/sf/saxon/z/IntHashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3a

    if-eqz p3, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not allow children"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_39
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_3a
    invoke-virtual {v2}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3b

    invoke-virtual {v2}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    move v9, v2

    goto :goto_c

    :cond_3b
    return-object v0

    :cond_3c
    :goto_c
    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/type/ComplexType;

    const/4 v6, 0x1

    invoke-interface {v2, v9, v6}, Lnet/sf/saxon/type/ComplexType;->getElementParticleType(IZ)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-nez v2, :cond_41

    if-eqz p3, :cond_40

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-virtual {v2, v9}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not allow a child element named "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lnet/sf/saxon/expr/AxisExpression;->e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v4}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    check-cast v5, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v5, v4, v15}, Lnet/sf/saxon/type/ComplexType;->gatherAllPermittedChildren(Lnet/sf/saxon/z/IntHashSet;Z)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v4}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v6

    invoke-virtual {v6, v5}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    if-eq v5, v9, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Perhaps the namespace is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "missing"

    goto :goto_d

    :cond_3e
    const-string v2, "wrong"

    :goto_d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", and "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was intended?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_40
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_41
    new-instance v6, Lnet/sf/saxon/pattern/CombinedNodeTest;

    iget-object v7, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    new-instance v10, Lnet/sf/saxon/pattern/ContentTypeTest;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v2, v4, v11}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    const/16 v2, 0x17

    invoke-direct {v6, v7, v2, v10}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    iput-object v6, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    move-object v2, v5

    check-cast v2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v2, v9, v11}, Lnet/sf/saxon/type/ComplexType;->getElementParticleCardinality(IZ)I

    move-result v2

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_42

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-virtual {v2, v9}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appears not to allow a child element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lnet/sf/saxon/expr/AxisExpression;->e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    return-object v0

    :cond_42
    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/FirstItemExpression;

    if-nez v2, :cond_4d

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForPatternMatching()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0
    :try_end_2
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :cond_43
    iget v6, v0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4d

    sget-object v6, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v12, v6}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, -0x1

    if-eq v9, v6, :cond_4d

    :try_start_3
    new-instance v12, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v12}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    move-object v13, v5

    check-cast v13, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v13, v12}, Lnet/sf/saxon/type/ComplexType;->gatherAllPermittedDescendants(Lnet/sf/saxon/z/IntHashSet;)V

    invoke-virtual {v12, v6}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_44

    return-object v0

    :cond_44
    invoke-virtual {v12, v9}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    new-instance v3, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v3}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v6, v3, v15}, Lnet/sf/saxon/type/ComplexType;->gatherAllPermittedChildren(Lnet/sf/saxon/z/IntHashSet;Z)V

    new-instance v6, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v6}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    invoke-virtual {v3}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v8

    move v10, v15

    :cond_45
    :goto_e
    invoke-interface {v8}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-interface {v8}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v12

    if-ne v12, v9, :cond_46

    invoke-virtual {v6, v12}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    const/4 v10, 0x1

    :cond_46
    move-object v13, v5

    check-cast v13, Lnet/sf/saxon/type/ComplexType;

    const/4 v14, 0x1

    invoke-interface {v13, v12, v14}, Lnet/sf/saxon/type/ComplexType;->getElementParticleType(IZ)Lnet/sf/saxon/type/SchemaType;

    move-result-object v13

    if-eqz v13, :cond_47

    instance-of v14, v13, Lnet/sf/saxon/type/ComplexType;

    if-eqz v14, :cond_45

    new-instance v14, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v14}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    check-cast v13, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v13, v14}, Lnet/sf/saxon/type/ComplexType;->gatherAllPermittedDescendants(Lnet/sf/saxon/z/IntHashSet;)V

    invoke-virtual {v14, v9}, Lnet/sf/saxon/z/IntHashSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_45

    invoke-virtual {v6, v12}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    const/4 v15, 0x1

    goto :goto_e

    :cond_47
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find type for child element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_48
    iget-object v8, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    iput-object v8, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    if-eqz v15, :cond_49

    check-cast v5, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v5, v9}, Lnet/sf/saxon/type/ComplexType;->getDescendantElementType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v8

    if-eq v5, v8, :cond_49

    new-instance v8, Lnet/sf/saxon/pattern/CombinedNodeTest;

    iget-object v9, v0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    new-instance v12, Lnet/sf/saxon/pattern/ContentTypeTest;

    const/4 v13, 0x1

    invoke-direct {v12, v13, v5, v4, v13}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    const/16 v5, 0x17

    invoke-direct {v8, v9, v5, v12}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    iput-object v8, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    :cond_49
    invoke-virtual {v6}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v5

    invoke-virtual {v3}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v3

    if-ge v5, v3, :cond_4d

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lnet/sf/saxon/expr/AxisExpression;->i(Lnet/sf/saxon/z/IntHashSet;Lnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {v0, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz v10, :cond_4b

    if-eqz v15, :cond_4a

    move v14, v11

    goto :goto_f

    :cond_4a
    const/16 v14, 0xc

    :goto_f
    move v13, v14

    goto :goto_10

    :cond_4b
    move v13, v7

    :goto_10
    new-instance v3, Lnet/sf/saxon/expr/AxisExpression;

    iget-object v5, v0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    check-cast v5, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v3, v13, v5}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v4, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_4c
    if-eqz p3, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not allow a descendant element named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v3}, Lnet/sf/saxon/expr/AxisExpression;->e(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/StaticContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    :try_end_3
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
    :cond_4d
    :goto_11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    check-cast p1, Lnet/sf/saxon/expr/AxisExpression;

    iget v1, p1, Lnet/sf/saxon/expr/AxisExpression;->n:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    iget-object p1, p1, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "axis"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v0, v0, v1

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "nodeTest"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getAxis()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    return p0
.end method

.method public getContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-object p0
.end method

.method public getContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getCost()D
    .locals 2

    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    return-wide v0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "axisStep"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->p:Lnet/sf/saxon/type/ItemType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->principalNodeType:[S

    iget v1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-short v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    return-object p0
.end method

.method public getNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getPreconditions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/AxisExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-static {p1, v0}, Lnet/sf/saxon/om/AxisInfo;->getTargetUType(Lnet/sf/saxon/type/UType;I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "AxisExpression"

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/z/IntHashSet;Lnet/sf/saxon/om/NamePool;)Lnet/sf/saxon/pattern/NodeTest;
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-direct {v0, p1, v2, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public isContextPossiblyUndefined()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->isPossiblyAbsent()Z

    move-result p0

    return p0
.end method

.method public isSubtreeExpression()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-boolean p0, v0, p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "The context item for axis step "

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v3, :cond_0

    .line 3
    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    iget v3, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-interface {v0, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    iget v4, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-interface {v0, v4, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/trans/XPathException;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPST0010"

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XPathException;

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 9
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 10
    throw v0

    .line 11
    :catch_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a node"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v2, "XPTY0020"

    .line 12
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 14
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 15
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 16
    throw v0

    .line 17
    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is absent"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v2, "XPDY0002"

    .line 18
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 20
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 21
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 22
    throw v0
.end method

.method public iterate(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v0, :cond_0

    .line 24
    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    iget p0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/AxisExpression;->s:Z

    iput-object p2, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    return-object p0
.end method

.method public setAxis(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    if-ne v0, v1, :cond_3

    :cond_1
    iget v0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->PARENT_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    iput-object v0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    :cond_3
    return-object p0
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/pattern/AnyNodeTest;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0xc

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    sget-object p1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->CHILD_NODE:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v0

    iget v4, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    if-ne v4, v3, :cond_3

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v4, v3, :cond_6

    if-nez v0, :cond_4

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    sget-object p1, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_4
    invoke-static {v4, v0}, Lnet/sf/saxon/om/AxisInfo;->containsNodeKind(II)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_6
    if-eq v4, v2, :cond_b

    if-eq v4, v1, :cond_b

    const/4 v1, 0x5

    if-ne v4, v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    if-ne v4, v1, :cond_a

    if-nez v0, :cond_8

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    sget-object p1, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_8
    invoke-static {v4, v0}, Lnet/sf/saxon/om/AxisInfo;->containsNodeKind(II)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only downwards axes are allowed in a pattern"

    const-string v0, "XTSE0340"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_0
    if-eqz v0, :cond_c

    invoke-static {v4, v0}, Lnet/sf/saxon/om/AxisInfo;->containsNodeKind(II)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_1

    :cond_c
    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    :goto_1
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v1, :cond_2

    const-string p0, "node()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v2, :cond_4

    check-cast v1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NameTest;->getNodeKind()I

    move-result v1

    sget-object v2, Lnet/sf/saxon/om/AxisInfo;->principalNodeType:[S

    iget v3, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-short v2, v2, v3

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/AxisExpression;->o:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p0, :cond_0

    const-string p0, "node()"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/AxisExpression;->s:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/sf/saxon/expr/AxisExpression;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v2, p0, Lnet/sf/saxon/expr/AxisExpression;->r:Z

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v3

    const-string v4, "Axis step "

    if-eq v0, v3, :cond_7

    iput-object p2, p0, Lnet/sf/saxon/expr/AxisExpression;->q:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/om/Genre;->NODE:Lnet/sf/saxon/om/Genre;

    if-eq v5, v6, :cond_5

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    const-string v5, "XPTY0020"

    if-eq v0, v3, :cond_4

    sget-object v3, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    if-eq v0, v3, :cond_2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v3, :cond_5

    :cond_2
    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/AxisExpression;->d(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    new-instance p2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, ""

    iget v2, p0, Lnet/sf/saxon/expr/AxisExpression;->n:I

    const/16 v3, 0xe

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    new-instance v1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-direct {v1, p2, v2, v0}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance p2, Lnet/sf/saxon/expr/SimpleStepExpression;

    invoke-direct {p2, v1, p1}, Lnet/sf/saxon/expr/SimpleStepExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be used here: the context item is not a node"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/AxisExpression;->d(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be used here: the context item is absent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p2, "XPDY0002"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
