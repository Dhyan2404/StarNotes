.class public Lcom/sun/org/apache/bcel/internal/generic/JSR;
.super Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/VariableLengthInstruction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/16 v0, 0xa8

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitVariableLengthInstruction(Lcom/sun/org/apache/bcel/internal/generic/VariableLengthInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBranchInstruction(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitJsrInstruction(Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitJSR(Lcom/sun/org/apache/bcel/internal/generic/JSR;)V

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->dump(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public updatePosition(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p2, p2, 0x7fff

    if-lt p1, p2, :cond_0

    const/16 p1, 0xc9

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/4 p1, 0x5

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
