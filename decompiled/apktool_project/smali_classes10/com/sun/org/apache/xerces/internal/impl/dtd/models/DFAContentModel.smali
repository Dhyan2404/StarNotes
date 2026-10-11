.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;


# static fields
.field private static final DEBUG_VALIDATE_CONTENT:Z = false

.field private static fEOCString:Ljava/lang/String; = "<<CMNODE_EOC>>"

.field private static fEpsilonString:Ljava/lang/String; = "<<CMNODE_EPSILON>>"


# instance fields
.field private fEOCPos:I

.field private fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fEmptyContentIsValid:Z

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

.field private fLeafCount:I

.field private fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

.field private fLeafListType:[I

.field private fMixed:Z

.field private fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "<<CMNODE_EPSILON>>"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCPos:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTableSize:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fMixed:Z

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->buildDFA(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    const/4 v4, 0x5

    move-object/from16 v5, p1

    invoke-direct {v2, v4, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    iput v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->setPosition(I)V

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v2, v1, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)I

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move v1, v2

    :goto_0
    iget v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v1, v4, :cond_0

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    invoke-direct {v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    new-array v4, v1, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    iput v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    move v1, v2

    :goto_1
    iget v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_4

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v6}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    aput-object v6, v4, v1

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v4

    move v6, v2

    :goto_2
    iget v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v6, v7, :cond_2

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ne v6, v7, :cond_3

    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    iget v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    aget v7, v7, v1

    aput v7, v4, v6

    add-int/2addr v6, v5

    iput v6, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    add-int/2addr v4, v1

    new-array v1, v4, [I

    move v4, v2

    move v6, v4

    :goto_4
    iget v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    const/4 v8, -0x1

    if-ge v4, v7, :cond_7

    move v7, v2

    :goto_5
    iget v9, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v7, v9, :cond_6

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v9

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v10, v10, v4

    iget-object v9, v9, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v10, v10, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v6, 0x1

    aput v7, v1, v6

    move v6, v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v6, 0x1

    aput v8, v1, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_4

    :cond_7
    iget v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    mul-int/lit8 v4, v4, 0x4

    new-array v6, v4, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-array v7, v4, [Z

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    new-array v7, v4, [[I

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v7

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v7, v6, v2

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    move v9, v2

    :goto_6
    if-ge v9, v5, :cond_10

    aget-object v10, v6, v9

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v11, v11, v9

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    iget v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEOCPos:I

    invoke-virtual {v10, v13}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v13

    aput-boolean v13, v12, v9

    add-int/lit8 v9, v9, 0x1

    move v12, v2

    move v14, v12

    move-object v13, v3

    :goto_7
    iget v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v12, v15, :cond_f

    if-nez v13, :cond_8

    new-instance v13, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iget v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-direct {v13, v15}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {v13}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->zeroBits()V

    :goto_8
    add-int/lit8 v15, v14, 0x1

    aget v14, v1, v14

    :goto_9
    if-eq v14, v8, :cond_a

    invoke-virtual {v10, v14}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v16

    if-eqz v16, :cond_9

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    aget-object v2, v2, v14

    invoke-virtual {v13, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_9
    add-int/lit8 v2, v15, 0x1

    aget v14, v1, v15

    move v15, v2

    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v13}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v7, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_b

    move v2, v5

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_a
    if-ne v2, v5, :cond_c

    aput-object v13, v6, v5

    iget-object v14, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->makeDefStateList()[I

    move-result-object v16

    aput-object v16, v14, v5

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object v13, v3

    :cond_c
    aput v2, v11, v12

    if-ne v5, v4, :cond_e

    move v14, v9

    int-to-double v8, v4

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v8, v8, v16

    double-to-int v8, v8

    new-array v9, v8, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-array v2, v8, [Z

    new-array v3, v8, [[I

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v4, :cond_d

    aget-object v19, v6, v1

    aput-object v19, v9, v1

    move/from16 v19, v4

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v2, v1

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v19

    goto :goto_b

    :cond_d
    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    move v4, v8

    move-object v6, v9

    goto :goto_c

    :cond_e
    move-object/from16 v18, v1

    move/from16 v19, v4

    move v14, v9

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move v9, v14

    move v14, v15

    move-object/from16 v1, v18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto/16 :goto_7

    :cond_f
    move/from16 v19, v4

    move v14, v9

    goto/16 :goto_6

    :cond_10
    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    return-void
.end method

.method private calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto :goto_3

    :cond_4
    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_2
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const-string v1, "Nullable "

    const/4 v2, 0x4

    const-string v3, " lastPos="

    const-string v4, "firstPos="

    if-eq v0, v2, :cond_6

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Rep Node "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Leaf: (pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getPosition()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "(elemIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " Nullable "

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    if-ne v0, v2, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Choice Node "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Seq Node "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    :goto_3
    return-void
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafCount:I

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEpsilonString:Ljava/lang/String;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    aput-object p1, v0, p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    const/4 p1, 0x0

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImplementationMessages.VAL_NIICM: type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)I

    move-result p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)I

    move-result p2

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;->getURI()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMAny;->getPosition()I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;-><init>(Lcom/sun/org/apache/xerces/internal/xni/QName;I)V

    aput-object v4, v3, p2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fLeafListType:[I

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result p1

    aput p1, p0, p2

    add-int/2addr p2, v2

    :cond_7
    :goto_3
    return p2
.end method


# virtual methods
.method public validate([Lcom/sun/org/apache/xerces/internal/xni/QName;II)I
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fEmptyContentIsValid:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, p3, :cond_a

    add-int v4, p2, v2

    aget-object v4, p1, v4

    iget-boolean v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fMixed:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    move v5, v1

    :goto_2
    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapSize:I

    if-ge v5, v6, :cond_7

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMapType:[I

    aget v7, v7, v5

    and-int/lit8 v7, v7, 0xf

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-ne v7, v8, :cond_6

    goto :goto_3

    :cond_3
    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v8, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-ne v7, v8, :cond_6

    goto :goto_3

    :cond_4
    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    iget-object v7, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_6

    goto :goto_3

    :cond_5
    const/4 v8, 0x7

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fElemMap:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eq v7, v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ne v5, v6, :cond_8

    return v2

    :cond_8
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fTransTable:[[I

    aget-object v3, v4, v3

    aget v3, v3, v5

    if-ne v3, v0, :cond_9

    return v2

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/DFAContentModel;->fFinalStateFlags:[Z

    aget-boolean p0, p0, v3

    if-nez p0, :cond_b

    return p3

    :cond_b
    return v0
.end method
