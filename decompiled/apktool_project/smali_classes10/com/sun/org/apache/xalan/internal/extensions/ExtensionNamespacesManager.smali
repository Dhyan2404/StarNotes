.class public Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_extensions:Ljava/util/Vector;

.field private m_predefExtensions:Ljava/util/Vector;

.field private m_unregisteredExtensions:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->setPredefinedNamespaces()V

    return-void
.end method

.method private setPredefinedNamespaces()V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/java"

    const-string v3, "javapackage"

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage"

    invoke-direct {v1, v2, v6, v5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xslt/java"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v2, v6, v5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xsl.lotus.com/java"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan"

    const-string v3, "javaclass"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.Extensions"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass"

    invoke-direct {v1, v2, v6, v5}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xslt"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/redirect"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.Redirect"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/PipeDocument"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.PipeDocument"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://xml.apache.org/xalan/sql"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.sql.XConnection"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/common"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.ExsltCommon"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/math"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.ExsltMath"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/sets"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.ExsltSets"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/dates-and-times"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.ExsltDatetime"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v2, "http://exslt.org/dynamic"

    const-string v4, "com.sun.org.apache.xalan.internal.lib.ExsltDynamic"

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v6, v4}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v1, "http://exslt.org/strings"

    const-string v2, "com.sun.org.apache.xalan.internal.lib.ExsltStrings"

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public defineJavaNamespace(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    move-result-object p0

    return-object p0
.end method

.method public defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "class:"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "/"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_2

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    :try_start_0
    invoke-static {p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    new-instance p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    const-string v0, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaClass"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v3, "javaclass"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "javapackage"

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "com.sun.org.apache.xalan.internal.extensions.ExtensionHandlerJavaPackage"

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    return-object p0
.end method

.method public namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 1

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public registerExtension(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerExtension(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerUnregisteredNamespaces()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceSupport;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
