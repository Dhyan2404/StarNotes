.class public Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;
.super Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/16 v0, 0xc8

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    const/4 p1, 0x5

    .line 3
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitUnconditionalBranch(Lcom/sun/org/apache/bcel/internal/generic/UnconditionalBranch;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBranchInstruction(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitGotoInstruction(Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitGOTO_W(Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;)V

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    const/4 p1, 0x5

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return-void
.end method
