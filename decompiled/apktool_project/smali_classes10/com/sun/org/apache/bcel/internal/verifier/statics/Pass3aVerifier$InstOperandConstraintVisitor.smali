.class Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
.super Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstOperandConstraintVisitor"
.end annotation


# instance fields
.field private cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method private constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " constraint violated: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V
    .locals 2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getSize()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal constant pool index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private max_locals()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result p0

    return p0
.end method

.method private objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    array-length p0, p1

    array-length v0, p2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    move p0, v1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_2

    aget-object v0, p1, p0

    aget-object v2, p2, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public visitALOAD(Lcom/sun/org/apache/bcel/internal/generic/ALOAD;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v0

    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    const-string v0, "Not allowed to create an array with more than 255 dimensions."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public visitASTORE(Lcom/sun/org/apache/bcel/internal/generic/ASTORE;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitCHECKCAST(Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitDLOAD(Lcom/sun/org/apache/bcel/internal/generic/DLOAD;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitDSTORE(Lcom/sun/org/apache/bcel/internal/generic/DSTORE;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitFLOAD(Lcom/sun/org/apache/bcel/internal/generic/FLOAD;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitFSTORE(Lcom/sun/org/apache/bcel/internal/generic/FSTORE;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitFieldInstruction(Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    const-string v2, "\'."

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexing a constant that\'s not a CONSTANT_Fieldref but a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v3, v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Referenced field \'"

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not exist in class \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has type \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' instead of \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' as expected."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public visitGETSTATIC(Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

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
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not static which it should be."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Field not found?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitIINC(Lcom/sun/org/apache/bcel/internal/generic/IINC;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitILOAD(Lcom/sun/org/apache/bcel/internal/generic/ILOAD;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitINSTANCEOF(Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitINVOKEINTERFACE(Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' with expected signature not found in class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. The native verfier does allow the method to be declared in some superinterface, which the Java Virtual Machine Specification, Second Edition does not."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is a class, but not an interface as expected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitINVOKESPECIAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;)V
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v1, v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Referenced method \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' with expected signature not found in class \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. The native verfier does allow the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isSuper()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1, v0}, Lcom/sun/org/apache/bcel/internal/Repository;->instanceOf(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<init>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    :cond_3
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v3

    move v4, v2

    :goto_2
    array-length v6, v3

    if-ge v4, v6, :cond_5

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v3, v3, v4

    move-object v5, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_3

    :cond_6
    if-nez v5, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACC_SUPER special lookup procedure not successful: method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with proper signature not declared in superclass hierarchy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public visitINVOKESTATIC(Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Referenced method \'"

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' with expected signature not found in class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'. The native verifier possibly allows the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has ACC_STATIC unset."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitINVOKEVIRTUAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->objarrayequals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v1, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' with expected signature not found in class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. The native verfier does allow the method to be declared in some superclass or implemented interface, which the Java Virtual Machine Specification, Second Edition does not."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referenced class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is an interface, but not a class as expected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public visitISTORE(Lcom/sun/org/apache/bcel/internal/generic/ISTORE;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitInvokeInstruction(Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v1, "<init>"

    const-string v2, "\'."

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v3, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexing a constant that\'s not a CONSTANT_InterfaceMethodref but a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Method to invoke must not be \'<init>\'."

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Method to invoke must not be \'<clinit>\'."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v3, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    if-nez v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexing a constant that\'s not a CONSTANT_Methodref but a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    if-nez v3, :cond_5

    const-string v3, "Only INVOKESPECIAL is allowed to invoke instance initialization methods."

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "No method with a name beginning with \'<\' other than the instance initialization methods may be called by the method invocation instructions."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    :cond_7
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Return type class/interface could not be verified successfully: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_b

    aget-object v4, v0, v1

    instance-of v5, v4, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v4

    :cond_9
    instance-of v5, v4, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getStatus()I

    move-result v5

    if-eq v5, v3, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Argument type class/interface could not be verified successfully: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public visitLDC(Lcom/sun/org/apache/bcel/internal/generic/LDC;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

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

    const-string v2, "Operand of LDC or LDC_W must be one of CONSTANT_Integer, CONSTANT_Float or CONSTANT_String, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitLDC2_W(Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

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

    const-string v2, "Operand of LDC2_W must be CONSTANT_Long or CONSTANT_Double, but is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/StaticCodeInstructionOperandConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "OOPS: Does not BCEL handle that? LDC2_W operand has a problem."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitLLOAD(Lcom/sun/org/apache/bcel/internal/generic/LLOAD;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitLOOKUPSWITCH(Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getMatchs()[I

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget v3, v0, v2

    if-ne v3, v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Match \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' occurs more than once."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    aget v3, v0, v2

    if-ge v3, v1, :cond_1

    const-string v3, "Lookup table must be sorted but isn\'t."

    invoke-direct {p0, p1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public visitLSTORE(Lcom/sun/org/apache/bcel/internal/generic/LSTORE;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative. [Constraint by JustIce as an analogon to the single-slot xLOAD/xSTORE instructions; may not happen anyway.]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-2 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/LoadClass;->getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

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

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-interface {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/LoadClass;->getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is referenced, but cannot be loaded: \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitMULTIANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    const-string v2, "\'."

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string v1, "Number of dimensions to create must be greater than zero."

    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    instance-of v3, v1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getDimensions()I

    move-result v3

    if-ge v3, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to create array with more dimensions (\'+dimensions2create+\') than the one referenced by the CONSTANT_Class \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Expecting a CONSTANT_Class referencing an array type. [Constraint not found in The Java Virtual Machine Specification, Second Edition, 4.8.1]"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public visitNEW(Lcom/sun/org/apache/bcel/internal/generic/NEW;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->indexValid(Lcom/sun/org/apache/bcel/internal/generic/Instruction;I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a CONSTANT_Class operand, but found a \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_1

    const-string v0, "NEW must not be used to create an array."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitNEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->getTypecode()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const-string v0, "Illegal type code \'+t+\' for \'atype\' operand."

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPUTSTATIC(Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v0, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v2

    const-string v3, "Referenced field \'"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' is final and must therefore be declared in the current class \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' which is not the case: it is declared in \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;->getClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not static which it should be."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "<clinit>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' must be set in a \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' method."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Field not found?!?"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitRET(Lcom/sun/org/apache/bcel/internal/generic/RET;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v0

    const-string v1, "Index \'"

    if-gez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must be non-negative."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->max_locals()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' must not be greater than max_locals-1 \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;->constraintViolated(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitTABLESWITCH(Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;)V
    .locals 0

    return-void
.end method
