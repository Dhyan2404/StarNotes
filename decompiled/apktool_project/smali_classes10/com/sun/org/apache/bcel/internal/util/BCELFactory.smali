.class Lcom/sun/org/apache/bcel/internal/util/BCELFactory;
.super Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;
.source "SourceFile"


# instance fields
.field private _cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field private _mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

.field private _out:Ljava/io/PrintWriter;

.field private branch_map:Ljava/util/HashMap;

.field private branches:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branch_map:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branches:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    return-void
.end method

.method private createConstant(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(char)0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(new PUSH(_cp, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "));"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private updateBranchTargets()V
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branch_map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getPosition()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v2

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".setTarget(ih_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v4, v1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v5

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".setTarget("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", ih_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateExceptionHandlers()V
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getCatchType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "null"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getCatchType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    method.addExceptionHandler(ih_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getStartPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ih_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getEndPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(InstructionConstants."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branch_map:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "    InstructionHandle ih_"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->visitInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->updateBranchTargets()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->updateExceptionHandlers()V

    :cond_5
    return-void
.end method

.method public visitAllocationInstruction(Lcom/sun/org/apache/bcel/internal/generic/AllocationInstruction;)V
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v1

    const/16 v2, 0xc5

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oops: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(_factory.createNew(\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"));"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->getDimensions()S

    move-result p1

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "il.append(_factory.createNewArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", (short) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitArrayInstruction(Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    const/16 v1, 0x4f

    if-ge v0, v1, :cond_0

    const-string v0, "Load"

    goto :goto_0

    :cond_0
    const-string v0, "Store"

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "il.append(_factory.createArray"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitBranchInstruction(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V
    .locals 12

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branch_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v3, p1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    const-string v4, "null"

    const-string v5, ", "

    const-string v6, ");"

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/Select;

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branches:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "new int[] { "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getMatchs()[I

    move-result-object v3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    array-length v10, v3

    if-ge v9, v10, :cond_1

    aget v10, v3, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v9, " }"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    Select "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = new "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", new InstructionHandle[] { "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    array-length p1, v3

    if-ge v8, p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length p1, v3

    add-int/lit8 p1, p1, -0x1

    if-ge v8, p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v3

    if-le v1, v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ih_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->branches:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    BranchInstruction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = _factory.createBranchInstruction("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Constants."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    ih_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " = il.append("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    il.append("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public visitCHECKCAST(Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(_factory.createCheckCast("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitConstantPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;)V
    .locals 0

    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    return-void
.end method

.method public visitFieldInstruction(Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "il.append(_factory.createFieldAccess(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Constants."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitINSTANCEOF(Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(new INSTANCEOF(_cp.addClass("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")));"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitInvokeInstruction(Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "il.append(_factory.createInvoke(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printArgumentTypes([Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Constants."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitLDC(Lcom/sun/org/apache/bcel/internal/generic/LDC;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/LDC;->getValue(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLDC2_W(Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;->getValue(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->createConstant(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariableInstruction(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/16 v2, 0x84

    const-string v3, "));"

    const-string v4, ", "

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(new IINC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/IINC;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/IINC;->getIncrement()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x36

    if-ge v0, v2, :cond_1

    const-string v0, "Load"

    goto :goto_0

    :cond_1
    const-string v0, "Store"

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "il.append(_factory.create"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public visitRET(Lcom/sun/org/apache/bcel/internal/generic/RET;)V
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(new RET("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")));"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitReturnInstruction(Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/BCELFactory;->_out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "il.append(_factory.createReturn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/BCELifier;->printType(Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "));"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
