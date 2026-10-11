.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
.source "SourceFile"


# instance fields
.field private _name:Ljava/lang/String;

.field private _typeChecked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;-><init>(IILjava/util/Vector;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_typeChecked:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultPriority()D
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_name:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    :goto_0
    return-wide v0
.end method

.method public isWildcard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reduceKernelPattern()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_typeChecked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    const-string v1, ")"

    const-string v2, "processing-instruction("

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "getNodeName"

    const-string v3, "(I)Ljava/lang/String;"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "equals"

    const-string v5, "(Ljava/lang/Object;)Z"

    const-string v6, "java.lang.String"

    invoke-virtual {v0, v6, v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-boolean v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_typeChecked:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v5, "getExpandedTypeID"

    const-string v8, "(I)I"

    invoke-virtual {v0, v4, v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v5, v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const/4 v5, 0x7

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    invoke-direct {v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    :cond_0
    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;->_name:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v0, v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;

    invoke-direct {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v5, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchTrueList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p1, v7}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->backPatchFalseList(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p2, v7}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->hasPredicates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->_predicates:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
