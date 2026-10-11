.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
.source "SourceFile"


# instance fields
.field private final _left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

.field private final _right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-void
.end method


# virtual methods
.method public getLeft()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-object p0
.end method

.method public getPriority()D
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->getPriority()D

    move-result-wide v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->getPriority()D

    move-result-wide v2

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getRight()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-object p0
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alternative("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object p2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_trueList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

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

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->_right:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    const/4 p0, 0x0

    return-object p0
.end method
