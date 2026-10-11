.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRef;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->implementedAsMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getEscapedName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->inInnerClass()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->getInnerClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->removeReference(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->removeReference(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-virtual {v0, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    if-eqz p0, :cond_7

    const-string p0, "cloneIterator"

    const-string p1, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v1, "com.sun.org.apache.xml.internal.dtm.DTMAxisIterator"

    invoke-virtual {v0, v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_7
    return-void
.end method
