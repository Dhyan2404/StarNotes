.class Lcom/sun/org/apache/xalan/internal/processor/ProcessorNamespaceAlias;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x5791275e53accfd4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p2, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;-><init>(I)V

    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object p0

    const-string p3, "#default"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string p5, ""

    if-eqz p4, :cond_0

    invoke-virtual {p2, p5}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->setStylesheetPrefix(Ljava/lang/String;)V

    move-object p0, p5

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->setStylesheetNamespace(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getResultPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p2, p5}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->setResultPrefix(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p3, "ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX_FOR_DEFAULT"

    invoke-virtual {p1, p3, p4, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p5, "ER_INVALID_SET_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p5, p0, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_2
    move-object p0, p3

    :cond_3
    :goto_0
    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->setResultNamespace(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->setNamespaceAlias(Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-void
.end method
