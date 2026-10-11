.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NthDescendantIterator"
.end annotation


# instance fields
.field _pos:I

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    return-void
.end method


# virtual methods
.method public next()I
    .locals 6

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_3
    if-ne v0, v2, :cond_0

    return v0

    :cond_4
    return v1
.end method
