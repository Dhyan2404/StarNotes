.class public Lnet/sf/saxon/expr/instruct/ForEachGroup;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/SortKeyEvaluator;
.implements Lnet/sf/saxon/expr/ContextSwitchingExpression;


# static fields
.field public static final GROUP_ADJACENT:I = 0x1

.field public static final GROUP_BREAKING_WHEN:I = 0x4

.field public static final GROUP_BY:I = 0x0

.field public static final GROUP_ENDING:I = 0x3

.field public static final GROUP_STARTING:I = 0x2

.field public static final synthetic y:Z


# instance fields
.field public final n:B

.field public o:I

.field public p:Lnet/sf/saxon/lib/StringCollator;

.field public transient q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public r:Z

.field public s:Z

.field public final t:Lnet/sf/saxon/expr/Operand;

.field public final u:Lnet/sf/saxon/expr/Operand;

.field public final v:Lnet/sf/saxon/expr/Operand;

.field public w:Lnet/sf/saxon/expr/Operand;

.field public x:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;BLnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->s:Z

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p2, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/sf/saxon/expr/OperandRole;->NEW_FOCUS_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lnet/sf/saxon/expr/OperandRole;->PATTERN:Lnet/sf/saxon/expr/OperandRole;

    :goto_1
    new-instance p2, Lnet/sf/saxon/expr/Operand;

    invoke-direct {p2, p0, p4, p1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    if-eqz p6, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p6, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    :cond_2
    if-eqz p7, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p7, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    :cond_3
    iput-byte p3, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    iput-object p5, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->j(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V
    .locals 3

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/functions/CurrentGroupCall;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/functions/CurrentGroupCall;->setControllingInstruction(Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    goto/16 :goto_4

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1, p2, v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez p3, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->isHigherOrder()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-static {v2, p1, p2, v0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method

.method public static g(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "** unknown algorithm **"

    return-object p0

    :cond_0
    const-string p0, "breaking"

    return-object p0

    :cond_1
    const-string p0, "ending"

    return-object p0

    :cond_2
    const-string p0, "starting"

    return-object p0

    :cond_3
    const-string p0, "adjacent"

    return-object p0

    :cond_4
    const-string p0, "by"

    return-object p0
.end method

.method private synthetic j(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_2
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_4
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    :cond_5
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    return-void
.end method

.method public computeDependencies()I
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, -0x1f

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, -0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v3

    and-int/lit8 v3, v3, -0x1f

    or-int/2addr v0, v3

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lnet/sf/saxon/expr/Literal;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v3

    or-int/2addr v0, v3

    :cond_1
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lnet/sf/saxon/expr/Literal;

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v3

    or-int/2addr v0, v3

    :cond_2
    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lnet/sf/saxon/expr/Literal;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    or-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->computeSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 v1, 0x8000000

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 12

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    new-instance v11, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    iget-byte v6, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {v2, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    :goto_1
    move-object v10, v2

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lnet/sf/saxon/expr/instruct/ForEachGroup;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;BLnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    invoke-static {p0, v11}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->isComposite()Z

    move-result p1

    invoke-virtual {v11, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setComposite(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v11, v11, p0, v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    return-object v11
.end method

.method public evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "forEachGroup"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-byte v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->g(B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "algorithm"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "c"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->isInFork()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "k"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-byte v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "match"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "sort"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "collation"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_6
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getAlgorithm()B
    .locals 0

    iget-byte p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    return p0
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCollation()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    return-object p0
.end method

.method public getCollationNameExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getGroupIterator(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-byte v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->n:B

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Function;

    new-instance v1, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;

    invoke-direct {v1, p1, v0, p2}, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown grouping algorithm"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/sort/GroupEndingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {v1, p1, v0, p2}, Lnet/sf/saxon/expr/sort/GroupEndingIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lnet/sf/saxon/expr/sort/GroupStartingIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {v1, p1, v0, p2}, Lnet/sf/saxon/expr/sort/GroupStartingIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    if-nez v0, :cond_4

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->h(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    :cond_4
    move-object v5, v0

    new-instance v0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iget-boolean v6, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/StringCollator;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    if-nez v0, :cond_6

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->h(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v0

    :cond_6
    move-object v5, v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v4

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {v4, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v2

    new-instance p1, Lnet/sf/saxon/expr/sort/GroupByIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iget-boolean v6, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/expr/sort/GroupByIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/StringCollator;Z)V

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Lnet/sf/saxon/expr/sort/SortedGroupIterator;

    invoke-direct {v0, p2, v1, p0, p1}, Lnet/sf/saxon/expr/sort/SortedGroupIterator;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/GroupIterator;Lnet/sf/saxon/expr/sort/SortKeyEvaluator;[Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    move-object v1, v0

    :cond_8
    return-object v1
.end method

.method public getGroupingKey()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x9c

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getKeyItemType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->o:I

    return p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSortKeyComparators()[Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-object p0
.end method

.method public getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return-object p0
.end method

.method public getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    :goto_0
    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ForEachGroup"

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/StringCollator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOCH0002"

    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_0
    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GroupIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupIterator(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p0

    return-object p0
.end method

.method public isComposite()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    return p0
.end method

.method public isInFork()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->s:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->i(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    new-instance v0, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v1, Lcom/sunia/HTREnginev2/osg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/osg;-><init>(Lnet/sf/saxon/expr/instruct/ForEachGroup;)V

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public final mayCreateNewNodes()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTDE1110"

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2, p1, v1}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2, p1, v1}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_3
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURI()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->p:Lnet/sf/saxon/lib/StringCollator;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown collation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x7

    invoke-static {p2, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collation name \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid URI"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_5
    :goto_1
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->i(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v2

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v3

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v4

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    :goto_0
    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Lnet/sf/saxon/lib/TraceListener;->startCurrentItem(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {v0, v5}, Lnet/sf/saxon/lib/TraceListener;->endCurrentItem(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-object v2
.end method

.method public setAction(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setComposite(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->r:Z

    return-void
.end method

.method public setIsInFork(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->s:Z

    return-void
.end method

.method public setKey(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSortKeyDefinitions(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->x:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-static {p0, p0, v0, v3}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->e(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->u:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->v:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6, p1, v0}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isBackwardsCompatible()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    goto :goto_2

    :cond_5
    new-instance v7, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v8, 0x4

    const-string v9, "xsl:sort/select"

    invoke-direct {v7, v8, v9, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v8, "XTTE1020"

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    const/16 v8, 0x6000

    invoke-static {v6, v8, v7}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    invoke-virtual {v5, p1, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setFinalComparator(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    :goto_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->q:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitions()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p2

    invoke-virtual {p2, v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getFinalComparator()Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p2

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getGroupingKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;->o:I

    return-object p0
.end method
