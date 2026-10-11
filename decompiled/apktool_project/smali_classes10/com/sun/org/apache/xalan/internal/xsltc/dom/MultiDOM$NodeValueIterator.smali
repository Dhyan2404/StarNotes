.class final Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NodeValueIterator"
.end annotation


# instance fields
.field private final _isReverse:Z

.field private _op:Z

.field private _returnType:I

.field private _source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private _value:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_returnType:I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_value:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_op:Z

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->isReverse()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_isReverse:Z

    return-void
.end method


# virtual methods
.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->setRestartable(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

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

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->gotoMark()V

    return-void
.end method

.method public isReverse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_isReverse:Z

    return p0
.end method

.method public next()I
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_op:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_returnType:I

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getParent(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setMark()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setMark()V

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setRestartable(Z)V

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;->_source:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_0
    return-object p0
.end method
