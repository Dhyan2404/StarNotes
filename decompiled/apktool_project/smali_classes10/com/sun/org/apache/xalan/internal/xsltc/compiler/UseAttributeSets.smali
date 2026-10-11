.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# static fields
.field private static final ATTR_SET_NOT_FOUND:Ljava/lang/String; = ""


# instance fields
.field private final _sets:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->_sets:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->addAttributeSets(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttributeSets(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->_sets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->_sets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;->_sets:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupAttributeSet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V"

    invoke-virtual {v0, v5, v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ATTRIBSET_UNDEF_ERR"

    invoke-virtual {p0, p0, v5, v6, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
