.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceChildrenIterator"
.end annotation


# instance fields
.field private final _nsType:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->_nsType:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v2, -0x2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->access$200(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-static {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->access$300(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNSType(I)I

    move-result v3

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->_nsType:I

    if-ne v3, v4, :cond_1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-static {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->access$400(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceChildrenIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_2
    return-object p0
.end method
