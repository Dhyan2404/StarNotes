.class public abstract Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;


# instance fields
.field protected index:I

.field protected position:I

.field protected target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public static final notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->removeTargeter(Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->addTargeter(Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public containsTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Branch target offset too large for short"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    return p0
.end method

.method public getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getTargetOffset()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)I

    move-result p0

    return p0
.end method

.method public getTargetOffset(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    sub-int/2addr v1, p0

    return v1

    .line 3
    :cond_0
    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid branch target position offset for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid null handle"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x3

    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    return-void
.end method

.method public setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const-string p0, "<points to itself>"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "<null instruction!!!?>"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "null"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePosition(II)I
    .locals 0

    iget p2, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    const/4 p0, 0x0

    return p0
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void

    :cond_0
    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not targeting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
