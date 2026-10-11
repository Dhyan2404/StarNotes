.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;
.source "SourceFile"


# instance fields
.field _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter-ref("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->mapQNameToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_closure:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->inInnerClass()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;->getParentClosure()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Closure;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

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

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->loadInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;->_variable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->removeReference(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRefBase;)V

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
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->isExternal()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_5
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

    if-eqz p0, :cond_6

    const-string p0, "cloneIterator"

    const-string p1, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v1, "com.sun.org.apache.xml.internal.dtm.DTMAxisIterator"

    invoke-virtual {v0, v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    return-void
.end method
