.class public abstract Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/UnconditionalBranch;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method


# virtual methods
.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;->physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p1
.end method

.method public physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPrev()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPrev()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    if-eq v1, p0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    if-eq v2, p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "physicalSuccessor() called on a shared JsrInstruction."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method
