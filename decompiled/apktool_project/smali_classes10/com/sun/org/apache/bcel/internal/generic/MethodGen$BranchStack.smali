.class final Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/generic/MethodGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BranchStack"
.end annotation


# instance fields
.field branchTargets:Ljava/util/Stack;

.field visitedTargets:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    return-void
.end method

.method private final visit(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final visited(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->visitedTargets:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public pop()Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public push(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->visited(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->branchTargets:Ljava/util/Stack;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->visit(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
