.class Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubroutineImpl"
.end annotation


# instance fields
.field private final UNSET:I

.field private instructions:Ljava/util/HashSet;

.field private localVariable:I

.field private theJSRs:Ljava/util/HashSet;

.field private theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->UNSET:I

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    return-void
.end method

.method private _getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/HashSet;[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    invoke-interface {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->getAccessedLocalsIndices()[I

    move-result-object v2

    move v3, v0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    aget v5, v2, v3

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    invoke-interface {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    aget-object v2, p2, v1

    invoke-interface {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->_getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/HashSet;[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    return p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method


# virtual methods
.method public addEnteringJsrInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Setting a wrong JsrInstruction."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Set the localVariable first!"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Expecting JsrInstruction InstructionHandle."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "All instructions must have been added before invoking setLeavingRET()."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAccessedLocalsIndices()[I
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    iget-object v1, v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "This subroutine object must be built up completely before calculating accessed locals."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v2, :cond_2

    :cond_3
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;

    invoke-interface {v2}, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;->getIndex()I

    move-result v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/lang/Integer;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "Oops. BCEL did not like NULL as a ConstantPoolGen object."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public getEnteringJsrInstructions()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    if-eq p0, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "getLeavingRET() called on top level pseudo-subroutine."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstructions()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getLeavingRET()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    if-eq p0, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "getLeavingRET() called on top level pseudo-subroutine."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecursivelyAccessedLocalsIndices()[I
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->getAccessedLocalsIndices()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/Integer;

    aget v4, v1, v2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->_getRecursivelyAccessedLocalsIndicesHelper(Ljava/util/HashSet;[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public setLeavingRET()V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    instance-of v4, v4, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subroutine with more then one RET detected: \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' and \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/RET;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v0

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    if-ne v0, v2, :cond_3

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void

    :cond_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subroutine uses \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' which does not match the correct local variable \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    const-string v0, "Subroutine without a RET detected."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "setLeavingRET() called for top-level \'subroutine\' or forgot to set local variable first."

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocalVariable(I)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "localVariable set twice."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getSubroutine(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subroutine: Local variable is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->localVariable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', JSRs are \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theJSRs:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', RET is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->theRET:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', Instructions: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->instructions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Accessed local variable slots: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->getAccessedLocalsIndices()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v2

    const-string v6, " "

    if-ge v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Recursively (via subsub...routines) accessed local variable slots: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->getRecursivelyAccessedLocalsIndices()[I

    move-result-object p0

    :goto_1
    array-length v2, p0

    if-ge v3, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
