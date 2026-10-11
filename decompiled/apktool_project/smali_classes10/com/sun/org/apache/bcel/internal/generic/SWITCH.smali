.class public final Lcom/sun/org/apache/bcel/internal/generic/SWITCH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;


# instance fields
.field private instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

.field private match:[I

.field private match_length:I

.field private targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    return-void
.end method

.method public constructor <init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    .line 3
    invoke-virtual {p2}, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 4
    array-length v0, p1

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match_length:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 5
    new-instance p4, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;

    invoke-direct {p4, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->sort(II)V

    .line 7
    invoke-direct {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->matchIsOrdered(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0, p4, p3}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->fillup(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 9
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    iget-object p4, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p1, p2, p4, p3}, Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    iget-object p4, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {p1, p2, p4, p3}, Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

    :goto_0
    return-void
.end method

.method private final fillup(ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 9

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match_length:I

    mul-int/2addr p1, v0

    add-int/2addr v0, p1

    new-array p1, v0, [I

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, p1, v2

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    const/4 v1, 0x1

    move v3, v1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match_length:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    add-int/lit8 v6, v3, -0x1

    aget v6, v5, v6

    aget v5, v5, v3

    sub-int/2addr v5, v6

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_0

    add-int v8, v6, v7

    aput v8, p1, v4

    aput-object p2, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    aget v5, v5, v3

    aput v5, p1, v4

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v5, v5, v3

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p2, v4, [I

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    new-array v1, v4, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {p1, v2, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v0, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private final matchIsOrdered(I)Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match_length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    aget v2, v2, v4

    sub-int/2addr v3, v2

    if-le v3, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final sort(II)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    move v1, p1

    move v2, p2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    aget v3, v3, v1

    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->match:[I

    aget v4, v3, v2

    if-ge v0, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_3

    aget v5, v3, v1

    aput v4, v3, v1

    aput v5, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v4, v3, v1

    aget-object v5, v3, v2

    aput-object v5, v3, v1

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->sort(II)V

    :cond_4
    if-ge v1, p2, :cond_5

    invoke-direct {p0, v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->sort(II)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

    return-object p0
.end method

.method public final getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;->instruction:Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)V

    return-object v0
.end method
