.class public Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
.super Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/xml/transform/Templates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x35c805222327c5cfL


# instance fields
.field private m_attrSets:Ljava/util/Hashtable;

.field private m_availElems:Ljava/util/Hashtable;

.field private transient m_composeState:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

.field private m_decimalFormatSymbols:Ljava/util/Hashtable;

.field private m_defaultRootRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field private m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field private m_defaultTextRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field private transient m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

.field private m_extensionHandlerClass:Ljava/lang/String;

.field private m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_keyDecls:Ljava/util/Vector;

.field private m_namespaceAliasComposed:Ljava/util/Hashtable;

.field private m_optimizer:Z

.field private m_outputMethodSet:Z

.field private m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

.field m_selectDefault:Lcom/sun/org/apache/xpath/internal/XPath;

.field private m_source_location:Z

.field private m_startRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field private m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

.field private m_variables:Ljava/util/Vector;

.field private m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;-><init>(Ljavax/xml/transform/ErrorListener;)V

    .line 14
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->getElemsAvailable()Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_availElems:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_optimizer:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_incremental:Z

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_source_location:Z

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_isSecureProcessing:Z

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    .line 7
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputMethodSet:Z

    const-string v1, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerExsltFunction"

    .line 8
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setStylesheetRoot(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    .line 10
    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v3, "node()"

    const/4 v6, 0x0

    move-object v2, v1

    move-object v4, p0

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_selectDefault:Lcom/sun/org/apache/xpath/internal/XPath;

    .line 11
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_CANNOT_INIT_DEFAULT_TEMPLATES"

    invoke-static {v1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private QuickSort2(Ljava/util/Vector;II)V
    .locals 5

    if-le p3, p2, :cond_5

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move v1, p2

    move v2, p3

    :cond_0
    :goto_0
    if-gt v1, v2, :cond_3

    :goto_1
    if-ge v1, p3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-le v2, p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    if-gt v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-ge p2, v2, :cond_4

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_4
    if-ge v1, p3, :cond_5

    invoke-direct {p0, p1, v1, p3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    :cond_5
    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object p0
.end method

.method private clearComposeState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_composeState:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method private initDefaultRule(Ljavax/xml/transform/ErrorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v2, "*"

    const/4 v5, 0x1

    move-object v1, v0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_selectDefault:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_startRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultTextRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v3, "text() | @*"

    const/4 v6, 0x1

    move-object v2, v0

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultTextRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultTextRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    new-instance v2, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v4, "."

    const/4 v7, 0x0

    move-object v3, v2

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRootRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const-string v3, "/"

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRootRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;->setIsDefaultTemplate(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRootRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_selectDefault:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V

    return-void
.end method


# virtual methods
.method public addImports(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;ZLjava/util/Vector;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImportCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->addImports(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getIncludeCount()I

    move-result v0

    if-lez v0, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getInclude(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {p0, v3, v1, p3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->addImports(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;ZLjava/util/Vector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public canStripWhiteSpace()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public composeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->composeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-void
.end method

.method public getAttributeSetComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_attrSets:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    return-object p0
.end method

.method public getAvailableElements()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_availElems:Ljava/util/Hashtable;

    return-object p0
.end method

.method public getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_composeState:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    return-object p0
.end method

.method public getDecimalFormatComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/text/DecimalFormatSymbols;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public getDefaultOutputProps()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultRootRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRootRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public final getDefaultRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public final getDefaultTextRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_defaultTextRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getExtensionHandlerClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    return-object p0
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGlobalImportCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getImportNumber(Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v2

    if-ne p1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getIncremental()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_incremental:Z

    return p0
.end method

.method public getKeysComposed()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    return-object p0
.end method

.method public getNamespaceAliasComposed(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    return-object p0
.end method

.method public getOptimizer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_optimizer:Z

    return p0
.end method

.method public getOutputComposed()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultOutputProps()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getSource_location()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_source_location:Z

    return p0
.end method

.method public final getStartRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_startRule:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getTemplateComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplate(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateComposed(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;IIZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;IIZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public getTemplateComposed(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public final getTemplateListComposed()Lcom/sun/org/apache/xalan/internal/templates/TemplateList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    return-object p0
.end method

.method public getVariableOrParamComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVariablesAndParamsComposed()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    return-object p0
.end method

.method public getWhiteSpaceInfo(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initComposeState()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;-><init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_composeState:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    return-void
.end method

.method public isOutputMethodSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputMethodSet:Z

    return p0
.end method

.method public isRoot()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSecureProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return p0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    return-object v0
.end method

.method public recompose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p0, v3, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->addImports(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;ZLjava/util/Vector;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    aget-object v6, v6, v4

    invoke-virtual {v6, v6}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->recomposeIncludes(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_globalImportList:[Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    add-int/lit8 v7, v4, -0x1

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->recomposeImports()V

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->recompose(Ljava/util/Vector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->QuickSort2(Ljava/util/Vector;II)V

    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v4, ""

    invoke-direct {v1, v4}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_attrSets:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->initComposeState()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getGlobalImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v3

    const/4 v4, -0x1

    :goto_4
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getIncludeComposed(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->composeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extNsMgr:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerUnregisteredNamespaces()V

    :cond_5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->clearComposeState()V

    return-void
.end method

.method public recomposeAttributeSets(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_attrSets:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_attrSets:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public recomposeDecimalFormats(Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_decimalFormatSymbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WG_ONE_DEFAULT_XSLDECIMALFORMAT_ALLOWED"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "WG_XSLDECIMALFORMAT_NAMES_MUST_BE_UNIQUE"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public recomposeKeys(Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_keyDecls:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public recomposeNamespaceAliases(Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_namespaceAliasComposed:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getStylesheetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recomposeOutput(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_outputProperties:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V

    return-void
.end method

.method public recomposeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    return-void
.end method

.method public recomposeVariables(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getVariableOrParamComposed(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setIsTopLevel(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->setIndex(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public recomposeWhiteSpaceInfo(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    return-void
.end method

.method public setExtensionHandlerClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_extensionHandlerClass:Ljava/lang/String;

    return-object v0
.end method

.method public setIncremental(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_incremental:Z

    return-void
.end method

.method public setOptimizer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_optimizer:Z

    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_isSecureProcessing:Z

    return-void
.end method

.method public setSource_location(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_source_location:Z

    return-void
.end method

.method public final setTemplateListComposed(Lcom/sun/org/apache/xalan/internal/templates/TemplateList;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_templateList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    return-void
.end method

.method public shouldCheckWhitespace()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldStripWhiteSpace(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v7

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->m_whiteSpaceInfoList:Lcom/sun/org/apache/xalan/internal/templates/TemplateList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/templates/TemplateList;->getTemplate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;ZLcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;->getShouldStripSpace()Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getParent(I)I

    move-result p2

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    invoke-interface {v7, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
