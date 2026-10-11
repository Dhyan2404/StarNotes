.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
.source "SourceFile"


# static fields
.field public static final HTML_OUTPUT:I = 0x2

.field public static final TEXT_OUTPUT:I = 0x3

.field public static final UNKNOWN_OUTPUT:I = 0x0

.field public static final XML_OUTPUT:I = 0x1


# instance fields
.field private _allValidTemplates:Ljava/util/Vector;

.field private _callsNodeset:Z

.field private _className:Ljava/lang/String;

.field private _defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

.field private final _extensions:Ljava/util/Hashtable;

.field private _globals:Ljava/util/Vector;

.field private _hasIdCall:Z

.field private _hasLocalParams:Ljava/lang/Boolean;

.field private _importPrecedence:I

.field public _importedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field public _includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _includedStylesheets:Ljava/util/Vector;

.field private _keys:Ljava/util/Hashtable;

.field private _lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

.field private _loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

.field private _minimumDescendantPrecedence:I

.field private final _modes:Ljava/util/Hashtable;

.field private _multiDocument:Z

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _nextModeSerial:I

.field private _numberFormattingUsed:Z

.field private _outputMethod:I

.field private _outputProperties:Ljava/util/Properties;

.field private _parentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _simplified:Z

.field private _systemId:Ljava/lang/String;

.field private _templateInlining:Z

.field private final _templates:Ljava/util/Vector;

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasLocalParams:Ljava/lang/Boolean;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templates:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_allValidTemplates:Ljava/util/Vector;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_nextModeSerial:I

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_modes:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_extensions:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importPrecedence:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_minimumDescendantPrecedence:I

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_keys:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_numberFormattingUsed:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_simplified:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_multiDocument:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_callsNodeset:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasIdCall:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templateInlining:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputMethod:I

    return-void
.end method

.method private addDOMField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 4

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "_dom"

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->getField()Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    return-void
.end method

