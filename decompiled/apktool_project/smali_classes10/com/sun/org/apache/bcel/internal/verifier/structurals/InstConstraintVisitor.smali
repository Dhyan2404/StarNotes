.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;
.super Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/Visitor;


# static fields
.field private static GENERIC_ARRAY:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;


# instance fields
.field private cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field private frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

.field private mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "com.sun.org.apache.bcel.internal.verifier.structurals.GenericArray"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    return-void
.end method

.method private _visitStackAccessor(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    const-string v2, " stack slots: only "

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot consume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " slot(s) left on stack!\nStack:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->produceStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack()I

    move-result v3

    if-le v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot produce "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack()I

    move-result v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " free stack slot(s) left.\nStack:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z
    .locals 3

    instance-of v0, p2, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-nez v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'arrayref\' does not refer to an array but is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " constraint violated: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'index\' is not of type int but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    return-object p0
.end method

.method private referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V
    .locals 2

    instance-of v0, p2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Working on an uninitialized object \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    return-object p0
.end method

.method private valueOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'value\' is not of type int but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setConstantPoolGen(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public setFrame(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    return-void
.end method

.method public setMethodGen(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    return-void
.end method

.method public visitAALOAD(Lcom/sun/org/apache/bcel/internal/generic/AALOAD;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'arrayref\' does not refer to an array with elements of a ReferenceType but to an array of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :cond_1
    return-void
.end method

.method public visitAASTORE(Lcom/sun/org/apache/bcel/internal/generic/AASTORE;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    instance-of v1, v2, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v3, "."

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The \'value\' is not of a ReferenceType but of type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The \'arrayref\' does not refer to an array with elements of a ReferenceType but to an array of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    move-object v1, v2

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The type of \'value\' (\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\') is not assignment compatible to the components of the array \'arrayref\' refers to. (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitACONST_NULL(Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;)V
    .locals 0

    return-void
.end method

.method public visitALOAD(Lcom/sun/org/apache/bcel/internal/generic/ALOAD;)V
    .locals 0

    return-void
.end method

.method public visitANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'count\' at the stack top is not of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitARETURN(Lcom/sun/org/apache/bcel/internal/generic/ARETURN;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' at the stack top is not of a ReferenceType but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitARRAYLENGTH(Lcom/sun/org/apache/bcel/internal/generic/ARRAYLENGTH;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    return-void
.end method

.method public visitASTORE(Lcom/sun/org/apache/bcel/internal/generic/ASTORE;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' is not of a ReferenceType or of ReturnaddressType but of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :cond_1
    return-void
.end method

.method public visitATHROW(Lcom/sun/org/apache/bcel/internal/generic/ATHROW;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' is not of an (initialized) ObjectType but of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "Ljava/lang/Throwable;"

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'objectref\' is not of class Throwable or of a subclass of Throwable, but of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitBALOAD(Lcom/sun/org/apache/bcel/internal/generic/BALOAD;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'arrayref\' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitBASTORE(Lcom/sun/org/apache/bcel/internal/generic/BASTORE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->valueOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'arrayref\' does not refer to an array with elements of a Type.BYTE or Type.BOOLEAN but to an array of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitBIPUSH(Lcom/sun/org/apache/bcel/internal/generic/BIPUSH;)V
    .locals 0

    return-void
.end method

.method public visitBREAKPOINT(Lcom/sun/org/apache/bcel/internal/generic/BREAKPOINT;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "In this JustIce verification pass there should not occur an illegal instruction such as BREAKPOINT."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitCALOAD(Lcom/sun/org/apache/bcel/internal/generic/CALOAD;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    return-void
.end method

.method public visitCASTORE(Lcom/sun/org/apache/bcel/internal/generic/CASTORE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->valueOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->arrayrefOfArrayType(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'arrayref\' does not refer to an array with elements of type char but to an array of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitCHECKCAST(Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'objectref\' is not of a ReferenceType but of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Constant at \'index\' is not a ConstantClass, but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getSize()I

    move-result p0

    if-ge v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Huh?! Constant pool index of instruction \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' illegal? Pass 3a should have checked this!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitD2F(Lcom/sun/org/apache/bcel/internal/generic/D2F;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitD2I(Lcom/sun/org/apache/bcel/internal/generic/D2I;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitD2L(Lcom/sun/org/apache/bcel/internal/generic/D2L;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitDADD(Lcom/sun/org/apache/bcel/internal/generic/DADD;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDALOAD(Lcom/sun/org/apache/bcel/internal/generic/DALOAD;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type double[] but is \'"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitDASTORE(Lcom/sun/org/apache/bcel/internal/generic/DASTORE;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v4, "Stack next-to-next-to-top must be of type double[] but is \'"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitDCMPG(Lcom/sun/org/apache/bcel/internal/generic/DCMPG;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDCMPL(Lcom/sun/org/apache/bcel/internal/generic/DCMPL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDCONST(Lcom/sun/org/apache/bcel/internal/generic/DCONST;)V
    .locals 0

    return-void
.end method

.method public visitDDIV(Lcom/sun/org/apache/bcel/internal/generic/DDIV;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDLOAD(Lcom/sun/org/apache/bcel/internal/generic/DLOAD;)V
    .locals 0

    return-void
.end method

.method public visitDMUL(Lcom/sun/org/apache/bcel/internal/generic/DMUL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDNEG(Lcom/sun/org/apache/bcel/internal/generic/DNEG;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitDREM(Lcom/sun/org/apache/bcel/internal/generic/DREM;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDRETURN(Lcom/sun/org/apache/bcel/internal/generic/DRETURN;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitDSTORE(Lcom/sun/org/apache/bcel/internal/generic/DSTORE;)V
    .locals 0

    return-void
.end method

.method public visitDSUB(Lcom/sun/org/apache/bcel/internal/generic/DSUB;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'double\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDUP(Lcom/sun/org/apache/bcel/internal/generic/DUP;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Won\'t DUP type on stack top \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' because it must occupy exactly one slot, not \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitDUP2(Lcom/sun/org/apache/bcel/internal/generic/DUP2;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "If stack top\'s size is 1, then stack next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' of size \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDUP2_X1(Lcom/sun/org/apache/bcel/internal/generic/DUP2_X1;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' of size \'"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If stack top\'s size is 2, then stack next-to-top\'s size must be 1. But it is \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "If stack top\'s size is 1, then stack next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "If stack top\'s size is 1, then stack next-to-next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public visitDUP2_X2(Lcom/sun/org/apache/bcel/internal/generic/DUP2_X2;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "If stack top\'s size is 2 and stack-next-to-top\'s size is 1, then stack next-to-next-to-top\'s size must also be 1. But it is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    :goto_0
    const-string v0, "The operand sizes on the stack do not match any of the four forms of usage of this instruction."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    return-void
.end method

.method public visitDUP_X1(Lcom/sun/org/apache/bcel/internal/generic/DUP_X1;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' should occupy exactly one slot, not \'"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type on stack top \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type on stack next-to-top \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitDUP_X2(Lcom/sun/org/apache/bcel/internal/generic/DUP_X2;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const-string v2, "\' of size \'"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack top type must be of size 1, but is \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "If stack top\'s size is 1 and stack next-to-top\'s size is 1, stack next-to-next-to-top\'s size must also be 1, but is: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitF2D(Lcom/sun/org/apache/bcel/internal/generic/F2D;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitF2I(Lcom/sun/org/apache/bcel/internal/generic/F2I;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitF2L(Lcom/sun/org/apache/bcel/internal/generic/F2L;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitFADD(Lcom/sun/org/apache/bcel/internal/generic/FADD;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFALOAD(Lcom/sun/org/apache/bcel/internal/generic/FALOAD;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type float[] but is \'"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitFASTORE(Lcom/sun/org/apache/bcel/internal/generic/FASTORE;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v4, "Stack next-to-next-to-top must be of type float[] but is \'"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitFCMPG(Lcom/sun/org/apache/bcel/internal/generic/FCMPG;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFCMPL(Lcom/sun/org/apache/bcel/internal/generic/FCMPL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFCONST(Lcom/sun/org/apache/bcel/internal/generic/FCONST;)V
    .locals 0

    return-void
.end method

.method public visitFDIV(Lcom/sun/org/apache/bcel/internal/generic/FDIV;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFLOAD(Lcom/sun/org/apache/bcel/internal/generic/FLOAD;)V
    .locals 0

    return-void
.end method

.method public visitFMUL(Lcom/sun/org/apache/bcel/internal/generic/FMUL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFNEG(Lcom/sun/org/apache/bcel/internal/generic/FNEG;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitFREM(Lcom/sun/org/apache/bcel/internal/generic/FREM;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFRETURN(Lcom/sun/org/apache/bcel/internal/generic/FRETURN;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitFSTORE(Lcom/sun/org/apache/bcel/internal/generic/FSTORE;)V
    .locals 0

    return-void
.end method

.method public visitFSUB(Lcom/sun/org/apache/bcel/internal/generic/FSUB;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'float\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitFieldInstruction(Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    const-string v2, "\'."

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' should refer to a CONSTANT_Fieldref_info structure, but refers to \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitGETFIELD(Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v2, "\'."

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack top should be an object reference that\'s not an array reference, but is \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v1, v4, :cond_4

    return-void

    :cond_4
    instance-of v4, v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \'objectref\' must refer to an object that\'s not an array. Found instead: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_5
    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z

    :cond_6
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is static which it shouldn\'t be."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Field not found?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitGETSTATIC(Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;)V
    .locals 0

    return-void
.end method

.method public visitGOTO(Lcom/sun/org/apache/bcel/internal/generic/GOTO;)V
    .locals 0

    return-void
.end method

.method public visitGOTO_W(Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;)V
    .locals 0

    return-void
.end method

.method public visitI2B(Lcom/sun/org/apache/bcel/internal/generic/I2B;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitI2C(Lcom/sun/org/apache/bcel/internal/generic/I2C;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitI2D(Lcom/sun/org/apache/bcel/internal/generic/I2D;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitI2F(Lcom/sun/org/apache/bcel/internal/generic/I2F;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitI2L(Lcom/sun/org/apache/bcel/internal/generic/I2L;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitI2S(Lcom/sun/org/apache/bcel/internal/generic/I2S;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIADD(Lcom/sun/org/apache/bcel/internal/generic/IADD;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIALOAD(Lcom/sun/org/apache/bcel/internal/generic/IALOAD;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type int[] but is \'"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitIAND(Lcom/sun/org/apache/bcel/internal/generic/IAND;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIASTORE(Lcom/sun/org/apache/bcel/internal/generic/IASTORE;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v4, "Stack next-to-next-to-top must be of type int[] but is \'"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitICONST(Lcom/sun/org/apache/bcel/internal/generic/ICONST;)V
    .locals 0

    return-void
.end method

.method public visitIDIV(Lcom/sun/org/apache/bcel/internal/generic/IDIV;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIFEQ(Lcom/sun/org/apache/bcel/internal/generic/IFEQ;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFGE(Lcom/sun/org/apache/bcel/internal/generic/IFGE;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFGT(Lcom/sun/org/apache/bcel/internal/generic/IFGT;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFLE(Lcom/sun/org/apache/bcel/internal/generic/IFLE;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFLT(Lcom/sun/org/apache/bcel/internal/generic/IFLT;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFNE(Lcom/sun/org/apache/bcel/internal/generic/IFNE;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitIFNONNULL(Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitIFNULL(Lcom/sun/org/apache/bcel/internal/generic/IFNULL;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitIF_ACMPEQ(Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPEQ;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v1, "\'."

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitIF_ACMPNE(Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPNE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v1, "\'."

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value at the stack top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of a ReferenceType, but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPEQ(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPGE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPGT(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPLE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPLT(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIF_ICMPNE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIINC(Lcom/sun/org/apache/bcel/internal/generic/IINC;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/IINC;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v0, "The \'index\' is not a valid index into the local variable array."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitILOAD(Lcom/sun/org/apache/bcel/internal/generic/ILOAD;)V
    .locals 0

    return-void
.end method

.method public visitIMPDEP1(Lcom/sun/org/apache/bcel/internal/generic/IMPDEP1;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP1."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitIMPDEP2(Lcom/sun/org/apache/bcel/internal/generic/IMPDEP2;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "In this JustIce verification pass there should not occur an illegal instruction such as IMPDEP2."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitIMUL(Lcom/sun/org/apache/bcel/internal/generic/IMUL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitINEG(Lcom/sun/org/apache/bcel/internal/generic/INEG;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitINSTANCEOF(Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'objectref\' is not of a ReferenceType but of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Constant at \'index\' is not a ConstantClass, but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitINVOKEINTERFACE(Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "The \'count\' argument must not be 0."

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v3, "\'."

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v5

    if-eq v5, v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v5, v2, -0x1

    move v6, v5

    :goto_0
    if-ltz v6, :cond_6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v7

    sub-int v8, v5, v6

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7

    aget-object v8, v1, v6

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v8, v9, :cond_2

    sget-object v9, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v8, v9, :cond_3

    :cond_2
    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    instance-of v9, v7, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v9, :cond_4

    instance-of v9, v8, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expecting a \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' but found a \'"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' on the stack."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v5, v6, :cond_7

    return-void

    :cond_7
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_8
    move-object v6, v5

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v6, :cond_9

    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_9
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_a

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    if-eq v0, v4, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'count\' argument should probably read \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public visitINVOKESPECIAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;)V
    .locals 12

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_0

    const-string v0, "Possibly initializing object twice. A valid instruction sequence must not have an uninitialized object on the operand stack or in a local variable during a backwards branch, or in a local variable in code protected by an exception handler. Please see The Java Virtual Machine Specification, Second Edition, 4.9.4 (pages 147 and 148) for details."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v2, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v3, "\'."

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v4, v2, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v6

    sub-int v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    aget-object v7, v0, v5

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v7, v8, :cond_3

    :cond_2
    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    instance-of v8, v6, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v9, "\' but found a \'"

    const-string v10, "Expecting a \'"

    if-eqz v8, :cond_4

    instance-of v8, v7, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v8, :cond_4

    move-object v8, v6

    check-cast v8, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-object v11, v7

    check-cast v11, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v8, v11}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' on the stack."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_7

    return-void

    :cond_7
    instance-of v2, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v1, :cond_a

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    :cond_a
    :goto_2
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting an UninitializedObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Otherwise, you couldn\'t invoke a method since an array has no methods (not to speak of a return address)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_c
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;->getInitialized()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'objref\' item \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not implement \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as expected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public visitINVOKESTATIC(Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;)V
    .locals 9

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v3

    if-eq v3, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v2

    move v2, v1

    :goto_0
    if-ltz v2, :cond_5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    aget-object v4, v0, v2

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v4, v5, :cond_2

    :cond_1
    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v6, "\' but found a \'"

    const-string v7, "Expecting a \'"

    if-eqz v5, :cond_3

    instance-of v5, v4, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-object v8, v4

    check-cast v8, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' on the stack."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public visitINVOKEVIRTUAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;)V
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v2, "\'."

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v3, v1, -0x1

    move v4, v3

    :goto_0
    if-ltz v4, :cond_5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    sub-int v6, v3, v4

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    aget-object v6, v0, v4

    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v6, v7, :cond_2

    :cond_1
    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    instance-of v7, v5, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v8, "\' but found a \'"

    const-string v9, "Expecting a \'"

    if-eqz v7, :cond_3

    instance-of v7, v6, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    move-object v10, v6

    check-cast v10, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' on the stack (which is not assignment compatible)."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' on the stack."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting a reference type as \'objectref\' on the stack, not a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_7
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting an ObjectType as \'objectref\' on the stack, not a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->GENERIC_ARRAY:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    :cond_9
    :goto_2
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'objref\' item \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not implement \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' as expected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public visitIOR(Lcom/sun/org/apache/bcel/internal/generic/IOR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIREM(Lcom/sun/org/apache/bcel/internal/generic/IREM;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIRETURN(Lcom/sun/org/apache/bcel/internal/generic/IRETURN;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitISHL(Lcom/sun/org/apache/bcel/internal/generic/ISHL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitISHR(Lcom/sun/org/apache/bcel/internal/generic/ISHR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitISTORE(Lcom/sun/org/apache/bcel/internal/generic/ISTORE;)V
    .locals 0

    return-void
.end method

.method public visitISUB(Lcom/sun/org/apache/bcel/internal/generic/ISUB;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIUSHR(Lcom/sun/org/apache/bcel/internal/generic/IUSHR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitIXOR(Lcom/sun/org/apache/bcel/internal/generic/IXOR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitInvokeInstruction(Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;)V
    .locals 0

    return-void
.end method

.method public visitJSR(Lcom/sun/org/apache/bcel/internal/generic/JSR;)V
    .locals 0

    return-void
.end method

.method public visitJSR_W(Lcom/sun/org/apache/bcel/internal/generic/JSR_W;)V
    .locals 0

    return-void
.end method

.method public visitL2D(Lcom/sun/org/apache/bcel/internal/generic/L2D;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitL2F(Lcom/sun/org/apache/bcel/internal/generic/L2F;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitL2I(Lcom/sun/org/apache/bcel/internal/generic/L2I;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLADD(Lcom/sun/org/apache/bcel/internal/generic/LADD;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLALOAD(Lcom/sun/org/apache/bcel/internal/generic/LALOAD;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type long[] but is \'"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitLAND(Lcom/sun/org/apache/bcel/internal/generic/LAND;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLASTORE(Lcom/sun/org/apache/bcel/internal/generic/LASTORE;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v4, "Stack next-to-next-to-top must be of type long[] but is \'"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitLCMP(Lcom/sun/org/apache/bcel/internal/generic/LCMP;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLCONST(Lcom/sun/org/apache/bcel/internal/generic/LCONST;)V
    .locals 0

    return-void
.end method

.method public visitLDC(Lcom/sun/org/apache/bcel/internal/generic/LDC;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLDC2_W(Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLDC_W(Lcom/sun/org/apache/bcel/internal/generic/LDC_W;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced constant should be a CONSTANT_Integer, a CONSTANT_Float or a CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLDIV(Lcom/sun/org/apache/bcel/internal/generic/LDIV;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLLOAD(Lcom/sun/org/apache/bcel/internal/generic/LLOAD;)V
    .locals 0

    return-void
.end method

.method public visitLMUL(Lcom/sun/org/apache/bcel/internal/generic/LMUL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLNEG(Lcom/sun/org/apache/bcel/internal/generic/LNEG;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLOOKUPSWITCH(Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLOR(Lcom/sun/org/apache/bcel/internal/generic/LOR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLREM(Lcom/sun/org/apache/bcel/internal/generic/LREM;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLRETURN(Lcom/sun/org/apache/bcel/internal/generic/LRETURN;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLSHL(Lcom/sun/org/apache/bcel/internal/generic/LSHL;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLSHR(Lcom/sun/org/apache/bcel/internal/generic/LSHR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLSTORE(Lcom/sun/org/apache/bcel/internal/generic/LSTORE;)V
    .locals 0

    return-void
.end method

.method public visitLSUB(Lcom/sun/org/apache/bcel/internal/generic/LSUB;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLUSHR(Lcom/sun/org/apache/bcel/internal/generic/LUSHR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLXOR(Lcom/sun/org/apache/bcel/internal/generic/LXOR;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack next-to-top is not of type \'long\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/LoadClass;->getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-interface {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/LoadClass;->getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is referenced, but cannot be loaded and resolved: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLoadInstruction(Lcom/sun/org/apache/bcel/internal/generic/LoadInstruction;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read-Access on local variable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with unknown content."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading a two-locals value from local variables "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " where the latter one is destroyed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const-string v1, "Local Variable type and LOADing Instruction type mismatch: Local Variable: \'"

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; Instruction type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; Instruction expects a ReferenceType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack()I

    move-result v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->slotsUsed()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough free stack slots to load a \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' onto the OperandStack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public visitLocalVariableInstruction(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-gt v0, v1, :cond_1

    const-string v0, "The \'index\' is not a valid index into the local variable array."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitMONITORENTER(Lcom/sun/org/apache/bcel/internal/generic/MONITORENTER;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The stack top should be of a ReferenceType, but is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitMONITOREXIT(Lcom/sun/org/apache/bcel/internal/generic/MONITOREXIT;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The stack top should be of a ReferenceType, but is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    return-void
.end method

.method public visitMULTIANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' upper stack types should be \'int\' but aren\'t."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitNEW(Lcom/sun/org/apache/bcel/internal/generic/NEW;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v2, "\'."

    const-string v3, "Expecting a class type (ObjectType) to work on. Found: \'"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->referencesClass()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "NEW.getType() returning a non-reference type?!"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitNEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitNOP(Lcom/sun/org/apache/bcel/internal/generic/NOP;)V
    .locals 0

    return-void
.end method

.method public visitPOP(Lcom/sun/org/apache/bcel/internal/generic/POP;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack top size should be 1 but stack top is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPOP2(Lcom/sun/org/apache/bcel/internal/generic/POP2;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack top size should be 2 but stack top is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' of size \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPUTFIELD(Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;)V
    .locals 9

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v2, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v3, "\'."

    if-nez v2, :cond_0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack next-to-top should be an object reference that\'s not an array reference, but is \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v0, v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v4

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :goto_3
    instance-of v4, v4, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v7, "The stack top type \'"

    if-eqz v4, :cond_6

    instance-of v4, v2, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v4, :cond_5

    move-object v6, v2

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    goto :goto_4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' is not of a reference type as expected."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6, v5}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not assignment compatible with \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eq v5, v2, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not of type \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' as expected."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_7
    :goto_5
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v1, v2, :cond_9

    return-void

    :cond_9
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The \'objectref\' must refer to an object that\'s not an array. Found instead: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_a
    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->subclassOf(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The referenced field has the ACC_PROTECTED modifier, and it\'s a member of the current class or a superclass of the current class. However, the referenced object type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not the current class or a subclass of the current class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is static which it shouldn\'t be."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Field not found?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitPUTSTATIC(Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v0, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :goto_3
    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    const-string v3, "The stack top type \'"

    if-eqz v0, :cond_5

    instance-of v0, v1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v0, :cond_4

    move-object v4, v1

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not of a reference type as expected."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;->isAssignmentCompatibleWith(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not assignment compatible with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-eq v2, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' as expected."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Field not found?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitRET(Lcom/sun/org/apache/bcel/internal/generic/RET;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expecting a ReturnaddressType in local variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->NO_TARGET:Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    if-eq p0, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Oops: RET expecting a target!"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitRETURN(Lcom/sun/org/apache/bcel/internal/generic/RETURN;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Leaving a constructor that itself did not call a constructor."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitReturnInstruction(Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;)V
    .locals 4

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/RETURN;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ARETURN;

    const-string v1, "\'."

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reference type expected on top of stack, but is: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v0, v2, :cond_5

    :cond_4
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_5
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current method has return type of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->mg:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' expecting a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' on top of the stack. But stack top is a \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public visitSALOAD(Lcom/sun/org/apache/bcel/internal/generic/SALOAD;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v2, "\'."

    const-string v3, "Stack next-to-top must be of type short[] but is \'"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public visitSASTORE(Lcom/sun/org/apache/bcel/internal/generic/SASTORE;)V
    .locals 5

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v2, "\'."

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value at the stack top is not of type \'int\', but of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    const-string v3, "Stack next-to-next-to-top must be of type short[] but is \'"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitSIPUSH(Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;)V
    .locals 0

    return-void
.end method

.method public visitSWAP(Lcom/sun/org/apache/bcel/internal/generic/SWAP;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const-string v1, "\'."

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack top is not of size \'1\', but of size \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value at the stack next-to-top is not of size \'1\', but of size \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-void
.end method

.method public visitStackInstruction(Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-void
.end method

.method public visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->_visitStackAccessor(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-void
.end method

.method public visitStoreInstruction(Lcom/sun/org/apache/bcel/internal/generic/StoreInstruction;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot STORE: Stack to read from is empty."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    const-string v1, "Stack top type and STOREing Instruction type mismatch: Stack top: \'"

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; Instruction type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v2, v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-nez v2, :cond_2

    instance-of v3, v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; Instruction expects a ReferenceType or a ReturnadressType."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->referenceTypeIsInitialized(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public visitTABLESWITCH(Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->indexOfInt(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method
