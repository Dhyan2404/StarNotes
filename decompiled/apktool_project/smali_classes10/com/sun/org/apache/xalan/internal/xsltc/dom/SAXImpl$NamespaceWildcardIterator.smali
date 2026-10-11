.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceWildcardIterator"
.end annotation


# instance fields
.field protected m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field protected m_nsType:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;II)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_nsType:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    const/16 p3, 0x9

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;

    iput-object v0, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_nsType:I

    iput p0, v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_nsType:I

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "ITERATOR_CLONE_ERR"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public gotoMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    return-void
.end method

.method public isReverse()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->isReverse()Z

    move-result p0

    return p0
.end method

.method public next()I
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNSType(I)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_nsType:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public setMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$NamespaceWildcardIterator;->m_baseIterator:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    :cond_0
    return-object p0
.end method
