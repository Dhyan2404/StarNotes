.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    return-void
.end method


# virtual methods
.method public GE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFGE;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IFGE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :goto_0
    return-object p1
.end method

.method public GT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFGT;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IFGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :goto_0
    return-object p1
.end method

.method public LE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFLE;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IFLE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :goto_0
    return-object p1
.end method

.method public LOAD(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    return-object p0
.end method

.method public LT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IFLT;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IFLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :goto_0
    return-object p1
.end method

.method public STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    return-object p0
.end method

.method public identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimple()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0
.end method

.method public toSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "Z"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "boolean"

    return-object p0
.end method

.method public translateBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    return-void
.end method

.method public translateFrom(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;)V
    .locals 0

    .line 16
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    .line 18
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    const-string p3, "java.lang.Boolean"

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 20
    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X1:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 21
    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 22
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v0, "<init>"

    const-string v1, "(Z)V"

    invoke-virtual {p0, p3, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    .line 10
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v1, "true"

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 13
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {v0, p3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p3

    .line 14
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v1, "false"

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 15
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_0

    .line 2
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_1

    .line 4
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_2

    .line 6
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 1

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 25
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    sget-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    goto :goto_0

    .line 27
    :cond_1
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    return-void
.end method

.method public translateUnBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    const-string v0, "java.lang.Boolean"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v1, "booleanValue"

    const-string v2, "()Z"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method
