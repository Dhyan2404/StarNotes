.class public Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_Id:Ljava/lang/String;

.field private m_NonXslTopLevel:Ljava/util/Hashtable;

.field private m_Version:Ljava/lang/String;

.field private m_XmlnsXsl:Ljava/lang/String;

.field private m_attributeSets:Ljava/util/Vector;

.field private m_href:Ljava/lang/String;

.field private m_imports:Ljava/util/Vector;

.field private m_includes:Ljava/util/Vector;

.field private m_isCompatibleMode:Z

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_output:Ljava/util/Vector;

.field private m_prefix_aliases:Ljava/util/Vector;

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheetParent:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

.field private m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

.field private m_systemId:Ljava/lang/String;

.field private m_templates:Ljava/util/Vector;

.field private m_topLevelVariables:Ljava/util/Vector;

.field private m_whitespacePreservingElements:Ljava/util/Vector;

.field private m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_isCompatibleMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_href:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetParent:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitStylesheet(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImportCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getIncludeCount()I

    move-result p2

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getInclude(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getOutputCount()I

    move-result p2

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getOutput(I)Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getAttributeSetCount()I

    move-result p2

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getAttributeSet(I)Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormatCount()I

    move-result p2

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_5

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormat(I)Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getKeyCount()I

    move-result p2

    move v1, v0

    :goto_5
    if-ge v1, p2, :cond_6

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getKey(I)Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result p2

    move v1, v0

    :goto_6
    if-ge v1, p2, :cond_7

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getNamespaceAlias(I)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getTemplateCount()I

    move-result p2

    move v1, v0

    :goto_7
    if-ge v1, p2, :cond_9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getTemplate(I)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParamCount()I

    move-result p2

    move v1, v0

    :goto_8
    if-ge v1, p2, :cond_b

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStripSpaceCount()I

    move-result p2

    move v1, v0

    :goto_9
    if-ge v1, p2, :cond_c

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStripSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result p2

    :goto_a
    if-ge v0, p2, :cond_d

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getPreserveSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :cond_e
    :goto_b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitTopLevelInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    goto :goto_b

    :cond_f
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAttributeSet(I)Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getAttributeSetCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCompatibleMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_isCompatibleMode:Z

    return p0
.end method

.method public getDecimalFormat(I)Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getDecimalFormat(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getDecimalFormat(I)Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getDecimalFormatCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExcludeResultPrefix(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getExcludeResultPrefixCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-object p0
.end method

.method public getImport(I)Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getImportCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInclude(I)Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getIncludeCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getKey(I)Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getKeyCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNamespaceAlias(I)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getNamespaceAliasCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "stylesheet"

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getNonXslTopLevel(Lcom/sun/org/apache/xml/internal/utils/QName;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOutput(I)Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getOutputCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getParam(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemParam;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreserveSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getPreserveSpaceCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStripSpace(I)Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getStripSpaceCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    return-object p0
.end method

.method public getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->isAggregatedType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetParent()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    return-object p0
.end method

.method public getStylesheetParent()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetParent:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0
.end method

.method public getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-object p0
.end method

.method public getTemplate(I)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getTemplateCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVariable(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

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

.method public getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getVariableOrParam(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVariableOrParam(I)Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-result-object v2

    .line 4
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

.method public getVariableOrParamCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_Version:Ljava/lang/String;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method public getXmlnsXsl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-object p0
.end method

.method public isAggregatedType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRoot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public replaceTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->replaceChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public setAttributeSet(Lcom/sun/org/apache/xalan/internal/templates/ElemAttributeSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setDecimalFormat(Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExcludeResultPrefixes(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExcludeResultPrefixs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setExtensionElementPrefixes(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-void
.end method

.method public setImport(Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setInclude(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setKey(Lcom/sun/org/apache/xalan/internal/templates/KeyDeclaration;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :cond_1
    return-void
.end method

.method public setNamespaceAlias(Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setNonXslTopLevel(Lcom/sun/org/apache/xml/internal/utils/QName;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOutput(Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_output:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Lcom/sun/org/apache/xalan/internal/templates/ElemParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setVariable(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V

    return-void
.end method

.method public setPreserveSpaces(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setStripSpaces(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setStylesheetParent(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetParent:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-void
.end method

.method public setStylesheetRoot(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-void
.end method

.method public setTemplate(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    return-void
.end method

.method public setVariable(Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_Version:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_isCompatibleMode:Z

    return-void
.end method

.method public setXmlnsXsl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-void
.end method
