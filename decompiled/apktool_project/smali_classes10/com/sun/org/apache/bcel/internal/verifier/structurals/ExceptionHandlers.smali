.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exceptionhandlers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getCatchType()Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getStartPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    :goto_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getEndPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getExceptionHandlers(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)[Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExceptionHandler;

    return-object p0
.end method
