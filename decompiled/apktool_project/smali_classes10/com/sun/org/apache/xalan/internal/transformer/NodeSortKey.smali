.class Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_caseOrderUpper:Z

.field m_col:Ljava/text/Collator;

.field m_descending:Z

.field m_locale:Ljava/util/Locale;

.field m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

.field m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

.field m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

.field m_treatAsNumbers:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xpath/internal/XPath;ZZLjava/lang/String;ZLcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p7, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_namespaceContext:Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_selectPat:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_treatAsNumbers:Z

    iput-boolean p4, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_descending:Z

    iput-boolean p6, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_caseOrderUpper:Z

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object p1

    const-string p2, "WG_CANNOT_FIND_COLLATOR"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    :cond_1
    return-void
.end method
