.class Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeCompareElem"
.end annotation


# instance fields
.field m_key1Value:Ljava/lang/Object;

.field m_key2Value:Ljava/lang/Object;

.field m_node:I

.field maxkey:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->this$0:Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->maxkey:I

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_node:I

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v2, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v1, v2, p2, v3}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v2

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentNode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    :cond_1
    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter;->m_execContext:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    iget-boolean p2, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p2, v0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
