.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

.field private _instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

.field private _kernelType:I

.field private _mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

.field private _patterns:Ljava/util/Vector;

.field private _start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    .line 6
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_kernelType:I

    .line 7
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;-><init>(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V

    return-void
.end method

.method private getPattern(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    return-object p0
.end method

.method private getTemplateHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getTemplateHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getTemplateHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p3

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPattern(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getInstructionList(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addInstructionList(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    :cond_3
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->copy()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getTrueList()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->copyAndRedirect(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object v6

    :cond_4
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getFalseList()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->copyAndRedirect(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object v1

    :cond_5
    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getTemplateHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v2

    if-eqz v6, :cond_6

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_7
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    if-eqz v1, :cond_8

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_8
    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_start:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p3
.end method

.method public findTemplates(Ljava/util/Dictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_instructionList:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    return-object p0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPosition()I

    move-result p0

    return p0
.end method

.method public getPriority()D
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPriority()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduce()V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->reduceKernelPattern()V

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_default:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_patterns:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    const/16 v4, 0xa

    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Testseq for kernel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->_kernelType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
