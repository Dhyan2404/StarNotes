.class Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z
    .locals 4

    iget-short p0, p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    iget-short v0, p2, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    const/4 v1, 0x0

    if-ne p0, v0, :cond_a

    instance-of p0, p1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    array-length p2, p0

    array-length v2, p1

    if-ne p2, v2, :cond_a

    move p2, v1

    :goto_0
    array-length v2, p0

    if-ge p2, v2, :cond_1

    aget-object v2, p0, p2

    aget-object v3, p1, p2

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    instance-of p0, p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iget-object p0, p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iget-object p1, p2, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-ne p0, p1, :cond_3

    move v1, v0

    :cond_3
    return v1

    :cond_4
    instance-of p0, p1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;

    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object p0

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;

    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPushInstruction;->getValue()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    instance-of p0, p1, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;

    if-eqz p0, :cond_7

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;

    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;->getIndex()I

    move-result p0

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;

    invoke-interface {p2}, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;->getIndex()I

    move-result p1

    if-ne p0, p1, :cond_6

    move v1, v0

    :cond_6
    return v1

    :cond_7
    instance-of p0, p1, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    if-eqz p0, :cond_9

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->getTypecode()B

    move-result p0

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->getTypecode()B

    move-result p1

    if-ne p0, p1, :cond_8

    move v1, v0

    :cond_8
    return v1

    :cond_9
    return v0

    :cond_a
    return v1
.end method
