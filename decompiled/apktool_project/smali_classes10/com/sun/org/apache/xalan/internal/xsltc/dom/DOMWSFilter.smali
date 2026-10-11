.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;


# instance fields
.field private m_currentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

.field private m_currentMapping:[S

.field private m_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

.field private m_mappings:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private m_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_mappings:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    :cond_0
    return-void
.end method


# virtual methods
.method public getShouldStripSpace(ILcom/sun/org/apache/xml/internal/dtm/DTM;)S
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    instance-of v2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_currentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    if-ne p2, v3, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_currentMapping:[S

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_mappings:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getNamesArray()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getUrisArray()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->getTypesArray()[I

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getMapping([Ljava/lang/String;[Ljava/lang/String;[I)[S

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_mappings:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v4, p2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_currentDTM:Lcom/sun/org/apache/xml/internal/dtm/DTM;

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_currentMapping:[S

    :cond_1
    move-object p2, v3

    :goto_0
    invoke-interface {v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result v2

    if-ltz v2, :cond_2

    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget-short p2, p2, v2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;->m_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    invoke-interface {p0, v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;->stripSpace(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    return v1
.end method
