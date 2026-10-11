.class public Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;
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

    const/16 v0, 0xaa

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/Select;-><init>(S[I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 3
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xd

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

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTABLESWITCH(Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;)V

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

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTargetOffset(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/Select;->initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sub-int v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0xd

    int-to-short v2, v2

    iput v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->fixed_length:I

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->padding:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v1, p2

    :goto_0
    if-gt v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match:[I

    sub-int v3, v1, p2

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->match_length:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Select;->indices:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
