.class public Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;,
        Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final EMPTY_XML_STR:Lcom/sun/org/apache/xml/internal/utils/XMLString;

.field protected static final TEXT_LENGTH_BITS:I = 0xa

.field protected static final TEXT_LENGTH_MAX:I = 0x3ff

.field protected static final TEXT_OFFSET_BITS:I = 0x15

.field protected static final TEXT_OFFSET_MAX:I = 0x1fffff


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildIdIndex:Z

.field private m_exptype_map:[[I

.field private m_exptype_map0:[I

.field protected m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

.field private m_firstch_map:[[I

.field private m_firstch_map0:[I

.field private m_maxNodeIndex:I

.field private m_nextsib_map:[[I

.field private m_nextsib_map0:[I

.field private m_parent_map:[[I

.field private m_parent_map0:[I

.field private m_valueIndex:I

.field protected m_values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;Z)V
    .locals 11

    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    const/4 v0, 0x0

    .line 3
    iput v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move v2, v0

    move/from16 v0, p7

    :goto_0
    ushr-int/2addr v0, v1

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    shl-int v0, v1, v2

    .line 5
    iput v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    .line 6
    iput v2, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    sub-int/2addr v0, v1

    .line 7
    iput v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    move/from16 v0, p9

    .line 8
    iput-boolean v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    .line 9
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x20

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    iput-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    const/high16 v0, 0x10000

    .line 10
    iput v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    .line 11
    iget-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v0

    iput-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    .line 12
    iget-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v0

    iput-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    .line 13
    iget-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v0

    iput-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    .line 14
    iget-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v0

    iput-object v0, v10, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    return-void
.end method


# virtual methods
.method public final _exptype(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public final _exptype2(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final _exptype2Type(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final _firstch2(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final _nextsib2(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final _parent2(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final _type2(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final addNode(IIIIIZ)I
    .locals 2

    iget p6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v0, p6, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    if-ne p6, v0, :cond_0

    invoke-virtual {p0, p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p5}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    :cond_2
    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    if-eq v1, p4, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p6, p4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_0

    :cond_3
    if-eq v1, p3, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p6, p3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3, p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_5
    :goto_0
    return p6
.end method

.method public final charactersFlush()V
    .locals 10

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_4

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
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->setLength(I)V

    goto :goto_1

    :cond_1
    if-lez v0, :cond_3

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_2

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const v2, 0x1fffff

    if-gt v1, v2, :cond_2

    iget v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    shl-int/lit8 v1, v1, 0xa

    add-int v8, v0, v1

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v1

    iget v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v7, v1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    :cond_3
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_4
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
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 p1, v7, 0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/16 v3, 0x8

    const/16 v4, 0x8

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method public final copyAttribute(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3, v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    move-object p2, v2

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p3, p2, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final copyAttributes(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final copyElement(IILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    return-object p2

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    const-string p0, ""

    invoke-interface {p3, p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p1

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final copyNS(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v0

    const/4 p1, 0x0

    :goto_1
    move v1, v2

    :goto_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    if-gez v4, :cond_4

    neg-int v4, v4

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    :cond_4
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v3, v4}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v0

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final copyTextNode(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v0, p2, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 9
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
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_9

    const/16 v6, 0x9

    if-ne v1, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eq v3, v1, :cond_5

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_3

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p1, v4, p0, p2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p2, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_3

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_7

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 p3, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, p3, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto/16 :goto_3

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 p3, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, p3, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto/16 :goto_3

    :cond_7
    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {p3, p2, v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_3

    :cond_8
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {p3, p2, v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_3

    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v0, v1, :cond_11

    move v6, v0

    :cond_a
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v7

    if-eq v7, v3, :cond_b

    if-ne v7, v2, :cond_f

    :cond_b
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    if-ltz v7, :cond_d

    if-ne v0, v6, :cond_c

    ushr-int/lit8 v6, v7, 0xa

    :cond_c
    and-int/lit16 v7, v7, 0x3ff

    goto :goto_2

    :cond_d
    if-ne v0, v6, :cond_e

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v8, v7

    invoke-virtual {v6, v8}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    :cond_e
    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v7, v7

    add-int/2addr v7, v5

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    :goto_2
    add-int/2addr v4, v7

    :cond_f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, p1, :cond_a

    if-lez v4, :cond_11

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v6, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_3

    :cond_10
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v6, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :cond_11
    :goto_3
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->endDocument()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExtendedTypes()[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

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
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    return-void
.end method

.method public final getExpandedTypeID2(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p0, p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0

    :cond_1
    return v0
.end method

.method public final getFirstAttribute(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_2
    const/16 v3, 0xd

    if-eq v3, v1, :cond_1

    :cond_3
    return v0
.end method

.method public getFirstAttributeIdentity(I)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    return p1

    :cond_2
    const/16 v3, 0xd

    if-eq v3, v1, :cond_1

    :cond_3
    return v0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    return p1

    :cond_0
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextAttributeIdentity(I)I
    .locals 2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method public final getNextNamespaceNode2(I)I
    .locals 2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    if-ne v0, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "xmlns"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getFixedNames(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-gez p1, :cond_6

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeNameX(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-gez p1, :cond_3

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eq v2, v0, :cond_3

    const/16 v1, 0xb

    if-eq v1, v0, :cond_3

    const/16 v1, 0x9

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-lez p1, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    const/16 v5, 0x9

    if-ne v1, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eq v3, v1, :cond_5

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_3

    neg-int p1, p1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    if-eqz v0, :cond_4

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_7

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    if-eqz v0, :cond_6

    .line 11
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 12
    :cond_6
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    if-eqz v0, :cond_8

    .line 14
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 15
    :cond_8
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v5, 0x0

    move v6, v0

    .line 17
    :cond_a
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v7

    if-eq v7, v3, :cond_b

    if-ne v7, v2, :cond_f

    .line 18
    :cond_b
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    if-ltz v7, :cond_d

    if-ne v0, v6, :cond_c

    ushr-int/lit8 v6, v7, 0xa

    :cond_c
    and-int/lit16 v7, v7, 0x3ff

    goto :goto_2

    :cond_d
    if-ne v0, v6, :cond_e

    .line 19
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v8, v7

    invoke-virtual {v6, v8}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    .line 20
    :cond_e
    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v7, v7

    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    :goto_2
    add-int/2addr v5, v7

    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 21
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, p1, :cond_a

    if-lez v5, :cond_11

    .line 22
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    if-eqz p1, :cond_10

    .line 23
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p1, p0, v6, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 24
    :cond_10
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, v6, v5}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 25
    :cond_11
    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-object p0

    .line 26
    :cond_12
    sget-object p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lcom/sun/org/apache/xml/internal/utils/XMLString;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 30
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v1, v0, 0xa

    and-int/lit16 v0, v0, 0x3ff

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStringValueX(I)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_6

    const/16 v6, 0x9

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v2, :cond_4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_3

    neg-int p1, p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v2

    if-eq v1, v2, :cond_d

    const/4 v6, 0x0

    move v7, v1

    :cond_7
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v8

    if-eq v8, v4, :cond_8

    if-ne v8, v3, :cond_c

    :cond_8
    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v8, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    if-ltz v8, :cond_a

    if-ne v1, v7, :cond_9

    ushr-int/lit8 v7, v8, 0xa

    :cond_9
    and-int/lit16 v8, v8, 0x3ff

    goto :goto_2

    :cond_a
    if-ne v1, v7, :cond_b

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v9, v8

    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    :cond_b
    iget-object v9, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    neg-int v8, v8

    add-int/2addr v8, v5

    invoke-virtual {v9, v8}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    :goto_2
    add-int/2addr v6, v8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v8

    if-ge v8, p1, :cond_7

    if-lez v6, :cond_d

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, v7, v6}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0
.end method

.method public final getTypedAttribute(II)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    :cond_1
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ne v1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_2
    const/16 v1, 0xd

    if-eq v1, v3, :cond_1

    nop

    :cond_3
    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->peek()I

    move-result v4

    iget v5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    iget p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

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

    const/16 v2, 0x9

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const/4 v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    move-object/from16 v1, p3

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

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    iget-boolean v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/4 v14, 0x0

    const/16 v15, 0xd

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    const-string v1, "xml"

    invoke-virtual {v0, v14, v1, v15}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v5, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/16 v1, 0xd

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v5, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/16 v1, 0xd

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_7

    const-string v5, "xmlns"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "xmlns:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    invoke-virtual {v7, v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v5, v15

    goto :goto_4

    :cond_7
    iget-boolean v5, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    if-eqz v5, :cond_8

    invoke-interface {v8, v13}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v7, v3, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    :cond_8
    move v5, v0

    :goto_4
    if-nez v3, :cond_9

    const-string v3, ""

    :cond_9
    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v3, v6, :cond_a

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v3

    iget-object v6, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v6, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    neg-int v0, v3

    :cond_a
    move v6, v0

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v3, v12

    move v5, v6

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_b
    iget-object v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    if-eqz v1, :cond_e

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    invoke-interface {v1, v2, v7}, Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;->getShouldStripSpace(ILcom/sun/org/apache/xml/internal/dtm/DTM;)S

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v9

    goto :goto_6

    :cond_c
    if-ne v0, v1, :cond_d

    goto :goto_6

    :cond_d
    move v9, v11

    :goto_6
    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_e
    const/4 v0, -0x1

    iput v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    iget-object v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method
