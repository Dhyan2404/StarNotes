.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method


# virtual methods
.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    :cond_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
