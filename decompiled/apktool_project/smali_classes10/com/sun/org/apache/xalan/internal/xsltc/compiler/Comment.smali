.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Comment;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    return-void
.end method


# virtual methods
.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const-string v4, "(Ljava/lang/String;)V"

    const-string v5, "comment"

    const-string v6, "com.sun.org.apache.xml.internal.serializer.SerializationHandler"

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->canLoadAsArrayOffsetLength()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->loadAsArrayOffsetLength(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const-string p0, "([CII)V"

    invoke-virtual {v0, v6, v5, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v6, v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p1, p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v8, "stringValueHandler"

    const-string v9, "Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;"

    const-string v10, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v0, v10, v8, v9}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string p1, "getValue"

    const-string v2, "()Ljava/lang/String;"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.runtime.StringValueHandler"

    invoke-virtual {v0, v7, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v0, v6, v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p1, p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
