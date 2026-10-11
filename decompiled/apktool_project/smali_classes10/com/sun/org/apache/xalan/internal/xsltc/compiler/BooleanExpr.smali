.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field private _value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;->_value:Z

    return-void
.end method


# virtual methods
.method public contextDependent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getValue()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;->_value:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;->_value:Z

    if-eqz p0, :cond_0

    const-string p0, "true()"

    goto :goto_0

    :cond_0
    const-string p0, "false()"

    :goto_0
    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;->_value:Z

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;->_value:Z

    if-eqz p2, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
