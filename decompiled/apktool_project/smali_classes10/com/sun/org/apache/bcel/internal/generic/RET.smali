.class public Lcom/sun/org/apache/bcel/internal/generic/RET;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;


# instance fields
.field private index:I

.field private wide:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xa9

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->setIndex(I)V

    return-void
.end method

.method private final setWide()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->wide:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitRET(Lcom/sun/org/apache/bcel/internal/generic/RET;)V

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->wide:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->wide:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    return p0
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->NO_TARGET:Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    return-object p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-boolean p2, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->wide:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    const/4 p1, 0x4

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    :goto_0
    return-void
.end method

.method public final setIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/RET;->setWide()V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative index value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/RET;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
