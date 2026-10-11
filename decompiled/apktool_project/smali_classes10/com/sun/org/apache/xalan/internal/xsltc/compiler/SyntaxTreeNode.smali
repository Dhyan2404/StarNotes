.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Constants;


# static fields
.field protected static final Dummy:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

.field protected static final IndentIncrement:I = 0x4

.field private static final _spaces:[C


# instance fields
.field protected _attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

.field private final _contents:Ljava/util/Vector;

.field private _line:I

.field protected _parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

.field private _parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

.field private _prefixMapping:Ljava/util/Hashtable;

.field protected _qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->Dummy:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    const-string v0, "                                                       "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_spaces:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_line:I

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    .line 11
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_line:I

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_line:I

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAdaptiveRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-direct {p0, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isTextElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private isSimpleRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-direct {p0, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isTextElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isTextElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z
    .locals 5

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/If;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isAdaptiveRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isSimpleRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Choose;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object p1

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-nez v4, :cond_6

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/When;

    if-nez v4, :cond_3

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Otherwise;

    if-eqz v4, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isAdaptiveRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    if-nez p2, :cond_5

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isSimpleRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    if-eqz p2, :cond_a

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;

    if-nez p0, :cond_9

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ApplyTemplates;

    if-eqz p0, :cond_a

    :cond_9
    return v1

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method public addPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public compileResultTree(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v2

    invoke-direct {p0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isSimpleRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-direct {p0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->isAdaptiveRTF(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getDOMClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v7, "getResultTreeFrag"

    const-string v8, "(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;"

    const-string v9, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {v0, v9, v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    const/16 v10, 0x20

    invoke-direct {v8, v0, v10}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v8, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->callsNodeset()Z

    move-result v8

    invoke-direct {v3, v0, v8}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v8, 0x4

    invoke-direct {v3, v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string v7, "getOutputDomBuilder"

    const-string v8, "()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;"

    invoke-virtual {v0, v9, v7, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    invoke-direct {v8, v7, v6}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->startDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->endDocument()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->callsNodeset()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "com/sun/org/apache/xalan/internal/xsltc/DOM"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "<init>"

    const-string v5, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V"

    const-string v6, "com/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter"

    invoke-virtual {v0, v6, p0, v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/DUP_X1;

    invoke-direct {v5}, Lcom/sun/org/apache/bcel/internal/generic/DUP_X1;-><init>()V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->callsNodeset()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ICONST;

    invoke-direct {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ICONST;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    const-string v2, "java.lang.String"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ICONST;

    invoke-direct {p1, v4}, Lcom/sun/org/apache/bcel/internal/generic/ICONST;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;-><init>(Lcom/sun/org/apache/bcel/internal/generic/BasicType;)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ALOAD_0:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v6, "namesArray"

    const-string v7, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    const-string v8, "[Ljava/lang/String;"

    invoke-virtual {v0, v7, v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v6, "urisArray"

    invoke-virtual {v0, v7, v6, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v6, "typesArray"

    const-string v9, "[I"

    invoke-virtual {v0, v7, v6, v9}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    const-string v4, "namespaceArray"

    invoke-virtual {v0, v7, v4, v8}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {v2, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getDOMClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string p0, "addDOMAdapter"

    const-string p1, "(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.dom.MultiDOM"

    invoke-virtual {v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_4
    :goto_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method

.method public contextDependent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dependentContents()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->contextDependent()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public display(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public displayContents(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->display(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final elementAt(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final elementCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lorg/xml/sax/Attributes;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    return-object p0
.end method

.method public final getContents()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    return-object p0
.end method

.method public getImportPrecedence()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getImportPrecedence()I

    move-result p0

    return p0
.end method

.method public final getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_line:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getLineNumber()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    return-object p0
.end method

.method public final getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-object p0
.end method

.method public getPrefixMapping()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    return-object p0
.end method

.method public getQName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-nez v0, :cond_2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public final getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    return-object p0
.end method

.method public final getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object p0

    return-object p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasContents()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final indent(I)V
    .locals 3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_spaces:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final isDummy()Z
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->Dummy:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final lastChild()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    return-object p0
.end method

.method public lookupNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, ""

    if-ne p1, p0, :cond_1

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, ""

    if-ne p1, p0, :cond_2

    if-nez v1, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public final parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p0, p1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->updateScope(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/Vector;-><init>(I)V

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->removeVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-void
.end method

.method public final removeElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method public reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p0, p3, p4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public reportWarning(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p0, p3, p4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public setAttributes(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    return-void
.end method

.method public final setFirstElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method public final setLineNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_line:I

    return-void
.end method

.method public setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    :cond_0
    return-void
.end method

.method public setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-void
.end method

.method public setPrefixMapping(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_prefixMapping:Ljava/util/Hashtable;

    return-void
.end method

.method public setQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public setQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public abstract translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
.end method

.method public translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->unmapRegister(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public abstract typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation
.end method

.method public typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_contents:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method

.method public updateScope(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    instance-of p0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->addParameter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
