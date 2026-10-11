.class public Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;
.super Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/Visitor;


# instance fields
.field private cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field private frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/EmptyVisitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method private locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getLocals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    return-object p0
.end method

.method private stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->getStack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setConstantPoolGen(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public setFrame(Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->frame:Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;

    return-void
.end method

.method public visitAALOAD(Lcom/sun/org/apache/bcel/internal/generic/AALOAD;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getElementType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitAASTORE(Lcom/sun/org/apache/bcel/internal/generic/AASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitACONST_NULL(Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitALOAD(Lcom/sun/org/apache/bcel/internal/generic/ALOAD;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitARETURN(Lcom/sun/org/apache/bcel/internal/generic/ARETURN;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitARRAYLENGTH(Lcom/sun/org/apache/bcel/internal/generic/ARRAYLENGTH;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitASTORE(Lcom/sun/org/apache/bcel/internal/generic/ASTORE;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitATHROW(Lcom/sun/org/apache/bcel/internal/generic/ATHROW;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->clear()V

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    const-string p1, "Ljava/lang/NullPointerException;"

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitBALOAD(Lcom/sun/org/apache/bcel/internal/generic/BALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitBASTORE(Lcom/sun/org/apache/bcel/internal/generic/BASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitBIPUSH(Lcom/sun/org/apache/bcel/internal/generic/BIPUSH;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitCALOAD(Lcom/sun/org/apache/bcel/internal/generic/CALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitCASTORE(Lcom/sun/org/apache/bcel/internal/generic/CASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitCHECKCAST(Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitD2F(Lcom/sun/org/apache/bcel/internal/generic/D2F;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitD2I(Lcom/sun/org/apache/bcel/internal/generic/D2I;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitD2L(Lcom/sun/org/apache/bcel/internal/generic/D2L;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDADD(Lcom/sun/org/apache/bcel/internal/generic/DADD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDALOAD(Lcom/sun/org/apache/bcel/internal/generic/DALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDASTORE(Lcom/sun/org/apache/bcel/internal/generic/DASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitDCMPG(Lcom/sun/org/apache/bcel/internal/generic/DCMPG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDCMPL(Lcom/sun/org/apache/bcel/internal/generic/DCMPL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDCONST(Lcom/sun/org/apache/bcel/internal/generic/DCONST;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDDIV(Lcom/sun/org/apache/bcel/internal/generic/DDIV;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDLOAD(Lcom/sun/org/apache/bcel/internal/generic/DLOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDMUL(Lcom/sun/org/apache/bcel/internal/generic/DMUL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDNEG(Lcom/sun/org/apache/bcel/internal/generic/DNEG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDREM(Lcom/sun/org/apache/bcel/internal/generic/DREM;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDRETURN(Lcom/sun/org/apache/bcel/internal/generic/DRETURN;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitDSTORE(Lcom/sun/org/apache/bcel/internal/generic/DSTORE;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDSUB(Lcom/sun/org/apache/bcel/internal/generic/DSUB;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDUP(Lcom/sun/org/apache/bcel/internal/generic/DUP;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDUP2(Lcom/sun/org/apache/bcel/internal/generic/DUP2;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitDUP2_X1(Lcom/sun/org/apache/bcel/internal/generic/DUP2_X1;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitDUP2_X2(Lcom/sun/org/apache/bcel/internal/generic/DUP2_X2;)V
    .locals 4

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitDUP_X1(Lcom/sun/org/apache/bcel/internal/generic/DUP_X1;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitDUP_X2(Lcom/sun/org/apache/bcel/internal/generic/DUP_X2;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :goto_0
    return-void
.end method

.method public visitF2D(Lcom/sun/org/apache/bcel/internal/generic/F2D;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitF2I(Lcom/sun/org/apache/bcel/internal/generic/F2I;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitF2L(Lcom/sun/org/apache/bcel/internal/generic/F2L;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFADD(Lcom/sun/org/apache/bcel/internal/generic/FADD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFALOAD(Lcom/sun/org/apache/bcel/internal/generic/FALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFASTORE(Lcom/sun/org/apache/bcel/internal/generic/FASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitFCMPG(Lcom/sun/org/apache/bcel/internal/generic/FCMPG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFCMPL(Lcom/sun/org/apache/bcel/internal/generic/FCMPL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFCONST(Lcom/sun/org/apache/bcel/internal/generic/FCONST;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFDIV(Lcom/sun/org/apache/bcel/internal/generic/FDIV;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFLOAD(Lcom/sun/org/apache/bcel/internal/generic/FLOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFMUL(Lcom/sun/org/apache/bcel/internal/generic/FMUL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFNEG(Lcom/sun/org/apache/bcel/internal/generic/FNEG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFREM(Lcom/sun/org/apache/bcel/internal/generic/FREM;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFRETURN(Lcom/sun/org/apache/bcel/internal/generic/FRETURN;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitFSTORE(Lcom/sun/org/apache/bcel/internal/generic/FSTORE;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitFSUB(Lcom/sun/org/apache/bcel/internal/generic/FSUB;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitGETFIELD(Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitGETSTATIC(Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;->getFieldType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitGOTO(Lcom/sun/org/apache/bcel/internal/generic/GOTO;)V
    .locals 0

    return-void
.end method

.method public visitGOTO_W(Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;)V
    .locals 0

    return-void
.end method

.method public visitI2B(Lcom/sun/org/apache/bcel/internal/generic/I2B;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitI2C(Lcom/sun/org/apache/bcel/internal/generic/I2C;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitI2D(Lcom/sun/org/apache/bcel/internal/generic/I2D;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitI2F(Lcom/sun/org/apache/bcel/internal/generic/I2F;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitI2L(Lcom/sun/org/apache/bcel/internal/generic/I2L;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitI2S(Lcom/sun/org/apache/bcel/internal/generic/I2S;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIADD(Lcom/sun/org/apache/bcel/internal/generic/IADD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIALOAD(Lcom/sun/org/apache/bcel/internal/generic/IALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIAND(Lcom/sun/org/apache/bcel/internal/generic/IAND;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIASTORE(Lcom/sun/org/apache/bcel/internal/generic/IASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitICONST(Lcom/sun/org/apache/bcel/internal/generic/ICONST;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIDIV(Lcom/sun/org/apache/bcel/internal/generic/IDIV;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIFEQ(Lcom/sun/org/apache/bcel/internal/generic/IFEQ;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFGE(Lcom/sun/org/apache/bcel/internal/generic/IFGE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFGT(Lcom/sun/org/apache/bcel/internal/generic/IFGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFLE(Lcom/sun/org/apache/bcel/internal/generic/IFLE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFLT(Lcom/sun/org/apache/bcel/internal/generic/IFLT;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFNE(Lcom/sun/org/apache/bcel/internal/generic/IFNE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFNONNULL(Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIFNULL(Lcom/sun/org/apache/bcel/internal/generic/IFNULL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ACMPEQ(Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPEQ;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ACMPNE(Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPNE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPEQ(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPGE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPGT(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPLE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPLT(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIF_ICMPNE(Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitIINC(Lcom/sun/org/apache/bcel/internal/generic/IINC;)V
    .locals 0

    return-void
.end method

.method public visitILOAD(Lcom/sun/org/apache/bcel/internal/generic/ILOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIMUL(Lcom/sun/org/apache/bcel/internal/generic/IMUL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitINEG(Lcom/sun/org/apache/bcel/internal/generic/INEG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitINSTANCEOF(Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitINVOKEINTERFACE(Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_3
    return-void
.end method

.method public visitINVOKESPECIAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getMethodName(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->peek(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Frame;->_this:Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->initializeObject(Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->initializeObject(Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;)V

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_4
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_5
    return-void
.end method

.method public visitINVOKESTATIC(Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_3
    return-void
.end method

.method public visitINVOKEVIRTUAL(Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getArgumentTypes(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;->getReturnType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_3
    return-void
.end method

.method public visitIOR(Lcom/sun/org/apache/bcel/internal/generic/IOR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIREM(Lcom/sun/org/apache/bcel/internal/generic/IREM;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIRETURN(Lcom/sun/org/apache/bcel/internal/generic/IRETURN;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitISHL(Lcom/sun/org/apache/bcel/internal/generic/ISHL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitISHR(Lcom/sun/org/apache/bcel/internal/generic/ISHR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitISTORE(Lcom/sun/org/apache/bcel/internal/generic/ISTORE;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitISUB(Lcom/sun/org/apache/bcel/internal/generic/ISUB;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIUSHR(Lcom/sun/org/apache/bcel/internal/generic/IUSHR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitIXOR(Lcom/sun/org/apache/bcel/internal/generic/IXOR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitJSR(Lcom/sun/org/apache/bcel/internal/generic/JSR;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;->physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitJSR_W(Lcom/sun/org/apache/bcel/internal/generic/JSR_W;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/JsrInstruction;->physicalSuccessor()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ReturnaddressType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitL2D(Lcom/sun/org/apache/bcel/internal/generic/L2D;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitL2F(Lcom/sun/org/apache/bcel/internal/generic/L2F;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitL2I(Lcom/sun/org/apache/bcel/internal/generic/L2I;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLADD(Lcom/sun/org/apache/bcel/internal/generic/LADD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLALOAD(Lcom/sun/org/apache/bcel/internal/generic/LALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLAND(Lcom/sun/org/apache/bcel/internal/generic/LAND;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLASTORE(Lcom/sun/org/apache/bcel/internal/generic/LASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitLCMP(Lcom/sun/org/apache/bcel/internal/generic/LCMP;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLCONST(Lcom/sun/org/apache/bcel/internal/generic/LCONST;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLDC(Lcom/sun/org/apache/bcel/internal/generic/LDC;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_1
    instance-of p1, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_2
    return-void
.end method

.method public visitLDC2_W(Lcom/sun/org/apache/bcel/internal/generic/LDC2_W;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_0
    instance-of p1, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_1
    return-void
.end method

.method public visitLDC_W(Lcom/sun/org/apache/bcel/internal/generic/LDC_W;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_1
    instance-of p1, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    :cond_2
    return-void
.end method

.method public visitLDIV(Lcom/sun/org/apache/bcel/internal/generic/LDIV;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLLOAD(Lcom/sun/org/apache/bcel/internal/generic/LLOAD;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->get(I)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLMUL(Lcom/sun/org/apache/bcel/internal/generic/LMUL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLNEG(Lcom/sun/org/apache/bcel/internal/generic/LNEG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLOOKUPSWITCH(Lcom/sun/org/apache/bcel/internal/generic/LOOKUPSWITCH;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitLOR(Lcom/sun/org/apache/bcel/internal/generic/LOR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLREM(Lcom/sun/org/apache/bcel/internal/generic/LREM;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLRETURN(Lcom/sun/org/apache/bcel/internal/generic/LRETURN;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitLSHL(Lcom/sun/org/apache/bcel/internal/generic/LSHL;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLSHR(Lcom/sun/org/apache/bcel/internal/generic/LSHR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLSTORE(Lcom/sun/org/apache/bcel/internal/generic/LSTORE;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->locals()Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/LocalVariables;->set(ILcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLSUB(Lcom/sun/org/apache/bcel/internal/generic/LSUB;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLUSHR(Lcom/sun/org/apache/bcel/internal/generic/LUSHR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitLXOR(Lcom/sun/org/apache/bcel/internal/generic/LXOR;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitMONITORENTER(Lcom/sun/org/apache/bcel/internal/generic/MONITORENTER;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitMONITOREXIT(Lcom/sun/org/apache/bcel/internal/generic/MONITOREXIT;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitMULTIANEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;->getDimensions()S

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitNEW(Lcom/sun/org/apache/bcel/internal/generic/NEW;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->cpg:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CPInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/UninitializedObjectType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitNEWARRAY(Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitNOP(Lcom/sun/org/apache/bcel/internal/generic/NOP;)V
    .locals 0

    return-void
.end method

.method public visitPOP(Lcom/sun/org/apache/bcel/internal/generic/POP;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitPOP2(Lcom/sun/org/apache/bcel/internal/generic/POP2;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    :cond_0
    return-void
.end method

.method public visitPUTFIELD(Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitPUTSTATIC(Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitRET(Lcom/sun/org/apache/bcel/internal/generic/RET;)V
    .locals 0

    return-void
.end method

.method public visitRETURN(Lcom/sun/org/apache/bcel/internal/generic/RETURN;)V
    .locals 0

    return-void
.end method

.method public visitSALOAD(Lcom/sun/org/apache/bcel/internal/generic/SALOAD;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitSASTORE(Lcom/sun/org/apache/bcel/internal/generic/SASTORE;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public visitSIPUSH(Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitSWAP(Lcom/sun/org/apache/bcel/internal/generic/SWAP;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->push(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public visitTABLESWITCH(Lcom/sun/org/apache/bcel/internal/generic/TABLESWITCH;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/ExecutionVisitor;->stack()Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/OperandStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method
