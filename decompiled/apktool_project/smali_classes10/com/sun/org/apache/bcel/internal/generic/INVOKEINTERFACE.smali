.class public final Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;
.super Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;
.source "SourceFile"


# instance fields
.field private nargs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0xb9

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;-><init>(SI)V

    const/4 p1, 0x5

    .line 3
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    .line 4
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of arguments must be > 0 "

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

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitFieldOrMethod(Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitInvokeInstruction(Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitINVOKEINTERFACE(Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;)V

    return-void
.end method

.method public consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

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

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

    return p0
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_INTERFACE_METHOD_RESOLUTION:[Ljava/lang/Class;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    sget-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

    aput-object v2, v0, v1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

    aput-object v2, v0, v1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ABSTRACT_METHOD_ERROR:Ljava/lang/Class;

    aput-object v2, v0, v1

    array-length p0, p0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->UNSATISFIED_LINK_ERROR:Ljava/lang/Class;

    aput-object v1, v0, p0

    return-object v0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V

    const/4 p2, 0x5

    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    return-void
.end method

.method public toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;->nargs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
