.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SingletonIterator"
.end annotation


# static fields
.field static final NO_TYPE:I = -0x1


# instance fields
.field _currentNode:I

.field _type:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_type:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    .line 4
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_type:I

    return-void
.end method


# virtual methods
.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_currentNode:I

    return-void
.end method

.method public next()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_currentNode:I

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_type:I

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_currentNode:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;->_currentNode:I

    return-object p0
.end method
