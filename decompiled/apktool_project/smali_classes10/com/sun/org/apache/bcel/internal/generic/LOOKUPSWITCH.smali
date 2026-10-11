.class public Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;
.super Lcom/sun/org/apache/bcel/internal/generic/Select;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Select;-><init>()V

    return-void
.end method

.method public constructor <init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/16 v0, 0xab

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/Select;-><init>(S[I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 3
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x9

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->fixed_length:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitVariableLengthInstruction(Lcom/sun/org/apache/bcel/internal/generic/VariableLengthInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitBranchInstruction(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitSelect(Lcom/sun/org/apache/bcel/internal/generic/Select;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLOOKUPSWITCH(Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;)V

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Select;->dump(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/Select;->initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    mul-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x9

    int-to-short v0, v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->fixed_length:I

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    new-array p2, p2, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    aput v1, v0, p2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
