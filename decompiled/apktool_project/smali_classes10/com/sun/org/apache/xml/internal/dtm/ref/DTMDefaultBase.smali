.class public abstract Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTM;


# static fields
.field public static final DEFAULT_BLOCKSIZE:I = 0x200

.field public static final DEFAULT_NUMBLOCKS:I = 0x20

.field public static final DEFAULT_NUMBLOCKS_SMALL:I = 0x4

.field static final JJK_DEBUG:Z = false

.field protected static final NOTPROCESSED:I = -0x2

.field public static final ROOTNODE:I


# instance fields
.field protected m_documentBaseURI:Ljava/lang/String;

.field protected m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_elemIndexes:[[[I

.field protected m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

.field protected m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_indexing:Z

.field public m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field protected m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

.field protected m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_namespaceDeclSets:Ljava/util/Vector;

.field private m_namespaceLists:Ljava/util/Vector;

.field protected m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

.field protected m_shouldStripWS:Z

.field protected m_shouldStripWhitespaceStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

.field protected m_size:I

.field protected m_traversers:[Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

.field protected m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

.field protected m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;


# direct methods
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
    invoke-direct/range {v0 .. v9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;Ljavax/xml/transform/Source;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;ZIZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p9, 0x0

    .line 3
    iput p9, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    .line 7
    iput-boolean p9, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceLists:Ljava/util/Vector;

    const/16 v1, 0x40

    if-gt p7, v1, :cond_0

    .line 9
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 11
    :goto_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 12
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 13
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 14
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz p8, :cond_1

    .line 15
    new-instance p8, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {p8, p7, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p8, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    .line 16
    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    .line 17
    instance-of p7, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    if-eqz p7, :cond_2

    .line 18
    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    :cond_2
    if-eqz p2, :cond_3

    .line 19
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p1, p3, p9}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 21
    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    .line 22
    iput-object p5, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_xstrf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    .line 23
    iput-boolean p6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz p6, :cond_4

    .line 24
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getExpandedNameTable(Lcom/sun/org/apache/xml/internal/dtm/DTM;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    :goto_1
    if-eqz p4, :cond_5

    .line 26
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    .line 27
    invoke-virtual {p0, p9}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public _exptype(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_0

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_exptype:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public _firstch(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x2

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v3, -0x1

    if-lt p1, v2, :cond_1

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_firstch:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_2

    return v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public _level(I)I
    .locals 2

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v0, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    if-eq v1, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public _nextsib(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x2

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v3, -0x1

    if-lt p1, v2, :cond_1

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_nextsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_2

    return v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public _parent(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_parent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public _prevsib(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public _type(I)S
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public appendChild(IZZ)V
    .locals 0

    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 1

    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method public declareNamespaceInContext(II)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 v3, v0, 0x10

    const/16 v4, 0x800

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;-><init>(I)V

    move-object v0, p1

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v2

    if-ne p1, v2, :cond_5

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->setElementAt(II)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->addElement(I)V

    return-void
.end method

.method public abstract dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public documentRegistration()V
    .locals 0

    return-void
.end method

.method public documentRelease()V
    .locals 0

    return-void
.end method

.method public dumpDTM(Ljava/io/OutputStream;)V
    .locals 8

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTMDump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object p1, v0

    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_size:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total nodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_b

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========== index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ==========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NodeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NodeNameX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NamespaceURI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanded Type ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "DOCUMENT_NODE"

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_1
    const-string v4, "Unknown!"

    goto :goto_2

    :pswitch_1
    const-string v4, "NAMESPACE_NODE"

    goto :goto_2

    :pswitch_2
    const-string v4, "NOTATION_NODE"

    goto :goto_2

    :pswitch_3
    const-string v4, "DOCUMENT_FRAGMENT_NODE"

    goto :goto_2

    :pswitch_4
    const-string v4, "COMMENT_NODE"

    goto :goto_2

    :pswitch_5
    const-string v4, "PROCESSING_INSTRUCTION_NODE"

    goto :goto_2

    :pswitch_6
    const-string v4, "ENTITY_NODE"

    goto :goto_2

    :pswitch_7
    const-string v4, "ENTITY_REFERENCE_NODE"

    goto :goto_2

    :pswitch_8
    const-string v4, "CDATA_SECTION_NODE"

    goto :goto_2

    :pswitch_9
    const-string v4, "TEXT_NODE"

    goto :goto_2

    :pswitch_a
    const-string v4, "ATTRIBUTE_NODE"

    goto :goto_2

    :pswitch_b
    const-string v4, "ELEMENT_NODE"

    goto :goto_2

    :pswitch_c
    const-string v4, "NULL"

    :goto_2
    :pswitch_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-ne v5, v3, :cond_2

    const-string v3, "First child: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-ne v4, v3, :cond_3

    const-string v3, "First child: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First child: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v3

    if-ne v5, v3, :cond_4

    const-string v3, "Prev sibling: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-ne v4, v3, :cond_5

    const-string v3, "Prev sibling: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prev sibling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v3

    if-ne v5, v3, :cond_7

    const-string v3, "Next sibling: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-ne v4, v3, :cond_8

    const-string v3, "Next sibling: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next sibling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v3

    if-ne v5, v3, :cond_9

    const-string v3, "Parent: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    if-ne v4, v3, :cond_a

    const-string v3, "Parent: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dumpNode(I)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "[null]"

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown!"

    goto :goto_0

    :pswitch_1
    const-string v0, "NAMESPACE"

    goto :goto_0

    :pswitch_2
    const-string v0, "NOTATION"

    goto :goto_0

    :pswitch_3
    const-string v0, "DOC_FRAG"

    goto :goto_0

    :pswitch_4
    const-string v0, "DOC_TYPE"

    goto :goto_0

    :pswitch_5
    const-string v0, "DOC"

    goto :goto_0

    :pswitch_6
    const-string v0, "COMMENT"

    goto :goto_0

    :pswitch_7
    const-string v0, "PI"

    goto :goto_0

    :pswitch_8
    const-string v0, "ENTITY"

    goto :goto_0

    :pswitch_9
    const-string v0, "ENT_REF"

    goto :goto_0

    :pswitch_a
    const-string v0, "CDATA"

    goto :goto_0

    :pswitch_b
    const-string v0, "TEXT"

    goto :goto_0

    :pswitch_c
    const-string v0, "ATTR"

    goto :goto_0

    :pswitch_d
    const-string v0, "ELEMENT"

    goto :goto_0

    :pswitch_e
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ensureSizeOfIndex(II)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x14

    new-array v0, v0, [[[I

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    goto :goto_0

    :cond_0
    array-length v2, v0

    if-gt v2, p1, :cond_1

    add-int/lit8 v2, p1, 0x14

    new-array v2, v2, [[[I

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v2, v0, p1

    if-nez v2, :cond_2

    add-int/lit8 p0, p2, 0x64

    new-array v2, p0, [[I

    aput-object v2, v0, p1

    goto :goto_1

    :cond_2
    array-length v0, v2

    if-gt v0, p2, :cond_3

    add-int/lit8 v0, p2, 0x64

    new-array v0, v0, [[I

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v0, p0, p1

    move-object v2, v0

    :cond_3
    :goto_1
    aget-object p0, v2, p2

    if-nez p0, :cond_4

    const/16 p0, 0x80

    new-array p0, p0, [I

    aput-object p0, v2, p2

    const/4 p1, 0x1

    aput p1, p0, v1

    goto :goto_2

    :cond_4
    array-length p1, p0

    aget v0, p0, v1

    add-int/lit8 v3, v0, 0x1

    if-gt p1, v3, :cond_5

    add-int/lit16 v0, v0, 0x400

    new-array p1, v0, [I

    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, p2

    :cond_5
    :goto_2
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/dtm/DTMException;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findElementFromIndex(III)I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findGTE([IIII)I

    move-result p0

    const/4 p2, -0x1

    if-le p0, p2, :cond_0

    aget p0, p1, p0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public findGTE([IIII)I
    .locals 2

    add-int/lit8 p3, p3, -0x1

    add-int/2addr p3, p2

    move p0, p3

    :goto_0
    if-gt p2, p0, :cond_2

    add-int v0, p2, p0

    div-int/lit8 v0, v0, 0x2

    aget v1, p1, v0

    if-le v1, p4, :cond_0

    add-int/lit8 p0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ge v1, p4, :cond_1

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    if-gt p2, p3, :cond_3

    aget p0, p1, p2

    if-le p0, p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method public findInSortedSuballocatedIntVector(Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;I)I
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, p0

    :goto_0
    if-gt p0, v1, :cond_2

    add-int v0, p0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    sub-int v2, p2, v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v0, 0x1

    goto :goto_0

    :cond_2
    if-le p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v0

    :cond_4
    :goto_1
    rsub-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public findNamespaceContext(I)Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findInSortedSuballocatedIntVector(Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    return-object p0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    rsub-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-nez v0, :cond_3

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p1

    const/16 v6, 0x9

    if-ne p1, v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    move v5, p1

    :cond_2
    if-ne v3, v5, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    return-object p0

    :cond_3
    :goto_0
    if-ltz v0, :cond_7

    if-lez v4, :cond_7

    if-ne v3, v4, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    return-object p0

    :cond_4
    if-ge v3, v4, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_0

    :cond_6
    if-lez v0, :cond_7

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public abstract getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public getDTMIDs()Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    return-object p0
.end method

.method public getDocument()I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public getDocumentRoot(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p0

    return p0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getElementById(Ljava/lang/String;)I
.end method

.method public getExpandedTypeID(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    return p0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFirstAttribute(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstAttributeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getFirstAttributeIdentity(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v1, v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v2, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    const/16 v1, 0xd

    if-eq v1, v0, :cond_0

    :cond_2
    return v2
.end method

.method public getFirstChild(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    if-ne p2, v0, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_4
    const/4 v0, 0x2

    if-eq v0, p2, :cond_3

    :cond_5
    return v1
.end method

.method public getLastChild(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getLevel(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    return p0
.end method

.method public abstract getLocalName(I)Ljava/lang/String;
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result p0

    return p0
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public getNextAttribute(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttributeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNextAttributeIdentity(I)I
    .locals 3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    return p1

    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    :cond_2
    return v0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/16 p3, 0xd

    if-ne p2, p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_5
    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    :cond_6
    return v0
.end method

.method public abstract getNextNodeIdentity(I)I
.end method

.method public getNextSibling(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    return-object v0
.end method

.method public getNodeHandle(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getNodeIdent(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    return p0
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1

    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNodeType(I)S
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    return p0
.end method

.method public abstract getNodeValue(I)Ljava/lang/String;
.end method

.method public abstract getNumberOfNodes()I
.end method

.method public getOwnerDocument(I)I
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public getParent(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public abstract getPrefix(I)Ljava/lang/String;
.end method

.method public getPreviousSibling(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_prevsib:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    :goto_0
    move v2, v1

    move v1, v0

    move v0, v2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getShouldStripWhitespace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    return p0
.end method

.method public abstract getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public getStringValueChunk(II[I)[C
    .locals 0

    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object p2
.end method

.method public getStringValueChunkCount(I)I
    .locals 1

    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getTypedAttribute(II)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v2, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1
    const/16 v1, 0xd

    if-eq v1, v0, :cond_0

    :cond_2
    return v2
.end method

.method public getTypedFirstChild(II)I
    .locals 4

    const/4 v0, -0x1

    const/16 v1, 0xe

    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    if-eq v2, p2, :cond_1

    if-lt v2, v1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    :goto_2
    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    if-ne v1, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_2

    :cond_4
    return v0
.end method

.method public getTypedNextSibling(II)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    :goto_1
    return v0
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hasChildNodes(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public indexNode(II)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->ensureSizeOfIndex(II)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object p0, p0, v1

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget v0, p0, p1

    aput p2, p0, v0

    aget p2, p0, p1

    add-int/2addr p2, v2

    aput p2, p0, p1

    :cond_0
    return-void
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNodeAfter(II)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    if-eq p0, p2, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final makeNodeHandle(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    const v0, 0xffff

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public final makeNodeIdentity(I)I
    .locals 5

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    const v2, 0xffff

    if-eqz v1, :cond_2

    ushr-int/lit8 v3, p1, 0x10

    iget-object v4, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtms:[Lcom/sun/org/apache/xml/internal/dtm/DTM;

    aget-object v4, v4, v3

    if-eq v4, p0, :cond_1

    return v0

    :cond_1
    iget-object p0, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget p0, p0, v3

    and-int/2addr p1, v2

    or-int/2addr p0, p1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    const/high16 v1, -0x10000

    and-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->indexOf(I)I

    move-result p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    shl-int/lit8 p0, p0, 0x10

    and-int/2addr p1, v2

    add-int v0, p0, p1

    :goto_0
    return v0
.end method

.method public migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgr:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    :cond_0
    return-void
.end method

.method public abstract nextNode()Z
.end method

.method public popShouldStripWhitespace()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->popAndTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    :cond_0
    return-void
.end method

.method public pushShouldStripWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    :cond_0
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setShouldStripWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->setTop(Z)V

    :cond_0
    return-void
.end method

.method public supportsPreStripping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
