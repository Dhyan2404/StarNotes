.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;
    }
.end annotation


# instance fields
.field public final TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

.field private subroutines:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getInstructionHandles()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    move-result-object p1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;)V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v0, v2

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    instance-of v5, v4, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-direct {v4, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->setLocalVariable(I)V

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    instance-of v5, v4, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getSubroutine(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->addEnteringJsrInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move v6, v2

    :goto_4
    array-length v7, v0

    if-ge v6, v7, :cond_6

    aget-object v7, v0, v6

    sget-object v8, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v4, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    sget-object v6, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, v0, v2

    if-ne v5, v7, :cond_7

    move v7, v2

    :goto_5
    array-length v8, p1

    if-ge v7, v8, :cond_7

    aget-object v8, p1, v7

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    sget-object v9, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v8, p1, v7

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-static {v7}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getSuccessors(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v8

    move v9, v2

    :goto_7
    array-length v10, v8

    if-ge v9, v10, :cond_9

    aget-object v10, v8, v9

    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/awt/Color;

    sget-object v11, Ljava/awt/Color;->white:Ljava/awt/Color;

    if-ne v10, v11, :cond_8

    aget-object v10, v8, v9

    sget-object v11, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v4, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v10, v8, v9

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    sget-object v8, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v4, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    move v6, v2

    :goto_8
    array-length v7, v0

    if-ge v6, v7, :cond_e

    aget-object v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/awt/Color;->black:Ljava/awt/Color;

    if-ne v7, v8, :cond_d

    aget-object v7, v0, v2

    if-ne v5, v7, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getTopLevel()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v7

    goto :goto_9

    :cond_b
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getSubroutine(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v7

    :goto_9
    check-cast v7, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->addInstruction(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    aget-object v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    aget-object v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instruction \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is part of more than one subroutine (or of the top level and a subroutine)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    aget-object v6, v0, v2

    if-eq v5, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getSubroutine(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->setLeavingRET()V

    goto/16 :goto_3

    :cond_f
    move v1, v2

    :goto_b
    array-length v3, p1

    if-ge v1, v3, :cond_14

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getStartPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    :goto_c
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getEndPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    if-eq v3, v4, :cond_13

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_10
    :goto_d
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_10

    invoke-interface {v5, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->contains(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_d

    :cond_11
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subroutine instruction \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is protected by an exception handler, \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'. This is forbidden by the JustIce verifier due to its clear definition of subroutines."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    goto :goto_c

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->getTopLevel()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->noRecursiveCalls(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;Ljava/util/HashSet;)V

    return-void
.end method

.method private static getSuccessors(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-eqz v6, :cond_0

    return-object v1

    :cond_0
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    if-eqz v6, :cond_1

    return-object v1

    :cond_1
    instance-of v6, v5, Lcom/sun/org/apache/bcel/internal/generic/ATHROW;

    if-eqz v6, :cond_2

    return-object v1

    :cond_2
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3

    :cond_3
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;

    if-eqz v1, :cond_4

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/GotoInstruction;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3

    :cond_4
    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    if-eqz v1, :cond_6

    instance-of v1, v5, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v1, :cond_5

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

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v4, v0

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v4, v2

    return-object v4

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    aput-object p0, v3, v0

    return-object v3
.end method

.method private noRecursiveCalls(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;Ljava/util/HashSet;)V
    .locals 3

    invoke-interface {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->subSubs()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->getLeavingRET()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/RET;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/RET;->getIndex()I

    move-result v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->noRecursiveCalls(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;Ljava/util/HashSet;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object p0, p1, v0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subroutine with local variable \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->access$000(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', JSRs \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', RET \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;->access$200(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines$SubroutineImpl;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is called by a subroutine which uses the same local variable index as itself; maybe even a recursive call? JustIce\'s clean definition of a subroutine forbids both."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public getSubroutine(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    if-eq p1, p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "TOPLEVEL special subroutine requested; use getTopLevel()."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "Subroutine requested for an InstructionHandle that is not a leader of a subroutine."

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTopLevel()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->TOPLEVEL:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    return-object p0
.end method

.method public subroutineOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutine;->contains(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: Please verify \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' lies in dead code."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;->subroutines:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n---\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
