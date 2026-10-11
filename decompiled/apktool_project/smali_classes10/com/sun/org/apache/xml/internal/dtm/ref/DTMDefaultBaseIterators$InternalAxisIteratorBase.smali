.class public abstract Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InternalAxisIteratorBase"
.end annotation


# instance fields
.field protected _currentNode:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method
