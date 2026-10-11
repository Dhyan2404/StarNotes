.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field private _left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _op:I

.field private _right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method


# virtual methods
.method public hasLastCall()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasLastCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasLastCall()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public hasNodeArgs()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-eqz p0, :cond_0

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

.method public hasNodeSetArgs()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    if-eqz p0, :cond_0

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

.method public hasPositionCall()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasPositionCall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasPositionCall()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasReferenceArgs()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-eqz p0, :cond_0

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

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->getOpNames(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasNodeSetArgs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasReferenceArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->synthesize(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    invoke-direct {p1, v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "I"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")Z"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    const-string p2, "compare"

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    return-void
.end method

.method public translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasNodeSetArgs()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasReferenceArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    instance-of p2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->CMP(Z)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move v3, v4

    :cond_3
    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    const/4 v4, 0x2

    if-eq p2, v4, :cond_7

    if-eq p2, v2, :cond_6

    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "ILLEGAL_RELAT_OP_ERR"

    invoke-direct {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p2

    invoke-virtual {p2, v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->GT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->LT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->GE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->LE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->desynthesize(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_2
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    if-eqz v2, :cond_0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasReferenceArgs()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->getVariable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :goto_1
    if-nez p1, :cond_5

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_5
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasNodeSetArgs()Z

    move-result v2

    if-eqz v2, :cond_e

    instance-of p1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    if-ne p1, v1, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    const/4 v1, 0x5

    :cond_9
    :goto_2
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v1

    :cond_a
    instance-of p1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-eqz p1, :cond_b

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_b
    instance-of p1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    if-eqz p1, :cond_c

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_c
    instance-of p1, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    if-eqz p1, :cond_d

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_d
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_e
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->hasNodeArgs()Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-eqz v2, :cond_f

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-object v1, v3

    :cond_f
    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-eqz v2, :cond_10

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-object v0, v3

    :cond_10
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_op:I

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->getOpNames(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v3, v4, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->lookupPrimop(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->argsType()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v0, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_11
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->argsType()Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_12
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->resultType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1

    :cond_13
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    throw p1
.end method
