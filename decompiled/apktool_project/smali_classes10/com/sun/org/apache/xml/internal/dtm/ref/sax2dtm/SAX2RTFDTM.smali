.class public Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_currentDocumentNode:I

.field m_emptyCharsCount:I

.field m_emptyDataCount:I

.field m_emptyDataQNCount:I

.field m_emptyNSDeclSetCount:I

.field m_emptyNSDeclSetElemsCount:I

.field m_emptyNodeCount:I

.field mark_char_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field mark_data_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field mark_doq_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field mark_nsdeclelem_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field mark_nsdeclset_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field mark_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    iget-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {p3}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    iget-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p3, :cond_1

    new-instance p2, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {p2}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    iget p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez p2, :cond_2

    move p2, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p1

    :goto_2
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    return-void
.end method


# virtual methods
.method public _documentRoot(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    :goto_0
    move v2, v1

    move v1, p1

    move p1, v2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v2, v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    return-void
.end method

.method public getDocument()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getDocumentRoot(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTreeIncomplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public popRewindMark()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v2

    :goto_4
    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setSize(I)V

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_6

    :cond_8
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public pushRewindMark()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    return-void
.end method
