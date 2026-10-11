.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;
.source "SourceFile"


# static fields
.field private static final XMLNS_STRING:Ljava/lang/String; = "xmlns"


# instance fields
.field private _accessedPrefixes:Ljava/util/Hashtable;

.field private _allAttributesUnique:Z

.field private _attributeElements:Ljava/util/Vector;

.field private _literalElemParent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_literalElemParent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_allAttributesUnique:Z

    return-void
.end method

.method private accessedNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_literalElemParent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->accessedNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private canProduceAttributeNodes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z
    .locals 9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->isIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    return v1

    :cond_1
    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-nez v4, :cond_c

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ValueOf;

    if-nez v4, :cond_c

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslElement;

    if-nez v4, :cond_c

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Comment;

    if-nez v4, :cond_c

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Number;

    if-nez v4, :cond_c

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstruction;

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    return v5

    :cond_4
    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CallTemplate;

    if-nez v4, :cond_b

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ApplyTemplates;

    if-nez v4, :cond_b

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Copy;

    if-nez v4, :cond_b

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CopyOf;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/If;

    if-nez v4, :cond_6

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ForEach;

    if-eqz v4, :cond_7

    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->canProduceAttributeNodes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    return v5

    :cond_7
    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Choose;

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/When;

    if-nez v8, :cond_8

    instance-of v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Otherwise;

    if-eqz v8, :cond_9

    :cond_8
    invoke-direct {p0, v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->canProduceAttributeNodes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    return v5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return v5

    :cond_c
    :goto_4
    return v1
.end method

.method private checkAttributesUnique()Z
    .locals 9

    const/4 v0, 0x1

    invoke-direct {p0, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->canProduceAttributeNodes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_7

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v6, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    if-eqz v6, :cond_1

    return v2

    :cond_1
    instance-of v6, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    if-eqz v6, :cond_6

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v8, v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;

    move-result-object v6

    instance-of v7, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    if-eqz v7, :cond_4

    return v2

    :cond_4
    instance-of v7, v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    if-eqz v7, :cond_6

    check-cast v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    return v2

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v3, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method private isHTMLOutput()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getOutputMethod()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private translateQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const-string v2, "xmlns"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupPrefixAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeNamespaces(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->registerNamespace(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Z)V

    if-eq p1, v1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allAttributesUnique()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_allAttributesUnique:Z

    return p0
.end method

.method public contextDependent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->dependentContents()Z

    move-result p0

    return p0
.end method

.method public display(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteralElement name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public getElemDesc()Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->isHTMLOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_name:Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;->getElemDesc(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemDesc;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getNamespaceScope(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Ljava/util/Enumeration;
    .locals 4

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getPrefixMapping()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_literalElemParent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_qname:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->translateQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getNamespace()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getUseAttributeSets()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v7

    if-ne v4, v7, :cond_2

    invoke-static {v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->isValidQNames(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v5, "INVALID_QNAME_ERR"

    invoke-direct {v4, v5, v6, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_1
    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;

    invoke-direct {v4, v6, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UseAttributeSets;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->setFirstAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getExtensionElementPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v7

    if-ne v4, v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeNamespaces(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getExcludeResultPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v7

    if-ne v4, v7, :cond_4

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->excludeNamespaces(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xmlns"

    if-eqz v7, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->translateQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;

    invoke-direct {v5, v4, v6, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->addAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v5, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v5, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->getNamespaceScope(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Ljava/util/Enumeration;

    move-result-object v3

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->isExcludedNamespace(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->registerNamespace(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Z)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :goto_3
    if-ge v2, v1, :cond_e

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getExtensionElementPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_c

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->unExcludeNamespaces(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getExcludeResultPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_d

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->unExcludeNamespaces(Ljava/lang/String;)V

    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method public registerNamespace(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_literalElemParent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->accessedNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    goto :goto_0

    :cond_1
    if-nez p4, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->generateNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    const-string p3, "xml"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public setFirstAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->checkAttributesUnique()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_allAttributesUnique:Z

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->startElement()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v5, v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->removeElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    move v4, v2

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_accessedPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-ne v7, v6, :cond_3

    if-eq v5, v6, :cond_2

    :cond_3
    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v6, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v5, v0, v7}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->namespace()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslElement;

    if-eqz v4, :cond_6

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslElement;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslElement;->declaresDefaultNS()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v3, v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-direct {v3, v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->namespace()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XslAttribute;

    if-nez v4, :cond_7

    invoke-virtual {v3, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->endElement()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

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

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;->_attributeElements:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
