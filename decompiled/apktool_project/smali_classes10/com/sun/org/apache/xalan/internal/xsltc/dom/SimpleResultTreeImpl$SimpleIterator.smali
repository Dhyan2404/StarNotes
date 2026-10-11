.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SimpleIterator"
.end annotation


# static fields
.field static final DIRECTION_DOWN:I = 0x1

.field static final DIRECTION_UP:I = 0x0

.field static final NO_TYPE:I = -0x1


# instance fields
.field _currentNode:I

.field _direction:I

.field _type:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_direction:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_type:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_type:I

    .line 6
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_direction:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_direction:I

    .line 9
    iput p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_type:I

    return-void
.end method


# virtual methods
.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    return-void
.end method

.method public next()I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_direction:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    const/4 v4, 0x2

    if-ge v0, v4, :cond_4

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_type:I

    if-eq v4, v2, :cond_3

    if-nez v0, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-ne v0, v3, :cond_2

    if-ne v4, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_4
    return v2

    :cond_5
    :goto_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    if-ltz v0, :cond_a

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_type:I

    if-eq v4, v2, :cond_9

    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-ne v0, v3, :cond_8

    if-ne v4, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_a
    return v2
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_includeSelf:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->_currentNode:I

    return-object p0
.end method
