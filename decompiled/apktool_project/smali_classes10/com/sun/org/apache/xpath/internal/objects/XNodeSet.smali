.class public Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
.super Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;
.source "SourceFile"


# static fields
.field static final S_EQ:Lcom/sun/org/apache/xpath/internal/objects/EqualComparator;

.field static final S_GT:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanComparator;

.field static final S_GTE:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanOrEqualComparator;

.field static final S_LT:Lcom/sun/org/apache/xpath/internal/objects/LessThanComparator;

.field static final S_LTE:Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;

.field static final S_NEQ:Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;

.field static final serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/LessThanComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/LessThanComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_LT:Lcom/sun/org/apache/xpath/internal/objects/LessThanComparator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_LTE:Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/GreaterThanComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/GreaterThanComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_GT:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanComparator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/GreaterThanOrEqualComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/GreaterThanOrEqualComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_GTE:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanOrEqualComparator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/EqualComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/EqualComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_EQ:Lcom/sun/org/apache/xpath/internal/objects/EqualComparator;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_NEQ:Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    const/4 p2, -0x1

    if-eq p2, p1, :cond_0

    .line 21
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p2, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;->addNode(I)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;-><init>()V

    .line 3
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    .line 5
    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 6
    iget v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(ILcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;-><init>()V

    .line 12
    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_iter:Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setIter(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    .line 13
    iget-object v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 14
    iget v0, p1, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_last:I

    .line 15
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V

    return-void
.end method

.method public bool()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public boolWithSideEffects()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    check-cast p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p1

    const/4 v1, 0x0

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v6

    if-eq v2, v6, :cond_5

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v6

    if-nez v1, :cond_3

    :goto_1
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v7

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_2
    move v5, v3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/xml/internal/utils/XMLString;

    invoke-virtual {p2, v6, v9}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->reset()V

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->reset()V

    goto/16 :goto_9

    :cond_6
    if-ne v3, v0, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->bool()Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_7
    const-wide/16 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareNumbers(DD)Z

    move-result v5

    goto/16 :goto_9

    :cond_8
    const/4 v1, 0x2

    if-ne v1, v0, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v5

    :cond_9
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p1

    if-eq v2, p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v5, v6}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareNumbers(DD)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->reset()V

    :goto_6
    move v5, v3

    goto :goto_9

    :cond_b
    const/4 v1, 0x5

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v2, v1, :cond_d

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_d
    move v3, v4

    :goto_7
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->reset()V

    goto :goto_6

    :cond_e
    const/4 v1, 0x3

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v2, v1, :cond_10

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_10
    move v3, v4

    :goto_8
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->reset()V

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;->compareNumbers(DD)Z

    move-result v5

    :goto_9
    return v5
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_0
    return-void
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_EQ:Lcom/sun/org/apache/xpath/internal/objects/EqualComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getFresh()Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberFromNode(I)D
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->toDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->m_dtmMgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    const-string p0, "#NODESET"

    return-object p0
.end method

.method public greaterThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_GT:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greaterThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_GTE:Lcom/sun/org/apache/xpath/internal/objects/GreaterThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0

    return-object p0
.end method

.method public lessThan(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_LT:Lcom/sun/org/apache/xpath/internal/objects/LessThanComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public lessThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_LTE:Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public mutableNodeset()Lcom/sun/org/apache/xpath/internal/NodeSetDTM;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/NodeSetDTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->setCurrentPos(I)V

    :goto_0
    return-object v0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeList;->getDTMIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getVector()Lcom/sun/org/apache/xml/internal/utils/NodeVector;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->SetVector(Lcom/sun/org/apache/xml/internal/utils/NodeVector;)V

    return-object v0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0
.end method

.method public notEquals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->S_NEQ:Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->compare(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public num()D
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public numWithSideEffects()D
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public release(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V
    .locals 0

    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->getStringFromNode(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    :goto_0
    return-object p0
.end method
