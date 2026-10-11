.class public Lcom/sun/org/apache/bcel/internal/generic/LDIV;
.super Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;-><init>(S)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitArithmeticInstruction(Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLDIV(Lcom/sun/org/apache/bcel/internal/generic/LDIV;)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ARITHMETIC_EXCEPTION:Ljava/lang/Class;

    aput-object v1, p0, v0

    return-object p0
.end method
