.class public Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/AllocationInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# instance fields
.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    const/16 v0, 0xbc

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    .line 3
    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/BasicType;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;-><init>(B)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitAllocationInstruction(Lcom/sun/org/apache/bcel/internal/generic/AllocationInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitNEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;)V

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public final getType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;->getType(B)Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-object v0
.end method

.method public final getTypecode()B
    .locals 0

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    return p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return-void
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

    sget-object p1, Lcom/sun/org/apache/bcel/internal/Constants;->TYPE_NAMES:[Ljava/lang/String;

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->type:B

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
