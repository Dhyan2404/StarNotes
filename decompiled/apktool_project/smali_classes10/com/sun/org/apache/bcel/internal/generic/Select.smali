.class public abstract Lcom/sun/org/apache/bcel/internal/generic/Select;
.super Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/VariableLengthInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# instance fields
.field protected fixed_length:I

.field protected indices:[I

.field protected match:[I

.field protected match_length:I

.field protected padding:I

.field protected targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    return-void
.end method

.method public constructor <init>(S[I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;-><init>(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 6
    :goto_0
    array-length p4, p3

    if-ge p1, p4, :cond_0

    const/4 p4, 0x0

    .line 7
    aget-object v0, p3, p1

    invoke-static {p4, v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    .line 9
    array-length p1, p2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    array-length p2, p3

    if-ne p1, p2, :cond_1

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    return-void

    .line 11
    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Match and target array have not the same length"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public containsTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dispose()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->dispose()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->removeTargeter(Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public getIndices()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    return-object p0
.end method

.method public getMatchs()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    return-object p0
.end method

.method public getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result p2

    rem-int/lit8 p2, p2, 0x4

    rsub-int/lit8 p2, p2, 0x4

    rem-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->index:I

    return-void
.end method

.method public setTarget(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->notifyTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aput-object p2, p0, p1

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "null"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = {"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    aget v1, v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePosition(II)I
    .locals 1

    iget p2, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    iget-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0x4

    rsub-int/lit8 p2, p2, 0x4

    rem-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->fixed_length:I

    add-int/2addr v0, p2

    int-to-short p2, v0

    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    sub-int/2addr p2, p1

    return p2
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/sun/org/apache/bcel/internal/generic/Select;->setTarget(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not targeting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
