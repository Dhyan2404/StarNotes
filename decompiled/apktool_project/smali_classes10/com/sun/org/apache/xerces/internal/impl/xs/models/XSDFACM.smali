.class public Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static time:J


# instance fields
.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

.field private fLeafCount:I

.field private fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTableSize:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->buildDFA(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    new-instance v6, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    const/16 v7, 0x66

    move-object/from16 v8, p1

    invoke-direct {v6, v7, v8, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;-><init>(ILcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    iput-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v7, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    iget v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v6, v7, :cond_0

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    invoke-direct {v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    iget v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    new-array v7, v6, [Ljava/lang/Object;

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    iput v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    move v6, v2

    :goto_1
    iget v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aput-object v4, v7, v6

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v7

    move v8, v2

    :goto_2
    iget v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v8, v9, :cond_2

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v10, v10, v8

    if-ne v7, v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ne v8, v9, :cond_3

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    iget v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    aget v10, v10, v6

    aput v10, v8, v9

    iget-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    aput v7, v8, v9

    add-int/2addr v9, v3

    iput v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    sub-int/2addr v6, v3

    iput v6, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    add-int/2addr v7, v6

    new-array v6, v7, [I

    move v7, v2

    move v8, v7

    :goto_4
    iget v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v7, v9, :cond_7

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    aget v9, v9, v7

    move v10, v2

    :goto_5
    iget v11, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v11

    if-ne v9, v11, :cond_5

    add-int/lit8 v11, v8, 0x1

    aput v10, v6, v8

    move v8, v11

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v8, 0x1

    aput v5, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_4

    :cond_7
    iget v7, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    mul-int/lit8 v7, v7, 0x4

    new-array v8, v7, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-array v9, v7, [Z

    iput-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    new-array v9, v7, [[I

    iput-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    iget-object v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    invoke-virtual {v9}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v9

    iget-object v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v11

    aput-object v11, v10, v2

    aput-object v9, v8, v2

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    move v10, v2

    :goto_6
    if-ge v10, v3, :cond_11

    aget-object v11, v8, v10

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v12, v12, v10

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    invoke-virtual {v11, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v14

    aput-boolean v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    move v13, v2

    move v15, v13

    move-object v14, v4

    :goto_7
    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v13, v2, :cond_10

    if-nez v14, :cond_8

    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-direct {v14, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;-><init>(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->zeroBits()V

    :goto_8
    add-int/lit8 v2, v15, 0x1

    aget v15, v6, v15

    :goto_9
    if-eq v15, v5, :cond_a

    invoke-virtual {v11, v15}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v16

    if-eqz v16, :cond_9

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    aget-object v5, v5, v15

    invoke-virtual {v14, v5}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_9
    add-int/lit8 v5, v2, 0x1

    aget v15, v6, v2

    move v2, v5

    const/4 v5, -0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v9, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_b

    move v5, v3

    goto :goto_a

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_a
    if-ne v5, v3, :cond_c

    aput-object v14, v8, v3

    iget-object v15, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v17

    aput-object v17, v15, v3

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object v14, v4

    :cond_c
    aput v5, v12, v13

    if-ne v3, v7, :cond_e

    int-to-double v4, v7

    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v17

    double-to-int v4, v4

    new-array v5, v4, [Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    new-array v15, v4, [Z

    move/from16 v18, v1

    new-array v1, v4, [[I

    move/from16 v19, v2

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v7, :cond_d

    aget-object v20, v8, v2

    aput-object v20, v5, v2

    move/from16 v20, v3

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v3, v3, v2

    aput-boolean v3, v15, v2

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v20

    goto :goto_b

    :cond_d
    move/from16 v20, v3

    iput-object v15, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    move v7, v4

    move-object v8, v5

    goto :goto_c

    :cond_e
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_c

    :cond_f
    move/from16 v18, v1

    move/from16 v19, v2

    :goto_c
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v18

    move/from16 v15, v19

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto/16 :goto_7

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_11
    move-object v1, v4

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fHeadNode:Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapId:[I

    return-void
.end method

.method private calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->union(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto :goto_3

    :cond_4
    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->calcFollowList(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_2
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFollowList:[Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

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
    .locals 7

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

    const-string v1, " lastPos="

    const-string v2, "firstPos="

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    const-string v5, "Nullable "

    if-eq v0, v4, :cond_5

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/4 v4, 0x6

    if-eq v0, v4, :cond_5

    const/16 v4, 0x65

    if-eq v0, v4, :cond_2

    const/16 v6, 0x66

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-ne v0, v4, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Choice Node "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Seq Node "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/2addr p2, v3

    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    goto/16 :goto_3

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Rep Node "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    add-int/2addr p2, v3

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->dumpTree(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;I)V

    goto/16 :goto_3

    :cond_7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Any Node: "

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Leaf: (pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(elemIndex="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " Nullable "

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_9
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->firstPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->lastPos()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v1, p0, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafList:[Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v1, p0, v0

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMUniOp;->getChild()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getLeft()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMBinOp;->getRight()Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->postTreeBuildInit(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    move v6, v4

    :goto_2
    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v7, v7, v2

    aget v8, v7, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    aget v7, v7, v6

    if-eq v7, v9, :cond_1

    aget-object v7, v0, v3

    aget-byte v8, v7, v6

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v10, v8, v3

    aget-object v8, v8, v6

    invoke-static {v10, v8, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v9, v5

    :cond_0
    aput-byte v9, v7, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_3
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge p1, v2, :cond_7

    move v2, v1

    :goto_4
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v2, v3, :cond_6

    aget-object v3, v0, p1

    aget-byte v3, v3, v2

    if-eq v3, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cos-nonambig"

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_5
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v0, v0, p1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_9

    :cond_8
    return v5

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    return v1
.end method

.method public endContentModel([I)Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    const/4 v0, 0x0

    aget p1, p1, v0

    aget-boolean p0, p0, p1

    return p0
.end method

.method public findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFinalState(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean p0, p0, p1

    :goto_0
    return p0
.end method

.method public oneTransition(Lcom/sun/org/apache/xerces/internal/xni/QName;[ILcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move v4, v0

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_4

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v5, v5, v1

    aget v5, v5, v4

    if-ne v5, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v6, v6, v4

    if-ne v6, v7, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v4

    check-cast v6, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne v4, v1, :cond_5

    aget v1, p2, v0

    aput v1, p2, v7

    aput v3, p2, v0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    aput v5, p2, v0

    return-object v2

    :cond_6
    :goto_3
    if-ne v1, v3, :cond_7

    aput v2, p2, v0

    :cond_7
    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public startContentModel()[I
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    aget v1, p1, v1

    :cond_0
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
