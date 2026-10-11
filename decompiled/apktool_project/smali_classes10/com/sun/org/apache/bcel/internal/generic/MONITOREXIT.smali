.class public Lcom/sun/org/apache/bcel/internal/generic/MONITOREXIT;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitMONITOREXIT(Lcom/sun/org/apache/bcel/internal/generic/MONITOREXIT;)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NULL_POINTER_EXCEPTION:Ljava/lang/Class;

    aput-object v1, p0, v0

    return-object p0
.end method
