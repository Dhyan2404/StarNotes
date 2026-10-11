.class public Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;
.super Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/LoadClass;
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xc1

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;-><init>(SI)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitINSTANCEOF(Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:[Ljava/lang/Class;

    return-object p0
.end method

.method public getLoadClassType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    instance-of p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    :cond_0
    instance-of p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
