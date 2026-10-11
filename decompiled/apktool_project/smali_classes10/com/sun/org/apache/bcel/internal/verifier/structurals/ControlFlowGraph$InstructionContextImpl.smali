.class Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstructionContextImpl"
.end annotation


# instance fields
.field private TAG:I

.field private executionPredecessors:Ljava/util/ArrayList;

.field private inFrames:Ljava/util/HashMap;

.field private instruction:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private outFrames:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->instruction:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/HashMap;

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Cannot instantiate InstructionContextImpl from NULL."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private _getSuccessors()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutineOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "Asking for successors of a RET in dead code?!"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v0, "DID YOU REALLY WANT TO ASK FOR RET\'S SUCCS?"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    if-eqz v6, :cond_2

    return-object v1

    :cond_2
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ATHROW;

    if-eqz v6, :cond_3

    return-object v1

    :cond_3
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v1, :cond_4

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3

    :cond_4
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;

    if-eqz v1, :cond_5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3

    :cond_5
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v1, :cond_7

    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v1, :cond_6

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/Select;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    array-length v1, p0

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    aput-object v3, v1, v0

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v4, v0

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v4, v2

    return-object v4

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3
.end method

.method private extendMessageWithFlow(Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execution flow:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getExecutionChain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getExecutionChain()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    instance-of v4, v3, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private mergeInFrames(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)Z
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->merge(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->extendMessageWithFlow(Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;)V

    throw p1
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object p2

    const-string v0, "\' part of a subroutine or not?"

    const-string v1, "Huh?! Am I \'"

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutineOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object p2

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getTopLevel()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutineOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object p2

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getTopLevel()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v2

    if-eq p2, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->inFrames:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->mergeInFrames(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object p1

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->setFrame(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->setFrame(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\nInstructionHandle: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p2, p4, p3}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nExecution Frame:\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->extendMessageWithFlow(Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;)V

    throw p2
.end method

.method public getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;->getExceptionHandlers(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->instruction:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->executionPredecessors:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->lastExecutionJSR()Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outFrame not set! This:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nExecutionChain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getExecutionChain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOutFrames: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->outFrames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSuccessors()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->_getSuccessors()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextsOf([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object p0

    return-object p0
.end method

.method public getTag()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->TAG:I

    return p0
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->TAG:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t[InstructionContext]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
