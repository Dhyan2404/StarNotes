.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Message;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# instance fields
.field private _terminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Message;->_terminate:Z

    return-void
.end method


# virtual methods
.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 2

    const-string v0, "terminate"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Message;->_terminate:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "(Ljava/lang/String;)V"

    const-string v5, "<init>"

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v6, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v6, :cond_1

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    const-string v6, "com.sun.org.apache.xml.internal.serializer.ToXMLStream"

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v2, v7}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    const-string v7, "java.io.StringWriter"

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v2, v8}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v8, "()V"

    invoke-virtual {v0, v7, v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-virtual {v0, v6, v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v9, "setWriter"

    const-string v10, "(Ljava/io/Writer;)V"

    const-string v11, "com.sun.org.apache.xml.internal.serializer.SerializerBase"

    invoke-virtual {v0, v11, v9, v10}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string v9, "UTF-8"

    invoke-direct {v6, v0, v9}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v9, "setEncoding"

    invoke-virtual {v0, v11, v9, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v9, "setOmitXMLDeclaration"

    const-string v10, "(Z)V"

    invoke-virtual {v0, v11, v9, v10}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v9, "startDocument"

    invoke-virtual {v0, v11, v9, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v9}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v6, "endDocument"

    invoke-virtual {v0, v11, v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v6, "toString"

    const-string v8, "()Ljava/lang/String;"

    invoke-virtual {v0, v7, v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {p1, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :goto_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string p2, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    const-string v2, "displayMessage"

    invoke-virtual {v0, p2, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Message;->_terminate:Z

    if-ne p0, v3, :cond_3

    const-string p0, "java.lang.RuntimeException"

    invoke-virtual {v0, p0, v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const-string p2, "Termination forced by an xsl:message instruction"

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ATHROW:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_3
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

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
