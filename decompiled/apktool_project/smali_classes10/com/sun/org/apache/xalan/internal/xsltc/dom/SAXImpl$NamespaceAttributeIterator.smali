.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceAttributeIterator"
.end annotation


# instance fields
.field private final _nsType:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->_nsType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->_nsType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNSType(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->_nsType:I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttribute(I)I

    move-result p1

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNSType(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceAttributeIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_3
    return-object p0
.end method
