.class public Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x411ff5272262a845L


# instance fields
.field private m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v5, v2

    move-object v6, v5

    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x56

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    const/16 v7, 0x4e

    if-ne v7, v4, :cond_0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getChars()[C

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v6, v1

    :cond_0
    move-object v2, v3

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "javaclass"

    if-nez v2, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_ELEM_CONTENT_NOT_ALLOWED"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getExtensionNamespacesManager()Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v5, :cond_6

    invoke-virtual {p1, v8}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->getExtensions()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result p0

    if-ne p0, v3, :cond_8

    invoke-virtual {p1, v8, v5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v0, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerGeneral"

    invoke-direct {v1, v8, v0, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->registerExtension(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;)V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_NAMESPACE_DECL"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElement(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getElementCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getElements()Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-object p0
.end method

.method public getFunction(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getFunctionCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFunctions()Lcom/sun/org/apache/xml/internal/utils/StringVector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x55

    return p0
.end method

.method public runtimeInit(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public setElements(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_elements:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setFunctions(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_functions:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;->m_prefix:Ljava/lang/String;

    return-void
.end method
