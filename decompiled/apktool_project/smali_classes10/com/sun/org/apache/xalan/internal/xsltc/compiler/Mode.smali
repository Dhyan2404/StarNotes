.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Constants;


# instance fields
.field private _attribNodeGroup:Ljava/util/Vector;

.field private _attribNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

.field private _childNodeGroup:Ljava/util/Vector;

.field private _childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

.field private _currentIndex:I

.field private _idxGroup:Ljava/util/Vector;

.field private _idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

.field private _importLevels:Ljava/util/Hashtable;

.field private _keys:Ljava/util/Hashtable;

.field private final _methodName:Ljava/lang/String;

.field private final _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _namedTemplates:Ljava/util/Hashtable;

.field private _neededTemplates:Ljava/util/Hashtable;

.field private _patternGroups:[Ljava/util/Vector;

.field private _rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

.field private final _stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _templateIHs:Ljava/util/Hashtable;

.field private _templateILs:Ljava/util/Hashtable;

.field private _templates:Ljava/util/Vector;

.field private _testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_namedTemplates:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateILs:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_keys:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyTemplates"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_methodName:Ljava/lang/String;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    const/16 p1, 0x20

    new-array p1, p1, [Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    return-void
.end method

.method private addPattern(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    mul-int/lit8 v3, p1, 0x2

    new-array v3, v3, [Ljava/util/Vector;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getAxis()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    aget-object v0, p0, p1

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    aput-object v0, p0, p1

    :cond_3
    move-object p1, v0

    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move p0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p0, v0, :cond_7

    invoke-virtual {p1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->noSmallerThan(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2, p0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private addPatternToGroup(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addPattern(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->getNodeType()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addPattern(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->noSmallerThan(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    :cond_3
    :goto_0
    return-void
.end method

.method private appendTemplateCode(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateILs:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private appendTestSequences(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private compileDefaultRecursion(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getApplyTemplatesSig()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getChildren"

    const-string v4, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v5, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->functionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 p1, 0x2

    invoke-direct {p0, v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    return-object v1
.end method

.method private compileDefaultText(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    const-string v1, "characters"

    const-string v2, "(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {p1, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    return-object v0
.end method

.method public static compileGetChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    const-string v1, "getChildren"

    const-string v2, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {p0, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method private compileNamedTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 12

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v8

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->isSimpleNamedTemplate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getParameters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    new-array v4, v0, [Ljava/lang/String;

    const-string v6, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    aput-object v6, v3, v1

    const-string v6, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v3, v10

    const-string v6, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v11, 0x3

    aput-object v6, v3, v11

    const-string v6, "document"

    aput-object v6, v4, v1

    const-string v1, "iterator"

    aput-object v1, v4, v10

    const-string v1, "handler"

    aput-object v1, v4, v7

    const-string v1, "node"

    aput-object v1, v4, v11

    :goto_1
    if-ge v2, v0, :cond_1

    const-string v1, "Ljava/lang/Object;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, -0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v11

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {p1, p2, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v9, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v11, v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private compileNamespaces(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;[Z[ZZLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamespaceIndex()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamesIndex()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-array v9, v4, [I

    new-array v10, v4, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-lez v4, :cond_5

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v4, :cond_0

    aput-object v1, v10, v13

    aput v13, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0xe

    move v13, v4

    move v14, v12

    :goto_1
    add-int/lit8 v15, v7, 0xe

    if-ge v13, v15, :cond_3

    aget-boolean v15, p3, v13

    if-eqz v15, :cond_2

    aget-boolean v15, p4, v13

    move/from16 v4, p5

    if-ne v15, v4, :cond_1

    add-int/lit8 v15, v13, -0xe

    invoke-virtual {v5, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v6, 0x3a

    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v15, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->registerNamespace(Ljava/lang/String;)I

    move-result v6

    iget-object v15, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    array-length v12, v15

    if-ge v13, v12, :cond_1

    aget-object v12, v15, v13

    if-eqz v12, :cond_1

    move-object/from16 v15, p1

    move-object/from16 v11, p2

    invoke-virtual {v12, v15, v11, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v12

    aput-object v12, v10, v6

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v15, p1

    move-object/from16 v11, p2

    goto :goto_2

    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v11, p2

    move/from16 v4, p5

    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0xe

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v11, p2

    if-nez v14, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    const-string v2, "getNamespaceType"

    const-string v4, "(I)I"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v3, v5, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    iget v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v8, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;

    invoke-direct {v0, v9, v10, v1}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object v8

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private compileTemplateCalls(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;II)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v2

    if-lt v2, p4, :cond_0

    if-ge v2, p5, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasContents()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {v3, p3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateILs:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private compileTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileNamedTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasContents()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {v3, p3}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateILs:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private completeTestSequences(ILjava/util/Vector;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    aput-object p2, v0, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addPattern(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private flattenAlternative(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Ljava/util/Hashtable;)V
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    if-eqz v0, :cond_1

    move-object p3, p1

    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->getLeft()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->flattenAlternative(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Ljava/util/Hashtable;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;->getRight()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->flattenAlternative(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    instance-of p3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz p3, :cond_3

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addPatternToGroup(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isAttributeName(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNamespaceName(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private partition(Ljava/util/Vector;II)I
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p3, p3, 0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return p3
.end method

.method private peepHoleOptimization(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    const-string v0, "loadinstruction pop"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :try_start_0
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v0, "iload iload swap istore"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :try_start_1
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    const/4 v7, 0x3

    aget-object v8, v1, v7

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    aget-object v9, v1, v3

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v9

    if-nez v9, :cond_2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v1, v7

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v4

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v4

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v5

    if-ne v4, v5, :cond_2

    aget-object v4, v1, v3

    aget-object v1, v1, v7

    invoke-virtual {p0, v4, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_1
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    const-string v0, "loadinstruction loadinstruction swap"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :catch_2
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :try_start_2
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {p0, v6, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v5, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_2
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_5
    const-string v0, "aload aload"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :catch_3
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :try_start_3
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->hasTargeters()Z

    move-result v1

    if-nez v1, :cond_6

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_6

    aget-object v1, v0, v3

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/DUP;

    invoke-direct {v4}, Lcom/sun/org/apache/bcel/internal/generic/DUP;-><init>()V

    invoke-virtual {p0, v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_3
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :cond_7
    return-void
.end method

.method private prepareTestSequences()V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamesIndex()Ljava/util/Vector;

    move-result-object v1

    const/16 v3, 0xe

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    array-length v4, v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    aget-object v6, v6, v5

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0xe

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->isAttributeName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v5, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_attribNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    invoke-direct {p0, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->completeTestSequences(ILjava/util/Vector;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-direct {v3, v2, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;-><init>(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->reduce()V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->findTemplates(Ljava/util/Dictionary;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeGroup:Ljava/util/Vector;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;-><init>(Ljava/util/Vector;ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->reduce()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->findTemplates(Ljava/util/Dictionary;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxGroup:Ljava/util/Vector;

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;-><init>(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->reduce()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->findTemplates(Ljava/util/Dictionary;)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private quicksort(Ljava/util/Vector;II)Ljava/util/Vector;
    .locals 1

    if-ge p2, p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->partition(Ljava/util/Vector;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->quicksort(Ljava/util/Vector;II)Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->quicksort(Ljava/util/Vector;II)Ljava/util/Vector;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public compileApplyImports(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;II)V
    .locals 37

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamesIndex()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_namedTemplates:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_neededTemplates:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateILs:Ljava/util/Hashtable;

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_patternGroups:[Ljava/util/Vector;

    const/4 v6, 0x0

    iput-object v6, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    iget-object v10, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v3

    move/from16 v4, p2

    if-lt v3, v4, :cond_0

    if-ge v3, v5, :cond_0

    invoke-virtual {v7, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    goto :goto_0

    :cond_1
    move/from16 v4, p2

    iget-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_keys:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->processPatterns(Ljava/util/Hashtable;)V

    const/4 v11, 0x4

    new-array v15, v11, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v1, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/16 v21, 0x0

    aput-object v1, v15, v21

    const-string v1, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v15, v3

    const-string v1, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v15, v2

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v22, 0x3

    aput-object v1, v15, v22

    const-string v12, "iterator"

    const-string v13, "handler"

    const-string v14, "document"

    const-string v2, "node"

    filled-new-array {v14, v12, v13, v2}, [Ljava/lang/String;

    move-result-object v16

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/16 v17, 0x11

    sget-object v18, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->functionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v20

    move-object v12, v13

    move-object v11, v13

    move/from16 v13, v17

    move-object/from16 v24, v14

    move-object/from16 v14, v18

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    invoke-direct/range {v12 .. v20}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.TransletException"

    invoke-virtual {v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    const-string v3, "current"

    invoke-virtual/range {v24 .. v24}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v12

    invoke-virtual {v11, v3, v1, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    iput v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-virtual {v11, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    move-object/from16 v12, v24

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    iget v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v13, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v15

    invoke-direct {v7, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileDefaultRecursion(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v16

    invoke-direct {v7, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileDefaultText(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v17

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v18, 0xe

    add-int/lit8 v1, v1, 0xe

    move-object/from16 v19, v10

    new-array v10, v1, [I

    move/from16 v6, v21

    :goto_1
    if-ge v6, v1, :cond_2

    aput v6, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-array v6, v1, [Z

    move-object/from16 v24, v14

    new-array v14, v1, [Z

    move/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v1, v21

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v27, v1, 0xe

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->isAttributeName(Ljava/lang/String;)Z

    move-result v28

    aput-boolean v28, v6, v27

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->isNamespaceName(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v14, v27

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move/from16 v2, v25

    move-object/from16 v1, p1

    move-object/from16 v23, v10

    move-object/from16 v25, v12

    const/4 v10, 0x2

    move v12, v2

    move-object v2, v11

    move-object/from16 v29, v3

    const/4 v10, 0x1

    move-object v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileTemplateCalls(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;II)V

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v0, v0, v10

    if-eqz v0, :cond_4

    invoke-virtual {v0, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object/from16 v1, v16

    :goto_3
    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    move-object/from16 v27, v2

    goto :goto_4

    :cond_5
    move-object/from16 v27, v15

    :goto_4
    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v2

    move-object v5, v2

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v2

    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v4

    const/high16 v20, -0x80000000

    const-wide v30, -0x10000000000001L

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v32

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v0

    goto :goto_6

    :cond_7
    move/from16 v0, v20

    move-wide/from16 v32, v30

    :goto_6
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v28, v32, v34

    if-eqz v28, :cond_8

    cmpg-double v28, v32, v2

    if-ltz v28, :cond_8

    cmpl-double v28, v32, v2

    if-nez v28, :cond_9

    if-ge v0, v4, :cond_9

    :cond_8
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    :cond_9
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v0, v0, v22

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v30

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v20

    :cond_a
    move/from16 v0, v20

    cmpl-double v20, v30, v34

    if-eqz v20, :cond_b

    cmpg-double v20, v30, v2

    if-ltz v20, :cond_b

    cmpl-double v2, v30, v2

    if-nez v2, :cond_c

    if-ge v0, v4, :cond_c

    :cond_b
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0, v8, v11, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v17

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aput-object v2, v0, v22

    :cond_c
    move-object/from16 v4, v17

    move-object/from16 v17, v1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v14

    move-object v10, v4

    move-object v4, v6

    move-object/from16 v30, v9

    move-object v9, v5

    move/from16 v5, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileNamespaces(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;[Z[ZZLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    :cond_d
    move-object/from16 v5, v17

    :goto_7
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, v20

    move-object/from16 v32, v13

    move-object v13, v5

    move/from16 v5, v31

    move-object/from16 v36, v6

    move-object/from16 v6, v27

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileNamespaces(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;[Z[ZZLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v27

    :cond_e
    move-object/from16 v1, v27

    new-array v2, v12, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move/from16 v3, v18

    :goto_8
    if-ge v3, v12, :cond_13

    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v4, v4, v3

    aget-boolean v5, v14, v3

    if-eqz v5, :cond_10

    aget-boolean v4, v20, v3

    if-eqz v4, :cond_f

    aput-object v1, v2, v3

    goto :goto_9

    :cond_f
    aput-object v13, v2, v3

    goto :goto_9

    :cond_10
    if-eqz v4, :cond_12

    aget-boolean v5, v20, v3

    if-eqz v5, :cond_11

    invoke-virtual {v4, v8, v11, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_9

    :cond_11
    invoke-virtual {v4, v8, v11, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_9

    :cond_12
    aput-object v15, v2, v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    goto :goto_a

    :cond_14
    move-object/from16 v3, v16

    :goto_a
    aput-object v3, v2, v21

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v16

    :cond_15
    const/16 v3, 0x9

    aput-object v16, v2, v3

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v3, v3, v22

    if-eqz v3, :cond_16

    invoke-virtual {v3, v8, v11, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    goto :goto_b

    :cond_16
    move-object v4, v10

    :goto_b
    aput-object v4, v2, v22

    const/16 v3, 0xd

    aput-object v15, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v3, :cond_17

    move-object/from16 v3, v17

    goto :goto_c

    :cond_17
    move-object v3, v15

    :goto_c
    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    if-eqz v4, :cond_18

    invoke-virtual {v4, v8, v11, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_d

    :cond_18
    aput-object v3, v2, v5

    :goto_d
    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v3, :cond_19

    move-object/from16 v3, v17

    goto :goto_e

    :cond_19
    move-object v3, v15

    :goto_e
    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    if-eqz v4, :cond_1a

    invoke-virtual {v4, v8, v11, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    :cond_1a
    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v15, v2, v3

    const/16 v3, 0xb

    aput-object v15, v2, v3

    const/16 v3, 0xa

    aput-object v15, v2, v3

    const/4 v3, 0x6

    aput-object v15, v2, v3

    const/4 v3, 0x5

    aput-object v15, v2, v3

    const/16 v3, 0xc

    aput-object v15, v2, v3

    move/from16 v3, v18

    :goto_f
    if-ge v3, v12, :cond_1f

    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1d

    aget-boolean v5, v14, v3

    if-eqz v5, :cond_1b

    goto :goto_10

    :cond_1b
    aget-boolean v5, v20, v3

    if-eqz v5, :cond_1c

    invoke-virtual {v4, v8, v11, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_11

    :cond_1c
    invoke-virtual {v4, v8, v11, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_11

    :cond_1d
    :goto_10
    aget-boolean v4, v20, v3

    if-eqz v4, :cond_1e

    aput-object v1, v2, v3

    goto :goto_11

    :cond_1e
    aput-object v13, v2, v3

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    move-object/from16 v1, v32

    if-eqz v9, :cond_20

    invoke-virtual {v1, v9}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_20
    const-string v3, "getExpandedTypeID"

    const-string v4, "(I)I"

    const-string v5, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    move-object/from16 v6, v30

    invoke-virtual {v6, v5, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    iget v5, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;

    move-object/from16 v4, v23

    invoke-direct {v3, v4, v2, v15}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->appendTestSequences(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->appendTemplateCode(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    move-object/from16 v2, v36

    if-eqz v2, :cond_21

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_21
    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_22
    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v7, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->peepHoleOptimization(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    return-void
.end method

.method public compileApplyTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 40

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamesIndex()Ljava/util/Vector;

    move-result-object v0

    const/4 v10, 0x3

    new-array v14, v10, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v1, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/16 v20, 0x0

    aput-object v1, v14, v20

    const-string v1, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v14, v6

    const-string v1, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v14, v5

    const-string v1, "iterator"

    const-string v2, "handler"

    const-string v3, "document"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v15

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/16 v12, 0x11

    sget-object v13, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->functionName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getClassName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v19

    move-object v11, v3

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v19}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.TransletException"

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    const-string v11, "current"

    invoke-virtual {v3, v11, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v1

    iput v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    new-instance v11, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v11, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    iget v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/IFLT;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/IFLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v1

    new-instance v13, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {v13, v2}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v12, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object v13

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v12, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v14

    invoke-direct {v7, v8, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileDefaultRecursion(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-direct {v7, v8, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileDefaultText(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v18

    const/16 v19, 0xe

    add-int/lit8 v5, v18, 0xe

    new-array v6, v5, [I

    move-object/from16 v22, v4

    move/from16 v4, v20

    :goto_0
    if-ge v4, v5, :cond_0

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v5, [Z

    move-object/from16 v23, v12

    new-array v12, v5, [Z

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v5, v20

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v26, v5, 0xe

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->isAttributeName(Ljava/lang/String;)Z

    move-result v27

    aput-boolean v27, v4, v26

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->isNamespaceName(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v12, v26

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {v7, v8, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    if-eqz v0, :cond_2

    invoke-virtual {v0, v8, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    iget-object v6, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/16 v21, 0x2

    aget-object v6, v6, v21

    if-eqz v6, :cond_3

    invoke-virtual {v6, v8, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v6

    move-object/from16 v26, v6

    goto :goto_3

    :cond_3
    move-object/from16 v26, v2

    :goto_3
    iget-object v6, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v6, :cond_4

    move-object/from16 v27, v1

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v6, v8, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    iget-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_idxTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    move-object v13, v1

    goto :goto_4

    :cond_4
    move-object/from16 v27, v1

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    const/4 v13, 0x0

    :goto_4
    iget-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v28

    iget-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v1

    const/high16 v6, -0x80000000

    const-wide v30, -0x10000000000001L

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v32

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v6

    move-wide/from16 v32, v30

    :goto_5
    const-wide/high16 v34, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v17, v32, v34

    if-eqz v17, :cond_6

    cmpg-double v17, v32, v28

    if-ltz v17, :cond_6

    cmpl-double v17, v32, v28

    if-nez v17, :cond_7

    if-ge v0, v1, :cond_7

    :cond_6
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0, v8, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    :cond_7
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/16 v16, 0x3

    aget-object v0, v0, v16

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPriority()D

    move-result-wide v30

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->getPosition()I

    move-result v6

    :cond_8
    cmpl-double v0, v30, v34

    if-eqz v0, :cond_9

    cmpg-double v0, v30, v28

    if-ltz v0, :cond_9

    cmpl-double v0, v30, v28

    if-nez v0, :cond_a

    if-ge v6, v1, :cond_a

    :cond_9
    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    invoke-virtual {v0, v8, v3, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    iget-object v1, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v6, 0x3

    aput-object v1, v0, v6

    :cond_a
    move-object v6, v2

    move-object/from16 v17, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v28, v3

    move-object v3, v12

    move-object/from16 v36, v22

    move-object/from16 v22, v4

    move-object/from16 v29, v10

    move/from16 v10, v24

    move/from16 v39, v21

    move-object/from16 v21, v15

    move/from16 v15, v39

    move-object v15, v6

    move-object/from16 v18, v9

    move-object/from16 v37, v25

    const/4 v9, 0x1

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileNamespaces(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;[Z[ZZLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    :cond_b
    move-object/from16 v5, v17

    :goto_6
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object v3, v12

    move-object/from16 v4, v22

    move-object v9, v5

    move/from16 v5, v25

    move-object/from16 v38, v6

    move-object/from16 v6, v26

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileNamespaces(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;[Z[ZZLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v26

    :cond_c
    move-object/from16 v1, v26

    new-array v2, v10, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move/from16 v3, v19

    :goto_7
    if-ge v3, v10, :cond_11

    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v4, v4, v3

    aget-boolean v5, v12, v3

    if-eqz v5, :cond_e

    aget-boolean v4, v22, v3

    if-eqz v4, :cond_d

    aput-object v1, v2, v3

    goto :goto_8

    :cond_d
    aput-object v9, v2, v3

    :goto_8
    move-object/from16 v5, v28

    goto :goto_9

    :cond_e
    if-eqz v4, :cond_10

    aget-boolean v5, v22, v3

    if-eqz v5, :cond_f

    move-object/from16 v5, v28

    invoke-virtual {v4, v8, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_9

    :cond_f
    move-object/from16 v5, v28

    invoke-virtual {v4, v8, v5, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_9

    :cond_10
    move-object/from16 v5, v28

    aput-object v14, v2, v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v28, v5

    goto :goto_7

    :cond_11
    move-object/from16 v5, v28

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    goto :goto_a

    :cond_12
    move-object/from16 v3, v27

    :goto_a
    aput-object v3, v2, v20

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_rootPattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    goto :goto_b

    :cond_13
    move-object/from16 v3, v27

    :goto_b
    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-eqz v3, :cond_14

    invoke-virtual {v3, v8, v5, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v6

    goto :goto_c

    :cond_14
    move-object v6, v15

    :goto_c
    aput-object v6, v2, v4

    const/16 v3, 0xd

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v3, :cond_15

    move-object/from16 v3, v17

    goto :goto_d

    :cond_15
    move-object v3, v14

    :goto_d
    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/4 v6, 0x7

    aget-object v4, v4, v6

    if-eqz v4, :cond_16

    invoke-virtual {v4, v8, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_e

    :cond_16
    aput-object v3, v2, v6

    :goto_e
    iget-object v3, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_childNodeTestSeq:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    if-eqz v3, :cond_17

    move-object/from16 v3, v17

    goto :goto_f

    :cond_17
    move-object v3, v14

    :goto_f
    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    const/16 v6, 0x8

    aget-object v4, v4, v6

    if-eqz v4, :cond_18

    invoke-virtual {v4, v8, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    :cond_18
    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object v14, v2, v3

    const/16 v3, 0xb

    aput-object v14, v2, v3

    const/16 v3, 0xa

    aput-object v14, v2, v3

    const/4 v3, 0x6

    aput-object v14, v2, v3

    const/4 v3, 0x5

    aput-object v14, v2, v3

    const/16 v3, 0xc

    aput-object v14, v2, v3

    move/from16 v3, v19

    :goto_10
    if-ge v3, v10, :cond_1d

    iget-object v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_testSeq:[Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1b

    aget-boolean v6, v12, v3

    if-eqz v6, :cond_19

    goto :goto_11

    :cond_19
    aget-boolean v6, v22, v3

    if-eqz v6, :cond_1a

    invoke-virtual {v4, v8, v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_12

    :cond_1a
    invoke-virtual {v4, v8, v5, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TestSeq;->compile(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_12

    :cond_1b
    :goto_11
    aget-boolean v4, v22, v3

    if-eqz v4, :cond_1c

    aput-object v1, v2, v3

    goto :goto_12

    :cond_1c
    aput-object v9, v2, v3

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1d
    if-eqz v13, :cond_1e

    invoke-virtual {v11, v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->insert(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1e
    const-string v1, "getExpandedTypeID"

    const-string v3, "(I)I"

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    move-object/from16 v6, v18

    invoke-virtual {v6, v4, v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    iget v4, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_currentIndex:I

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    invoke-virtual {v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;

    move-object/from16 v3, v37

    invoke-direct {v1, v3, v2, v14}, Lcom/sun/org/apache/bcel/internal/generic/SWITCH;-><init>([I[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v11, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v7, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->appendTestSequences(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    invoke-direct {v7, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->appendTemplateCode(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    move-object/from16 v1, v38

    if-eqz v1, :cond_1f

    invoke-virtual {v11, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1f
    if-eqz v0, :cond_20

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_20
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {v0, v14}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    move-object/from16 v1, v36

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual {v1, v11}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct {v7, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->peepHoleOptimization(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    iget-object v0, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v8, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileApplyImports(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;II)V

    goto :goto_13

    :cond_21
    return-void
.end method

.method public functionName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_methodName:Ljava/lang/String;

    return-object p0
.end method

.method public functionName(II)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_importLevels:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_methodName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public getTemplateInstructionHandle(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templateIHs:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method

.method public processPatterns(Ljava/util/Hashtable;)V
    .locals 3

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_keys:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->quicksort(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_templates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->isNamed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->disabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->flattenAlternative(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->prepareTestSequences()V

    return-void
.end method
