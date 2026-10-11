.class Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;
.super Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xpath/XPathEngine;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private final _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/xpath/XPath;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_version:J

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->init(Lorg/apache/xmlbeans/impl/xpath/XPath;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->start()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->release()V

    :cond_2
    return-void
.end method

.method private advance(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->release()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->end()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->element(Ljavax/xml/namespace/QName;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->end()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainerOrFinish()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_5
    :goto_0
    return-void
.end method

.method private doAttrs(ILorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->attr(Ljavax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public next(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_version:J

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Document changed during select"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->advance(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
