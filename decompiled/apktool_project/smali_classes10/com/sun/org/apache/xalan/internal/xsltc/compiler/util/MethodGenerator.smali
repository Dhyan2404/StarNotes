.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.super Lcom/sun/org/apache/bcel/internal/generic/MethodGen;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Constants;


# static fields
.field private static final DOM_INDEX:I = 0x1

.field private static final END_ELEMENT_SIG:Ljava/lang/String; = "(Ljava/lang/String;)V"

.field private static final HANDLER_INDEX:I = 0x3

.field protected static final INVALID_INDEX:I = -0x1

.field private static final ITERATOR_INDEX:I = 0x2

.field private static final START_ELEMENT_SIG:Ljava/lang/String; = "(Ljava/lang/String;)V"


# instance fields
.field private _allocatorInit:Z

.field private final _aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _attribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _endDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _endElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private _iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private _istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private _mapTypeSub:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

.field private final _namespace:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _nextNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private _preCompiled:Ljava/util/Hashtable;

.field private final _reset:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _setStartNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private _slotAllocator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;

.field private final _startDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _startElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _uniqueAttribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_allocatorInit:Z

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_preCompiled:Ljava/util/Hashtable;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-direct {p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p1, "com.sun.org.apache.xml.internal.serializer.SerializationHandler"

    const-string p5, "startElement"

    const-string p6, "(Ljava/lang/String;)V"

    invoke-virtual {p8, p1, p5, p6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    new-instance p7, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p7, p5, p3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_startElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p5, "endElement"

    invoke-virtual {p8, p1, p5, p6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    new-instance p6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p6, p5, p3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_endElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p5, "addAttribute"

    const-string p6, "(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-virtual {p8, p1, p5, p6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    new-instance p7, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p7, p5, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_attribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p5, "addUniqueAttribute"

    const-string p7, "(Ljava/lang/String;Ljava/lang/String;I)V"

    invoke-virtual {p8, p1, p5, p7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    new-instance p7, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v0, 0x4

    invoke-direct {p7, p5, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_uniqueAttribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p5, "namespaceAfterStartElement"

    invoke-virtual {p8, p1, p5, p6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    new-instance p6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p6, p5, p2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_namespace:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p2, "startDocument"

    const-string p5, "()V"

    invoke-virtual {p8, p1, p2, p5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    new-instance p6, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p6, p2, p4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_startDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p2, "endDocument"

    invoke-virtual {p8, p1, p2, p5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_endDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p1, "setStartNode"

    const-string p2, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    const-string p5, "com.sun.org.apache.xml.internal.dtm.DTMAxisIterator"

    invoke-virtual {p8, p5, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, p3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_setStartNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p1, "reset"

    const-string p2, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-virtual {p8, p5, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_reset:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p1, "next"

    const-string p2, "()I"

    invoke-virtual {p8, p5, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {p2, p1, p4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_nextNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_slotAllocator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariables()[Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->initialize([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V

    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_allocatorInit:Z

    return-void
.end method


# virtual methods
.method public addInstructionList(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_preCompiled:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_allocatorInit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public addLocalVariable2(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_slotAllocator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->allocateSlot(Lcom/sun/org/apache/bcel/internal/generic/Type;)I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-super/range {v1 .. v6}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    return-object p0
.end method

.method public final attribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_attribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final endDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_endDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final endElement()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_endElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public getInstructionList(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_preCompiled:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    return-object p0
.end method

.method public getLocalIndex(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalVariable(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p0

    return p0
.end method

.method public getLocalVariable(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariables()[Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-nez v0, :cond_1

    const-string v0, "current"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ICONST;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ICONST;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final namespace()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_namespace:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final nextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_nextNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public removeLocalVariable(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_slotAllocator:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/SlotAllocator;->releaseSlot(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeLocalVariable(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V

    return-void
.end method

.method public final reset()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_reset:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public setMaxLocals()V
    .locals 3

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMaxLocals()I

    move-result v0

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariables()[Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v0, :cond_0

    array-length v0, v1

    :cond_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-super {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxLocals(I)V

    return-void
.end method

.method public final setStartNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_setStartNode:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final startDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_startDocument:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final startElement()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_startElement:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    const-string v1, "current"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    :goto_0
    return-object v0
.end method

.method public storeDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final uniqueAttribute()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->_uniqueAttribute:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
