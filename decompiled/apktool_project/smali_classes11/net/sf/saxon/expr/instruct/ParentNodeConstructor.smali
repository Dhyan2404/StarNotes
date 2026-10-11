.class public abstract Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ValidatingInstruction;
.implements Lnet/sf/saxon/expr/instruct/InstructionWithComplexContent;


# static fields
.field public static final o:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field protected contentOp:Lnet/sf/saxon/expr/Operand;

.field public n:Lnet/sf/saxon/lib/ParseOptions;

.field protected preservingTypes:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->o:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 4

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setReturnable(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v3, :cond_0

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addDescendants()V

    :cond_1
    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public alwaysCreatesNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public computeCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getContentExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getContentOperand()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getTopLevelType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getValidationAction()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public isLocal()Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isLocalConstructor(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public isPreservingTypes()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    return p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Block;->mergeAdjacentTextInstructions()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p2, p0, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->makeCopyOperationsExplicit(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Operand;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result p2

    const/4 v0, 0x4

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result p2

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/high16 v0, 0x8000000

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    sget-object v0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;->DOC_ELEM_ATTR:Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne p1, p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setNoNeedToStrip()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setNoNeedToStrip()V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public setContentExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->o:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setNoNeedToStrip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    return-void
.end method

.method public setValidationAction(ILnet/sf/saxon/type/SchemaType;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->n:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V

    return-object p0
.end method
