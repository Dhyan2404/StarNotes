.class public abstract Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;


# instance fields
.field private c_tag:S

.field private canon_tag:S

.field protected n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    .line 7
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->c_tag:S

    .line 8
    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    .line 3
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    .line 4
    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->c_tag:S

    return-void
.end method

.method public constructor <init>(SSI)V
    .locals 1

    const/4 v0, 0x2

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    .line 11
    iput-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->c_tag:S

    .line 12
    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    .line 13
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->setIndex(I)V

    return-void
.end method

.method private final wide()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->wide()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->wide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCanonicalTag()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    return p0
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 2

    iget-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oops: unknown case in switch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initFromFile(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    iput-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_0
    iget-short p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/16 v1, 0x15

    if-lt p2, v1, :cond_1

    const/16 v1, 0x19

    if-le p2, v1, :cond_2

    :cond_1
    const/16 v1, 0x36

    if-lt p2, v1, :cond_3

    const/16 v1, 0x3a

    if-gt p2, v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_3
    const/16 p1, 0x2d

    const/4 v1, 0x1

    if-gt p2, p1, :cond_4

    add-int/lit8 p2, p2, -0x1a

    rem-int/2addr p2, v0

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    iput-short v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_4
    add-int/lit8 p2, p2, -0x3b

    rem-int/2addr p2, v0

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    iput-short v1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 2

    if-ltz p1, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->c_tag:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/4 p1, 0x1

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->canon_tag:S

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->wide()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->length:S

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2d

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x3b

    if-lt v0, v1, :cond_2

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
