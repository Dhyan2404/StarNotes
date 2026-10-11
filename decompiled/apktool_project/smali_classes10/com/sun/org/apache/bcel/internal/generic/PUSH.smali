.class public final Lcom/sun/org/apache/bcel/internal/generic/PUSH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/VariableLengthInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;


# instance fields
.field private instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;D)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 18
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 19
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addDouble(D)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;F)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 9
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    .line 10
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 11
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_2:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LDC;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFloat(F)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 2
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    add-int/lit8 p2, p2, 0x3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    const/16 v0, -0x80

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    .line 3
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/BIPUSH;

    int-to-byte p2, p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BIPUSH;-><init>(B)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_1
    const/16 v0, -0x8000

    if-lt p2, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p2, v0, :cond_2

    .line 4
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;

    int-to-short p2, p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;-><init>(S)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LDC;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInteger(I)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;J)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 14
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 15
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addLong(J)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Character;)V
    .locals 0

    .line 34
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Number;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;D)V

    iget-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;F)V

    iget-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_1

    .line 30
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 31
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;J)V

    iget-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_1

    .line 32
    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "What\'s this: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_4
    :goto_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    iget-object p1, v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 22
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ACONST_NULL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LDC;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LDC;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    add-int/lit8 p2, p2, 0x3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method


# virtual methods
.method public final getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (PUSH)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
