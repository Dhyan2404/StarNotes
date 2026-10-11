.class final Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/generic/MethodGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BranchTarget"
.end annotation


# instance fields
.field stackDepth:I

.field target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;->stackDepth:I

    return-void
.end method
