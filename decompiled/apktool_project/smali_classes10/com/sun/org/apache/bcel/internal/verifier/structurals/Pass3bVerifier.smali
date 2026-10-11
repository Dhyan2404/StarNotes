.class public final Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;
.super Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private method_no:I

.field private myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    return-void
.end method

.method private circulationPump(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v5, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$1;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, p3

    invoke-interface {v2, v8, v7, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v2, v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->isEmpty()Z

    move-result v7

    const-string v8, "\'."

    const/4 v9, 0x0

    if-nez v7, :cond_d

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->getIC(I)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v7

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->getEC(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->remove(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v12

    instance-of v12, v12, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v12, :cond_8

    invoke-interface {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/bcel/internal/generic/RET;

    invoke-interface {v7, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move v14, v9

    :goto_0
    if-ltz v13, :cond_5

    if-ltz v14, :cond_4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    invoke-interface {v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v15

    instance-of v15, v15, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v15, :cond_2

    if-nez v14, :cond_1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, -0x1

    :cond_2
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    invoke-interface {v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v15

    instance-of v15, v15, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v15, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v1, "More RET than JSR in execution chain?!"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v13, v6

    :goto_1
    if-eqz v13, :cond_7

    invoke-interface {v13}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;->physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v13

    if-ne v12, v13, :cond_6

    invoke-interface {v7, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v8

    invoke-interface {v12, v8, v10, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v5, v12, v8}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RET \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' info inconsistent: jump back to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' or \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;->physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RET without a JSR before in ExecutionChain?! EC: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getSuccessors()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v8

    move v12, v9

    :goto_2
    array-length v13, v8

    if-ge v12, v13, :cond_a

    aget-object v13, v8, v12

    invoke-interface {v7, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v14

    invoke-interface {v13, v14, v10, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v5, v13, v14}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    invoke-interface {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    move-result-object v8

    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_0

    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->getHandlerStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v10

    new-instance v12, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-interface {v7, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v13

    new-instance v14, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    invoke-interface {v7, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->maxStack()I

    move-result v15

    aget-object v16, v8, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->getExceptionType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v16

    if-nez v16, :cond_b

    sget-object v16, Lcom/sun/org/apache/bcel/internal/generic/Type;->THROWABLE:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    goto :goto_5

    :cond_b
    aget-object v16, v8, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->getExceptionType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v16

    :goto_5
    move-object/from16 v6, v16

    invoke-direct {v14, v15, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;-><init>(ILcom/sun/org/apache/bcel/internal/generic/ObjectType;)V

    invoke-direct {v12, v13, v14}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v12, v6, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->execute(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Ljava/util/ArrayList;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier$InstructionContextQueue;->add(Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    :cond_e
    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    if-eqz v3, :cond_12

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->isDead(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;->getOutFrame(Ljava/util/ArrayList;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v5

    move v6, v9

    :goto_6
    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->maxLocals()I

    move-result v7

    const-string v10, "Warning: ReturnInstruction \'"

    if-ge v6, v7, :cond_10

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\' may leave method with an uninitialized object in the local variables array \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v4

    move v5, v9

    :goto_7
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    instance-of v6, v6, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-eqz v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' may leave method with an uninitialized object on the operand stack \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    if-nez v2, :cond_e

    return-void
.end method


# virtual methods
.method public do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    iget v1, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3a(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_NOTYET:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object v0

    :cond_0
    iget-object v0, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v8

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    new-instance v5, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;

    invoke-direct {v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;-><init>()V

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->setConstantPoolGen(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    new-instance v6, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;

    invoke-direct {v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;-><init>()V

    invoke-virtual {v6, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->setConstantPoolGen(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v9

    const/4 v10, 0x2

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    iget v2, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v2, v9, v2

    iget-object v3, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/Method;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {v5, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;->setMethodGen(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;-><init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V

    new-instance v4, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMaxLocals()I

    move-result v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMaxStack()I

    move-result v3

    invoke-direct {v4, v0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;-><init>(II)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "<init>"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    sget-object v11, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v0, v3, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v11}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getArgumentTypes()[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    move v11, v3

    move v12, v11

    :goto_1
    array-length v13, v0

    if-ge v11, v13, :cond_8

    aget-object v13, v0, v11

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v13, v14, :cond_3

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v13, v14, :cond_3

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v13, v14, :cond_3

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v13, v14, :cond_4

    :cond_3
    sget-object v13, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v13, v0, v11

    :cond_4
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v13

    add-int v14, v12, v11

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_5

    move v15, v3

    goto :goto_2

    :cond_5
    move/from16 v15, v16

    :goto_2
    add-int/2addr v14, v15

    aget-object v15, v0, v11

    invoke-virtual {v13, v14, v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    aget-object v13, v0, v11

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v13

    if-ne v13, v10, :cond_7

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v13

    add-int v14, v12, v11

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v15

    if-eqz v15, :cond_6

    move/from16 v16, v3

    :cond_6
    add-int v14, v14, v16

    sget-object v15, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v13, v14, v15}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->circulationPump(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstConstraintVisitor;Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some RuntimeException occured while verify()ing class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v3, v9, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Original RuntimeException\'s stack trace:\n---\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "---\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraint violated in method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\':\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public getMethodNo()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->method_no:I

    return p0
.end method
