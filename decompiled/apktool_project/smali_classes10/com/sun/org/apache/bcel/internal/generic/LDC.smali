.class public Lcom/sun/org/apache/bcel/internal/generic/LDC;
.super Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x13

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>(SI)V

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LDC;->setSize()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitPushInstruction(Lcom/sun/org/apache/bcel/internal/generic/PushInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLDC(Lcom/sun/org/apache/bcel/internal/generic/LDC;)V

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

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_0
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_STRING_RESOLUTION:[Ljava/lang/Class;

    return-object p0
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown or invalid constant type at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0
.end method

.method public getValue(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown or invalid constant type at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/Float;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->getBytes()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Integer;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->getBytes()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x2

    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->setIndex(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LDC;->setSize()V

    return-void
.end method

.method public final setSize()V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const/16 v0, 0x12

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    :goto_0
    return-void
.end method
