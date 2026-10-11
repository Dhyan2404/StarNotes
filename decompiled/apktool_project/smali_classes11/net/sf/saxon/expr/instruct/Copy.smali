.class public Lnet/sf/saxon/expr/instruct/Copy;
.super Lnet/sf/saxon/expr/instruct/ElementCreator;
.source "SourceFile"


# instance fields
.field public r:Z

.field public s:Lnet/sf/saxon/type/ItemType;

.field public t:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public constructor <init>(ZZLnet/sf/saxon/type/SchemaType;I)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/ElementCreator;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    invoke-virtual {p0, p4, p3}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    if-nez p3, :cond_0

    const/4 p1, 0x3

    if-ne p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    return-void
.end method

.method public static copyUnparsedEntities(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntityNames()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p1, v1, v3, v2}, Lnet/sf/saxon/event/Outputter;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/instruct/Copy;

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/sf/saxon/expr/instruct/Copy;-><init>(ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    iput-object p0, v0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    return-object v0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->allocateSequenceOutputter(I)Lnet/sf/saxon/event/SequenceCollector;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/PackageData;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceWriter;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceCollector;->getFirstItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-virtual {v0}, Lnet/sf/saxon/event/SequenceCollector;->reset()V

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "copy"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->d(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "c"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "i"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "l"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ElementCreator;->getCardinality()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "sit"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;
    .locals 8

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    sget-object v3, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/type/TypeHierarchy;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v6, :cond_5

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    if-eq p1, v6, :cond_4

    if-ne p1, v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    new-instance p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {p1, v3, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p1

    :cond_5
    :goto_1
    new-instance p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {p1, v4, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result p0

    if-eq p0, v4, :cond_f

    if-eq p0, v3, :cond_f

    const/4 v2, 0x3

    if-eq p0, v2, :cond_e

    const/4 v2, 0x4

    if-ne p0, v2, :cond_d

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p0, v2, :cond_c

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne p0, v6, :cond_7

    goto :goto_4

    :cond_7
    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    if-eq p1, v2, :cond_b

    if-ne p1, v6, :cond_8

    goto :goto_3

    :cond_8
    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p0, v1, :cond_a

    if-eq p1, v1, :cond_9

    goto :goto_2

    :cond_9
    return-object v0

    :cond_a
    :goto_2
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, v3, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_c
    :goto_4
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p1

    invoke-direct {p0, v4, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_e
    return-object v0

    :cond_f
    instance-of p0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_19

    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_15

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v6, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v2, v6, :cond_13

    sget-object v7, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v7, :cond_10

    goto :goto_5

    :cond_10
    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    if-eq p1, v6, :cond_11

    if-ne p1, v7, :cond_17

    :cond_11
    invoke-virtual {v1, p0}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p0

    if-eqz p0, :cond_12

    :try_start_0
    new-instance p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {p1, v3, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p1

    invoke-direct {p0, v3, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_12
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p1

    invoke-direct {p0, v3, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_13
    :goto_5
    invoke-virtual {v1, p0}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_1
    new-instance p1, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-direct {p1, v4, p0, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p1

    invoke-direct {p0, v4, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_14
    new-instance p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p1

    invoke-direct {p0, v4, p1, v1, v5}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    return-object p0

    :cond_15
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v1, v2, :cond_18

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v1, v3, :cond_16

    goto :goto_6

    :cond_16
    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    if-eq p1, v2, :cond_18

    if-ne p1, v3, :cond_17

    goto :goto_6

    :cond_17
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    :cond_18
    :goto_6
    return-object p0

    :cond_19
    instance-of p0, v0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p0, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getElementName(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;
    .locals 0

    invoke-static {p2}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x92

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Copy;->g(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    return-object v0
.end method

.method public getNewBaseURI(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Copy"

    return-object p0
.end method

.method public isCopyNamespaces()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Copy;->g(Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->LEAF:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/Choose;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/instruct/CopyOf;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/instruct/CopyOf;

    new-instance v7, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v7}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    new-instance v1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    new-array p1, v5, [Lnet/sf/saxon/expr/Expression;

    new-instance p2, Lnet/sf/saxon/expr/InstanceOfExpression;

    new-instance v2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const/16 v6, 0x4000

    invoke-static {v1, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    aput-object p2, p1, v4

    sget-object p2, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p2, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p2

    aput-object p2, p1, v3

    new-array p2, v5, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p2, v4

    aput-object p0, p2, v3

    new-instance v0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    return-object v0
.end method

.method public outputNamespaceNodes(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    if-eqz p0, :cond_0

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    const/16 p2, 0x40

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/event/Outputter;->namespaces(Lnet/sf/saxon/om/NamespaceBindingSet;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->isDefaultUndeclaration()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    instance-of v3, v1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 p2, 0x80000

    invoke-virtual {p1, v1, p0, p2}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-object v4

    :cond_0
    move-object v5, v1

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    if-eq v3, v2, :cond_a

    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    const/4 v2, 0x3

    const/4 v6, 0x0

    if-eq v3, v2, :cond_7

    const/4 v2, 0x7

    if-eq v3, v2, :cond_6

    const/16 v2, 0x8

    if-eq v3, v2, :cond_5

    const/16 v2, 0x9

    if-eq v3, v2, :cond_2

    const/16 p0, 0xd

    if-ne v3, p0, :cond_1

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v6}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown node kind "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    if-nez v1, :cond_3

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lnet/sf/saxon/Configuration;->prepareValidationReporting(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v1, v3}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Outputter;->setSystemId(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v6}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    invoke-static {v5, p1}, Lnet/sf/saxon/expr/instruct/Copy;->copyUnparsedEntities(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v6}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_6
    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p0, v6}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_7
    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v6}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/type/ComplexType;

    if-eqz v0, :cond_9

    const-string v0, "Cannot copy an attribute when the type requested for validation is a complex type"

    const-string v1, "XTTE1535"

    invoke-virtual {p0, v0, v1, p2}, Lnet/sf/saxon/expr/Expression;->dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnet/sf/saxon/type/SimpleType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v7

    const/4 v11, 0x0

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-static/range {v5 .. v11}, Lnet/sf/saxon/expr/instruct/CopyOf;->copyAttribute(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/type/SimpleType;ILnet/sf/saxon/expr/instruct/Instruction;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)V
    :try_end_0
    .catch Lnet/sf/saxon/event/NoOpenStartTagException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_a
    invoke-super {p0, p1, p2, v5}, Lnet/sf/saxon/expr/instruct/ElementCreator;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "There is no context item for xsl:copy"

    const-string v1, "XTTE0945"

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public setCopyNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    return-void
.end method

.method public setSelectItemType(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

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

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    instance-of v1, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/Copy;->s:Lnet/sf/saxon/type/ItemType;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v6, Lnet/sf/saxon/expr/instruct/CopyOf;

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/Copy;->r:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    invoke-static {p0, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/expr/instruct/CopyOf;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Copy;->t:Lnet/sf/saxon/type/ItemType;

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V

    return-object p0

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "No context item supplied for xsl:copy"

    const-string v0, "XTTE0945"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
