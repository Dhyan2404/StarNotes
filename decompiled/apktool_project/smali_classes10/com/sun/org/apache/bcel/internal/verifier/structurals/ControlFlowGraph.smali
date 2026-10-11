.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;
    }
.end annotation


# instance fields
.field private final exceptionhandlers:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;

.field private instructionContexts:Ljava/util/Hashtable;

.field private final method_gen:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

.field private final subroutines:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;-><init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->subroutines:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;-><init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->exceptionhandlers:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getInstructionHandles()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    aget-object v3, v0, v1

    new-instance v4, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;

    invoke-direct {v4, p0, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph$InstructionContextImpl;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->method_gen:Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->exceptionhandlers:Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->subroutines:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Subroutines;

    return-object p0
.end method


# virtual methods
.method public contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string p1, "InstructionContext requested for an InstructionHandle that\'s not known!"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contextsOf([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->contextOf(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getInstructionContexts()[Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/InstructionContext;

    return-object p0
.end method

.method public isDead(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ControlFlowGraph;->instructionContexts:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
