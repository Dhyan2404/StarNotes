.class public abstract Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static cmp:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;


# instance fields
.field protected length:S

.field protected opcode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;->DEFAULT:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->cmp:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    const/4 v0, -0x1

    .line 3
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    .line 6
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    return-void
.end method

.method private static final className(S)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x35

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "ICONST_M1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ICONST"
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sun.org.apache.bcel.internal.generic."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getComparator()Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->cmp:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    return-object v0
.end method

.method public static final readInstruction(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-short v0, v0

    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-short v0, v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->className(S)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-eqz v1, :cond_3

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/IINC;

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal opcode after wide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-direct {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->setOpcode(S)V

    invoke-virtual {v2, p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string v0, "Illegal opcode detected."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setComparator(Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;)V
    .locals 0

    sput-object p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->cmp:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    return-void
.end method

.method private setOpcode(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
.end method

.method public consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/Constants;->CONSUME_STACK:[I

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget p0, p1, p0

    return p0
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method dispose()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->cmp:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-interface {v0, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;->equals(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLength()I
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getOpcode()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    return p0
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public produceStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/Constants;->PRODUCE_STACK:[I

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    aget p0, p1, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
