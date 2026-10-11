.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _langType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method


# virtual methods
.method public getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    const-string v2, "testLanguage"

    const-string v3, "(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;I)Z"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_langType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;->_lang:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
