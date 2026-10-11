.class public Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTITY_FIELDS_PER:I = 0x4

.field private static final ENTITY_FIELD_NAME:I = 0x3

.field private static final ENTITY_FIELD_NOTATIONNAME:I = 0x2

.field private static final ENTITY_FIELD_PUBLICID:I = 0x0

.field private static final ENTITY_FIELD_SYSTEMID:I = 0x1

.field private static final m_fixednames:[Ljava/lang/String;


# instance fields
.field protected m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

.field protected transient m_coalescedTextType:I

.field protected transient m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field protected m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_endDocumentOccured:Z

.field private m_entities:Ljava/util/Vector;

.field protected m_idAttributes:Ljava/util/Hashtable;

.field private m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

.field protected transient m_insideDTD:Z

.field protected transient m_locator:Lorg/xml/sax/Locator;

.field protected transient m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field m_pastFirstElement:Z

.field protected transient m_prefixMappings:Ljava/util/Vector;

.field protected transient m_previous:I

.field protected m_sourceColumn:Lcom/sun/org/apache/xml/internal/utils/IntVector;

.field protected m_sourceLine:Lcom/sun/org/apache/xml/internal/utils/IntVector;

.field protected m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private transient m_systemId:Ljava/lang/String;

.field protected m_textPendingStart:I

.field protected transient m_textType:I

.field protected m_useSourceLocationProperty:Z

.field protected m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

.field protected m_walker:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#text"

    const-string v4, "#cdata_section"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#comment"

    const-string v9, "#document"

    const/4 v10, 0x0

    const-string v11, "#document-fragment"

    const/4 v12, 0x0

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 10

    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 5
    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const/4 p4, 0x3

    .line 6
    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 7
    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    .line 8
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 9
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    .line 11
    new-instance p4, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;

    invoke-direct {p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;

    .line 12
    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 13
    new-instance p4, Ljava/util/Hashtable;

    invoke-direct {p4}, Ljava/util/Hashtable;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    .line 14
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    const/4 p4, -0x1

    .line 15
    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 16
    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    .line 17
    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/16 p4, 0x40

    const/16 p5, 0xa

    if-gt p7, p4, :cond_0

    .line 18
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 p6, 0x4

    invoke-direct {p4, p7, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 19
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {p4, p7, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 20
    new-instance p4, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    const/16 p7, 0x10

    invoke-direct {p4, p7}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>(I)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    .line 21
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/4 p7, 0x7

    invoke-direct {p4, p7, p5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 22
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p4, p6}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 23
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p4, p6}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>(I)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/16 p6, 0x20

    invoke-direct {p4, p7, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 25
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {p4, p7, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 26
    new-instance p4, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-direct {p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    .line 27
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/16 p6, 0xd

    invoke-direct {p4, p5, p6}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>(II)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    .line 28
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p4}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 29
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {p4}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    .line 30
    :goto_0
    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p4, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    .line 31
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getSource_location()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_1

    .line 32
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;-><init>()V

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    .line 33
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    .line 34
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_3

    new-instance p2, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {p2}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>()V

    :cond_3
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    return-void
.end method

.method private final isTextType(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p0, p1, :cond_1

    const/4 p0, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public _dataOrQName(I)I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public addNewDTMID(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    shl-int/lit8 v0, v1, 0x10

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "ER_NO_DTMIDS_AVAIL"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addNode(IIIIIZ)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz p6, :cond_1

    move p6, v2

    goto :goto_0

    :cond_1
    move p6, v3

    :goto_0
    invoke-virtual {v1, p6}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p6, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p6, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p6, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p5}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    :cond_2
    if-eq v3, p4, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, v0, p4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    :cond_4
    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd

    if-eq p1, p2, :cond_5

    if-ne v3, p4, :cond_6

    if-eq v3, p3, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, v0, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_6
    :goto_1
    return v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public charactersFlush()V
    .locals 10

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v5

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v8

    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    :cond_2
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_3
    return-void
.end method

.method public clearCoRoutine()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    return-void
.end method

.method public clearCoRoutine(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v3, 0x8

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method public declAlreadyDeclared(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8

    move v1, v0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v3

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    :cond_4
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    add-int/2addr v4, v3

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v0, v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v3

    if-ge v3, p1, :cond_3

    :cond_6
    if-lez v4, :cond_b

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v1, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v1, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_8
    if-eq v1, v3, :cond_b

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_9

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_9
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v4, p0, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p2, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_b
    :goto_0
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->getcontentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;-><init>()V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->setDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->traverse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    throw p1
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->quickPop(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result p1

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result p2

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 p3, -0x1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p3, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_2

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_1

    :cond_2
    const/4 p1, -0x1

    if-le v0, p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    invoke-virtual {p1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstAttribute(I)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    if-eqz v1, :cond_0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    return-object p0
.end method

.method public getFixedNames(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, ""

    if-nez p1, :cond_0

    move-object p1, v2

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {v3, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_1

    and-int/lit8 v3, v0, 0x1

    if-eq v3, v1, :cond_0

    :cond_1
    const/4 p1, -0x1

    if-le v0, p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_2
    return-object v2
.end method

.method public getNextNodeIdentity(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "xmlns"

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_4

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq v2, v0, :cond_3

    const/16 v1, 0xb

    if-eq v1, v0, :cond_3

    const/16 v1, 0x9

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_2

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumberOfNodes()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-ne v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-nez p1, :cond_0

    return-object v3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v3
.end method

.method public getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "xmlns:"

    const-string v3, "xmlns"

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, -0x1

    .line 11
    :cond_0
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, p2, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v6

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    if-ltz v6, :cond_1

    .line 12
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p0, p0, 0x1

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez p0, :cond_7

    .line 17
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_6

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/lit8 p0, p0, 0x1

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move-object v1, v5

    :goto_0
    move-object v5, v1

    :cond_8
    :goto_1
    return-object v5
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->elementAt(I)I

    move-result v3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->elementAt(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;

    invoke-direct {p1, v1, p0, v0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v1, p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    if-eq v0, v2, :cond_6

    const/4 v1, 0x0

    move v3, v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    invoke-direct {p0, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v4

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    :cond_3
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-ge v4, p1, :cond_2

    :cond_5
    if-lez v1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p1, p0, v3, v1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_6
    if-eq v1, v3, :cond_8

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_7

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->emptystr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWhitespace(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    shl-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v3, p0, v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;II)V

    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public needsTwoThreads()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextNode()Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_3

    instance-of v2, v0, Ljava/lang/Exception;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    return v1

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_5
    return v2
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x7

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIncrementalSAXSource(Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSourceLocation()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->addElement(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CODING ERROR in Source Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseSourceLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public startDocument()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const/4 v9, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v7, v1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v11

    :goto_0
    const/4 v1, 0x1

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v3

    iget v4, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v12

    iget-boolean v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v0, :cond_1

    invoke-virtual {v7, v10, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->indexNode(II)V

    :cond_1
    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0, v12}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v10

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v13

    const/4 v4, -0x1

    iget-boolean v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/4 v14, 0x0

    const/16 v15, 0xd

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v1, "xml"

    invoke-virtual {v0, v14, v1, v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v1, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v4

    iput-boolean v9, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    :cond_2
    :goto_1
    if-ge v10, v13, :cond_4

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v14, v0, v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v1, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v4

    :goto_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v10

    move v13, v11

    :goto_3
    const/4 v0, 0x2

    if-ge v13, v10, :cond_b

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_7

    const-string v14, "xmlns"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "xmlns:"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_5
    invoke-virtual {v7, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v9, v15

    goto :goto_4

    :cond_7
    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    const-string v9, "ID"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7, v3, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    :cond_8
    move v9, v0

    :goto_4
    if-nez v3, :cond_9

    const-string v3, ""

    :cond_9
    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    if-eqz v5, :cond_a

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v3

    iget-object v5, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    neg-int v0, v3

    :cond_a
    move v5, v0

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1, v6, v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v4

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, -0x1

    if-eq v1, v4, :cond_c

    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v1, v4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_c
    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz v2, :cond_f

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    invoke-interface {v2, v3, v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;->getShouldStripSpace(ILcom/sun/org/apache/xml/internal/dtm/DTM;)S

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v9

    goto :goto_6

    :cond_d
    if-ne v0, v2, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    move v9, v11

    :goto_6
    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_f
    iput v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p2, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
