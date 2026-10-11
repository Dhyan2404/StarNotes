.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;
.source "SourceFile"


# instance fields
.field private final _left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

.field private _loop:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private final _right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    return-void
.end method


# virtual methods
.method public getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object p0

    return-object p0
.end method

.method public getLoopHandle()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_loop:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public isWildcard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reduceKernelPattern()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->reduceKernelPattern()V

    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AncestorPattern("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "I"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    const-string v4, "app"

    invoke-virtual {p2, v4, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    instance-of v6, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    if-eqz v6, :cond_0

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {v5, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {v5, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    instance-of v5, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v5, :cond_4

    const-string v5, "getParent"

    const-string v6, "(I)I"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v7, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/IFLT;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/IFLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v4, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;

    if-nez v4, :cond_3

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_3
    :goto_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_loop:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_loop:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_loop:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchFalseList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object p2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    instance-of p2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->getLoopHandle()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    iget-object p2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0
.end method
