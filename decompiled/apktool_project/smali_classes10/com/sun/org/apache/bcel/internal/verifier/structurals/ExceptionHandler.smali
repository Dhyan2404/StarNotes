.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private catchtype:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field private handlerpc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->catchtype:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->handlerpc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->catchtype:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0
.end method

.method public getHandlerStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;->handlerpc:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method
