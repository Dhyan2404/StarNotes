.class public Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xpath/Path;


# instance fields
.field private final _compiledPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

.field private final _currentVar:Ljava/lang/String;

.field private final _pathKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xpath/XPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_pathKey:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_currentVar:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_compiledPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XPathEngine;
    .locals 2

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_compiledPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/xpath/XPath;->sawDeepDot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_compiledPath:Lorg/apache/xmlbeans/impl/xpath/XPath;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;-><init>(Lorg/apache/xmlbeans/impl/xpath/XPath;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_pathKey:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;->_currentVar:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPathSaxon(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/Path;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/Path;->execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    move-result-object p0

    return-object p0
.end method
