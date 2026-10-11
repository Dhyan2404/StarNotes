.class public final Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
.super Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
.source "SourceFile"


# static fields
.field private static bh_list:Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;


# instance fields
.field private bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    return-void
.end method

.method public static final getBranchHandle(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bh_list:Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;-><init>(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bh_list:Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    return-object v0
.end method


# virtual methods
.method public addHandle()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bh_list:Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sput-object p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bh_list:Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    return-void
.end method

.method public getPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    return p0
.end method

.method public getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    return-object p0
.end method

.method public setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->setInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)V

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to branch handle which is not a branch instruction"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iput p1, v0, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    return-void
.end method

.method public setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method

.method public updatePosition(II)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->updatePosition(II)I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    iget p2, p2, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->position:I

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->i_position:I

    return p1
.end method

.method public updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->bi:Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-void
.end method
