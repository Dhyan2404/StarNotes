.class public Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;
.super Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackProducer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xb4

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;-><init>(SI)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/generic/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitExceptionThrower(Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackConsumer(Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitStackProducer(Lcom/sun/org/apache/bcel/internal/generic/StackProducer;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitTypedInstruction(Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitLoadClass(Lcom/sun/org/apache/bcel/internal/generic/LoadClass;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitCPInstruction(Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitFieldOrMethod(Lcom/sun/org/apache/bcel/internal/generic/FieldOrMethod;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitFieldInstruction(Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/Visitor;->visitGETFIELD(Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;)V

    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_FIELD_AND_METHOD_RESOLUTION:[Ljava/lang/Class;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

    aput-object v2, v0, v1

    array-length p0, p0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NULL_POINTER_EXCEPTION:Ljava/lang/Class;

    aput-object v1, v0, p0

    return-object v0
.end method

.method public produceStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldSize(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result p0

    return p0
.end method
