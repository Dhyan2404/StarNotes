.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;
.source "SourceFile"


# instance fields
.field private _format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argument(I)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-void
.end method


# virtual methods
.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string v2, "formatNumber"

    const-string v3, "(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.runtime.BasisLibrary"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "getDecimalFormat"

    const-string v4, "(Ljava/lang/String;)Ljava/text/DecimalFormat;"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v0, v5, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    if-nez v4, :cond_0

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :goto_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->numberFormattingUsed()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_value:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_format:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;->argumentCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_resolvedQName:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    if-nez p1, :cond_3

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    :cond_3
    :goto_0
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p1
.end method
