.class public Lcom/sun/org/apache/bcel/internal/generic/ATHROW;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/UnconditionalBranch;
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xbf

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitUnconditionalBranch(Lcom/sun/org/apache/bcel/internal/generic/UnconditionalBranch;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitATHROW(Lcom/sun/org/apache/bcel/internal/generic/ATHROW;)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->THROWABLE:Ljava/lang/Class;

    aput-object v1, p0, v0

    return-object p0
.end method
