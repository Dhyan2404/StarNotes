.class public Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;
.super Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/LoadClass;
.implements Lcom/sun/org/apache/bcel/internal/generic/AllocationInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;


# instance fields
.field private dimensions:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1

    const/16 v0, 0xc5

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>(SI)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    .line 3
    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    const/4 p1, 0x4

    .line 4
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return-void

    .line 5
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid dimensions value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitAllocationInstruction(Lcom/sun/org/apache/bcel/internal/generic/AllocationInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitMULTIANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;)V

    return-void
.end method

.method public consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    return p0
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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public final getDimensions()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    return p0
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:[Ljava/lang/Class;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

    aput-object v2, v0, v1

    array-length p0, p0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

    aput-object v1, v0, p0

    return-object v0
.end method

.method public getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    instance-of p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    :cond_0
    instance-of p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    const/4 p1, 0x4

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return-void
.end method

.method public toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