.method private addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;

    invoke-static {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->getField()Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    return-void
.end method

.method private checkOutputMethod()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->getOutputMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputMethod:I

    goto :goto_0

    :cond_0
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputMethod:I

    goto :goto_0

    :cond_1
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputMethod:I

    :cond_2
    :goto_0
    return-void
.end method

.method private compileBuildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    const/4 v0, 0x4

    new-array v4, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v0, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v4, v10

    const-string v0, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v1, v4, v0

    const-string v0, "handler"

    const-string v1, "current"

    const-string v2, "document"

    const-string v3, "iterator"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v6, "buildKeys"

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v9

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.TransletException"

    invoke-virtual {v11, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    invoke-virtual {v2, p1, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_keys:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v11, v10}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    const-string p0, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V"

    return-object p0
.end method

.method private compileConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v9

    new-instance v10, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v10}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v1, 0x1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "<init>"

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    move-object v0, v11

    move-object v7, v10

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    const-string v1, "<init>"

    const-string v2, "()V"

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v9, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    const-string v2, "_sNamesArray"

    const-string v4, "[Ljava/lang/String;"

    invoke-virtual {v9, v1, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "namesArray"

    invoke-virtual {v9, v3, v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    const-string v2, "_sUrisArray"

    invoke-virtual {v9, v1, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "urisArray"

    invoke-virtual {v9, v3, v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    const-string v2, "_sTypesArray"

    const-string v5, "[I"

    invoke-virtual {v9, v1, v2, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "typesArray"

    invoke-virtual {v9, v3, v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    const-string v2, "_sNamespaceArray"

    invoke-virtual {v9, v1, v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "namespaceArray"

    invoke-virtual {v9, v3, v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const/16 v1, 0x65

    invoke-direct {v0, v9, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "transletVersion"

    const-string v2, "I"

    invoke-virtual {v9, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasIdCall:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v9, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    const-string v1, "_hasIdCall"

    const-string v2, "Z"

    invoke-virtual {v9, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v10, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_numberFormattingUsed:Z

    if-eqz p0, :cond_2

    invoke-static {p1, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DecimalFormatting;->translateDefaultDFS(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v10, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 p0, 0x1

    invoke-virtual {v11, p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private compileModes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileApplyTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_modes:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->compileApplyTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compileStaticInitializer(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v11

    new-instance v12, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/16 v3, 0x9

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "<clinit>"

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    move-object v2, v13

    move-object v9, v12

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v2, "[Ljava/lang/String;"

    const-string v3, "_sNamesArray"

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_sUrisArray"

    invoke-direct {v0, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "[I"

    const-string v6, "_sTypesArray"

    invoke-direct {v0, v1, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_sNamespaceArray"

    invoke-direct {v0, v1, v2, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getCharacterDataCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    const-string v14, "_scharData"

    const-string v15, "[C"

    if-ge v10, v8, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v15, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addStaticField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamesIndex()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v10, v9, [Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    move-object/from16 v17, v13

    new-array v13, v9, [I

    move-object/from16 v19, v14

    move-object/from16 v18, v15

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v9, :cond_5

    invoke-virtual {v8, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/String;

    move-object/from16 v20, v8

    const/16 v8, 0x3a

    invoke-virtual {v14, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    move-object/from16 v21, v7

    const/4 v7, -0x1

    if-le v8, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v22, v5

    const/16 v5, 0x40

    if-ne v7, v5, :cond_2

    const/4 v5, 0x2

    aput v5, v13, v15

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3f

    if-ne v5, v7, :cond_3

    const/16 v5, 0xd

    aput v5, v13, v15

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    aput v5, v13, v15

    :goto_4
    if-nez v8, :cond_4

    aput-object v14, v10, v15

    goto :goto_5

    :cond_4
    invoke-virtual {v14, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v15

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v20

    move-object/from16 v7, v21

    move-object/from16 v5, v22

    goto :goto_1

    :cond_5
    move-object/from16 v22, v5

    move-object/from16 v21, v7

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v11, v9}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    const-string v7, "java.lang.String"

    invoke-virtual {v11, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v8}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v9, :cond_6

    aget-object v8, v10, v5

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v12, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v14, v11, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v14, v11, v8}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v12, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object v8, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    invoke-virtual {v11, v8, v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v3, v11, v9}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    invoke-virtual {v11, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_7

    aget-object v5, v1, v3

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v12, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v8, v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v8, v11, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    invoke-virtual {v11, v3, v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v1, v11, v9}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;-><init>(Lcom/sun/org/apache/bcel/internal/generic/BasicType;)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_8

    aget v3, v13, v1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v12, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v4, v11, v1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v4, v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    move-object/from16 v4, v22

    invoke-virtual {v11, v3, v6, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getNamespaceIndex()Ljava/util/Vector;

    move-result-object v1

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-direct {v3, v11, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    invoke-virtual {v11, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v11, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v11, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    invoke-virtual {v12, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    move-object/from16 v4, v21

    invoke-virtual {v11, v3, v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    invoke-virtual {v12, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getCharacterDataCount()I

    move-result v1

    const-string v2, "toCharArray"

    const-string v3, "()[C"

    invoke-virtual {v11, v7, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v1, :cond_a

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getCharacterData(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v11, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v18

    invoke-virtual {v11, v4, v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_a
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v12, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-object/from16 v0, v17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private compileTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v2

    const/4 v3, 0x3

    new-array v7, v3, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v3, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const-string v3, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v7, v14

    const-string v3, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v15, 0x2

    aput-object v3, v7, v15

    const-string v3, "iterator"

    const-string v4, "handler"

    const-string v5, "document"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v5, 0x1

    sget-object v6, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v9, "topLevel"

    iget-object v10, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v16

    move-object v4, v12

    move-object v11, v3

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v4 .. v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v4, "com.sun.org.apache.xalan.internal.xsltc.TransletException"

    invoke-virtual {v14, v4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "current"

    invoke-virtual {v14, v7, v4, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v4

    const-string v5, "setFilter"

    const-string v6, "(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v2, v7, v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v6, v2, v13}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v3, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Ljava/util/Vector;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    if-eqz v7, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->resolveDependencies(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    :goto_1
    if-ge v13, v4, :cond_3

    invoke-virtual {v2, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    invoke-virtual {v6, v1, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    instance-of v7, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;

    iget-object v7, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_keys:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DecimalFormatting;

    if-eqz v6, :cond_5

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DecimalFormatting;

    invoke-virtual {v4, v1, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DecimalFormatting;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_2

    :cond_5
    instance-of v6, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;

    if-eqz v6, :cond_4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->getRules()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;->translateRules(Ljava/util/Vector;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)I

    :cond_7
    const-string v0, "stripSpace"

    const-string v2, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;II)Z"

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->containsMethod(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v0, v5, v15}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_8
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    const-string v0, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    return-object v0
.end method

.method private compileTransform(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v1

    const/4 v2, 0x3

    new-array v6, v2, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    const-string v2, "Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    invoke-static {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v6, v12

    const-string v3, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v6, v13

    const-string v3, "Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v6, v4

    const-string v3, "iterator"

    const-string v4, "handler"

    const-string v5, "document"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const-string v8, "transform"

    iget-object v9, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v11

    move-object v3, v15

    move-object v10, v14

    invoke-direct/range {v3 .. v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.TransletException"

    invoke-virtual {v15, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "current"

    invoke-virtual {v15, v6, v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getApplyTemplatesSig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "applyTemplates"

    invoke-virtual {v1, v5, v6, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_dom"

    invoke-virtual {v1, v5, v6, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->isMultiDocument()Z

    move-result v5

    const-string v6, "com.sun.org.apache.xalan.internal.xsltc.dom.MultiDOM"

    if-eqz v5, :cond_0

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string v7, "makeDOMAdapter"

    const-string v8, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;"

    const-string v9, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    invoke-virtual {v1, v9, v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->isMultiDocument()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "<init>"

    const-string v7, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V"

    invoke-virtual {v1, v6, v5, v7}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v6, v5}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v14, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v5, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v1, v12}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    invoke-direct {v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v3, "transferOutputSettings"

    const-string v5, "(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    invoke-virtual {v1, v9, v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileBuildKeys(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "buildKeys"

    invoke-virtual {v1, v5, v6, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "topLevel"

    invoke-virtual {v1, v0, v5, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v14, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_3
    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->startDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->endDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v14, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v15, v13}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->stripAttributes(Z)V

    invoke-virtual {v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->setMaxLocals()V

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack()V

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeNOPs()V

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method private extensionURI(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/StringTokenizer;

    invoke-direct {p2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeStylesheetName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->nextStylesheetSerial()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method private peepHoleOptimization(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    const-string v0, "`aload\'`pop\'`instruction\'"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resolveDependencies(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->getDependencies()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "CIRCULAR_VARIABLE_ERR"

    invoke-virtual {p1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addIncludedStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public addPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templates:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public callsNodeset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_callsNodeset:Z

    return p0
.end method

.method public checkForLoop(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_parentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->checkForLoop(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public display(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    const-string v0, "Stylesheet"

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public excludeExtensionPrefixes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p1

    const-string v0, "exclude-result-prefixes"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extension-element-prefixes"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeURI(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeNamespaces(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeNamespaces(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->extensionURI(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)V

    return-void
.end method

.method public getAllValidTemplates()Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templates:Ljava/util/Vector;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_allValidTemplates:Ljava/util/Vector;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templates:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getAllValidTemplates()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_parentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_allValidTemplates:Ljava/util/Vector;

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_allValidTemplates:Ljava/util/Vector;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public getImportPrecedence()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importPrecedence:I

    return p0
.end method

.method public getLastOutputElement()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    return-object p0
.end method

.method public getMinimumDescendantPrecedence()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_minimumDescendantPrecedence:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getImportPrecedence()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedStylesheets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getMinimumDescendantPrecedence()I

    move-result v3

    if-ge v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_minimumDescendantPrecedence:I

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_minimumDescendantPrecedence:I

    return p0
.end method

.method public getMode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_modes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_nextModeSerial:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_nextModeSerial:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_modes:Ljava/util/Hashtable;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    invoke-direct {v2, p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputMethod()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputMethod:I

    return p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    return-object p0
.end method

.method public getParentStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_parentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public getSourceLoader()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplateInlining()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templateInlining:Z

    return p0
.end method

.method public getTemplates()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templates:Ljava/util/Vector;

    return-object p0
.end method

.method public hasGlobals()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLocalParams()Z
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasLocalParams:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getAllValidTemplates()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->hasParams()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasLocalParams:Ljava/lang/Boolean;

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasLocalParams:Ljava/lang/Boolean;

    return v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isExtension(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_extensions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiDocument()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_multiDocument:Z

    return p0
.end method

.method public isSimplified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_simplified:Z

    return p0
.end method

.method public numberFormattingUsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_numberFormattingUsed:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getParentStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->numberFormattingUsed()V

    :cond_0
    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "MULTIPLE_STYLESHEET_ERR"

    invoke-direct {v1, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_simplified:Z

    if-eqz v1, :cond_1

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeURI(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->parseSimplified(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->parseOwnChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :goto_0
    return-void
.end method

.method public final parseOwnChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-nez v5, :cond_0

    instance-of v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-nez v4, :cond_3

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_3
    iget-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templateInlining:Z

    if-nez v4, :cond_4

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "template$dot$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->setName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public processModes()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_defaultMode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_keys:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->processPatterns(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_modes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_keys:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->processPatterns(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCallsNodeset(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setMultiDocument(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_callsNodeset:Z

    return-void
.end method

.method public setHasIdCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_hasIdCall:Z

    return-void
.end method

.method public setImportPrecedence(I)V
    .locals 3

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importPrecedence:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Include;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Include;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Include;->getIncludedStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-ne v2, p0, :cond_0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportPrecedence(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getImportPrecedence()I

    move-result v0

    if-ge v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getNextImportPrecedence()I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportPrecedence(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getImportPrecedence()I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportPrecedence(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setImportingStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_importedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addIncludedStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void
.end method

.method public setIncludingStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_includedFrom:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addIncludedStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void
.end method

.method public setMultiDocument(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_multiDocument:Z

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_outputProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setParentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_parentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    const-string p1, "__stylesheet_"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->makeStylesheetName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public setSimplified()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_simplified:Z

    return-void
.end method

.method public setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_loader:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_systemId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTemplateInlining(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_templateInlining:Z

    return-void
.end method

.method public translate()V
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_className:Ljava/lang/String;

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    const-string v4, ""

    const/16 v5, 0x21

    const/4 v6, 0x0

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addDOMField(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileTransform(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-eqz v3, :cond_1

    .line 10
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    .line 11
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getModeName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getMode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Mode;->addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    goto :goto_0

    .line 12
    :cond_1
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    if-eqz v3, :cond_2

    .line 13
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeSet;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    if-eqz v3, :cond_0

    .line 15
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    .line 16
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->checkOutputMethod()V

    .line 18
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->processModes()V

    .line 19
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileModes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    .line 20
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileStaticInitializer(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;)V

    .line 21
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_lastOutputElement:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->compileConstructor(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V

    .line 22
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->dumpClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    :cond_4
    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->translate()V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->_globals:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0
.end method
