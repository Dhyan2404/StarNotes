.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# instance fields
.field private final _namespace:Ljava/lang/String;

.field private final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_value:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_namespace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_value:Ljava/lang/String;

    const-string p1, ""

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contextDependent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_value:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "literal-expr("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->_value:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
