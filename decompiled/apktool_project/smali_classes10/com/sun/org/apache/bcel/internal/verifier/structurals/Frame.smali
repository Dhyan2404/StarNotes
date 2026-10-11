.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static _this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;


# instance fields
.field private locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

.field private stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    .line 3
    new-instance p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getClone()Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    return-object p0
.end method

.method public getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    return-object p0
.end method

.method public getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local Variables:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->locals:Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OperandStack:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->stack:Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
