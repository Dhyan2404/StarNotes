.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NumberType;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NumberType;-><init>()V

    return-void
.end method


# virtual methods
.method public ADD()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public CMP(Z)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCMPG:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCMPL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-object p0
.end method

.method public DIV()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public DUP()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    return-object p0
.end method

.method public LOAD(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;-><init>(I)V

    return-object p0
.end method

.method public MUL()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public NEG()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DNEG:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public POP()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    return-object p0
.end method

.method public REM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;-><init>(I)V

    return-object p0
.end method

.method public SUB()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public distanceTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
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

.method public toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0
.end method

.method public toSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "D"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "real"

    return-object p0
.end method

.method public translateBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    return-void
.end method

.method public translateFrom(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->L2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_2

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->F2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object p0

    .line 16
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 17
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    .line 18
    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 19
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    .line 21
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    .line 22
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    const-string p3, "realToInt"

    const-string v0, "(D)I"

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {p0, v1, p3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    .line 24
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    const-string p3, "java.lang.Double"

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 26
    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 27
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 28
    sget-object p2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 29
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v0, "<init>"

    const-string v1, "(D)V"

    invoke-virtual {p0, p3, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    .line 12
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    const-string p3, "realToString"

    const-string v0, "(D)Ljava/lang/String;"

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {p0, v1, p3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_0

    .line 2
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_1

    .line 4
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_2

    .line 6
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_3

    .line 8
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 2

    .line 30
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    .line 31
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_0

    .line 32
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 33
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2C:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto/16 :goto_0

    .line 34
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1

    .line 35
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 36
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2B:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_2

    .line 38
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 39
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2S:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_3

    .line 41
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 42
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_4

    .line 43
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2L:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 44
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_5

    .line 45
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2F:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 46
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_6

    .line 47
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    .line 48
    :cond_6
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    sget-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    goto :goto_0

    .line 50
    :cond_7
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    return-void
.end method

.method public translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 3

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    sget-object p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p3, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    const-string v1, "real_to_boolean_tmp"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p2

    new-instance p3, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v0

    invoke-direct {p3, v0}, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCMPG:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p2

    invoke-direct {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/IFNE;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/bcel/internal/generic/IFNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    return-object p0
.end method

.method public translateUnBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    const-string v0, "java.lang.Double"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v1, "doubleValue"

    const-string v2, "()D"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method
