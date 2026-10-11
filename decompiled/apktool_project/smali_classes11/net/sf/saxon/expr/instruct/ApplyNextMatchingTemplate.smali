.class public abstract Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ITemplateCall;


# instance fields
.field public n:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public o:[Lnet/sf/saxon/expr/instruct/WithParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p2}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p2

    invoke-direct {v0, p2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addDescendants()V

    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getImplementationMethod()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v1, v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->o:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
