.class public Lorg/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/models/XSDFACM$a;
    }
.end annotation


# static fields
.field public static final o:Z

.field public static final p:Z

.field public static q:J


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[I

.field public c:[I

.field public d:I

.field public e:[Z

.field public f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

.field public g:Lorg/apache/xerces/impl/dtd/models/CMNode;

.field public h:I

.field public i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

.field public j:[I

.field public k:[[I

.field public l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

.field public m:I

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    iput v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->m:I

    iput p2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->n:Z

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    new-instance v2, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    new-instance v6, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    const/16 v7, 0x66

    move-object/from16 v8, p1

    invoke-direct {v6, v7, v8, v2}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    iput-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    iget v2, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    new-array v7, v2, [Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    invoke-virtual {v0, v6}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    iget v2, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    new-array v2, v2, [Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v2, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    if-lt v6, v7, :cond_15

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0, v6}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    iget v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    new-array v7, v6, [Ljava/lang/Object;

    iput-object v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    new-array v7, v6, [I

    iput-object v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    iput v2, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    move v8, v2

    move-object v9, v4

    :goto_1
    iget v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    if-lt v8, v6, :cond_f

    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    sub-int/2addr v7, v3

    iput v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    add-int/2addr v6, v7

    new-array v6, v6, [I

    move v7, v2

    move v8, v7

    :goto_2
    iget v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v7, v10, :cond_c

    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    mul-int/lit8 v7, v7, 0x4

    new-array v8, v7, [Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v10, v7, [Z

    iput-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    new-array v10, v7, [[I

    iput-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    iget-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v10}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f()[I

    move-result-object v12

    aput-object v12, v11, v2

    aput-object v10, v8, v2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v11, v2

    :goto_3
    if-lt v11, v3, :cond_4

    if-eqz v9, :cond_3

    new-array v1, v3, [Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    move v1, v2

    :goto_4
    if-lt v1, v3, :cond_0

    goto :goto_7

    :cond_0
    iget-object v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v5, v5, v1

    move v6, v2

    :goto_5
    array-length v7, v5

    if-lt v6, v7, :cond_1

    goto :goto_6

    :cond_1
    aget v7, v5, v6

    if-ne v1, v7, :cond_2

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    aget-object v6, v9, v6

    aput-object v6, v5, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_3
    :goto_7
    iput-object v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g:Lorg/apache/xerces/impl/dtd/models/CMNode;

    iput-object v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    iput-object v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    return-void

    :cond_4
    aget-object v12, v8, v11

    iget-object v13, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v13, v13, v11

    iget-object v14, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    invoke-virtual {v12, v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v15

    aput-boolean v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v2

    move v14, v3

    move v15, v7

    move-object v3, v8

    move/from16 v7, v16

    move-object v8, v4

    :goto_8
    iget v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v7, v4, :cond_5

    move-object v8, v3

    move v3, v14

    move v7, v15

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    new-instance v8, Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    iget v4, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    invoke-direct {v8, v4}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    goto :goto_9

    :cond_6
    invoke-virtual {v8}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    :goto_9
    move-object v4, v8

    add-int/lit8 v8, v16, 0x1

    aget v16, v6, v16

    move/from16 v19, v16

    move/from16 v16, v8

    move/from16 v8, v19

    :goto_a
    if-ne v8, v5, :cond_a

    invoke-virtual {v4}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_7

    move v8, v14

    goto :goto_b

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_b
    if-ne v8, v14, :cond_8

    aput-object v4, v3, v14

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f()[I

    move-result-object v17

    aput-object v17, v5, v14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    :cond_8
    aput v8, v13, v7

    if-ne v14, v15, :cond_9

    move-object v5, v3

    int-to-double v2, v15

    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v17

    double-to-int v2, v2

    new-array v3, v2, [Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    new-array v8, v2, [Z

    move/from16 v17, v1

    new-array v1, v2, [[I

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-static {v5, v2, v3, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    invoke-static {v5, v2, v8, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    invoke-static {v5, v2, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    iput-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    move-object v8, v4

    move/from16 v15, v18

    goto :goto_c

    :cond_9
    move/from16 v17, v1

    move-object v5, v3

    move-object v8, v4

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v17

    const/4 v5, -0x1

    goto/16 :goto_8

    :cond_a
    move/from16 v17, v1

    move-object v5, v3

    invoke-virtual {v12, v8}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v8

    invoke-virtual {v4, v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->union(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_b
    add-int/lit8 v1, v16, 0x1

    aget v8, v6, v16

    move/from16 v16, v1

    move-object v3, v5

    move/from16 v1, v17

    const/4 v5, -0x1

    goto :goto_a

    :cond_c
    move/from16 v17, v1

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    aget v1, v1, v7

    move v4, v2

    :goto_d
    iget v5, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    if-lt v4, v5, :cond_d

    add-int/lit8 v1, v8, 0x1

    const/4 v5, -0x1

    aput v5, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    move/from16 v1, v17

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, -0x1

    iget-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->c()I

    move-result v10

    if-ne v1, v10, :cond_e

    add-int/lit8 v10, v8, 0x1

    aput v4, v6, v8

    move v8, v10

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_f
    move/from16 v17, v1

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v1, v8

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->c()I

    move-result v1

    move v6, v2

    :goto_e
    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v6, v7, :cond_10

    goto :goto_f

    :cond_10
    iget-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    aget v10, v10, v6

    if-ne v1, v10, :cond_14

    :goto_f
    if-ne v6, v7, :cond_13

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    aget-object v6, v6, v8

    iget-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->b()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v7

    instance-of v7, v6, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    if-eqz v7, :cond_12

    if-nez v9, :cond_11

    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    new-array v9, v7, [Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    :cond_11
    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    new-instance v10, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    check-cast v6, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    invoke-direct {v10, v6, v7}, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;-><init>(Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v10, v9, v7

    :cond_12
    iget-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    iget v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    iget-object v10, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c:[I

    aput v1, v6, v7

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v17

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    move/from16 v17, v1

    iget-object v1, v0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    new-instance v8, Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-direct {v8, v7}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    goto/16 :goto_0
.end method

.method public final b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->c()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->c()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->c()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    :goto_1
    iget p1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    if-lt v2, p1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->union(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_2
    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p1

    :goto_3
    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    if-lt v2, v1, :cond_7

    :cond_6
    :goto_4
    return-void

    :cond_7
    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->f:[Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->union(Lorg/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public final c(Lorg/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_9

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const-string v1, " lastPos="

    const-string v2, "firstPos="

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    const-string v5, "Nullable "

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    const/4 v4, 0x6

    if-eq v0, v4, :cond_4

    const/16 v4, 0x65

    if-eq v0, v4, :cond_1

    const/16 v6, 0x66

    if-ne v0, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-ne v0, v4, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Choice Node "

    goto :goto_2

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Seq Node "

    :goto_2
    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    add-int/2addr p2, v3

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c(Lorg/apache/xerces/impl/dtd/models/CMNode;I)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->c()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_3

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Rep Node "

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    add-int/2addr p2, v3

    :goto_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->c(Lorg/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_5

    :cond_6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Any Node: "

    :goto_4
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lorg/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Leaf: (pos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, p1

    check-cast v0, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->d()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "), "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "(elemIndex="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, " Nullable "

    goto :goto_4

    :goto_5
    return-void

    :cond_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public checkUniqueParticleAttribution(Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_8

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    move v3, v1

    :goto_1
    iget v4, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    :goto_2
    iget v7, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v6, v7, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v7, v7, v2

    aget v8, v7, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    aget v7, v7, v6

    if-eq v7, v9, :cond_7

    aget-object v7, v0, v3

    aget-byte v7, v7, v6

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v8, v7, v3

    aget-object v7, v7, v6

    invoke-static {v8, v7, p1}, Lorg/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    if-eqz v7, :cond_5

    aget-object v7, v7, v2

    if-eqz v7, :cond_5

    iget-object v8, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v8, v8, v2

    aget v10, v8, v3

    if-ne v10, v2, :cond_3

    move v10, v5

    goto :goto_3

    :cond_3
    move v10, v1

    :goto_3
    aget v8, v8, v6

    if-ne v8, v2, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    xor-int/2addr v8, v10

    if-eqz v8, :cond_5

    iget v8, v7, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    iget v7, v7, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    if-ne v8, v7, :cond_5

    aget-object v7, v0, v3

    aput-byte v9, v7, v6

    goto :goto_5

    :cond_5
    aget-object v7, v0, v3

    aput-byte v5, v7, v6

    goto :goto_5

    :cond_6
    aget-object v7, v0, v3

    aput-byte v9, v7, v6

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    move p1, v1

    :goto_7
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt p1, v2, :cond_c

    move p1, v1

    :goto_8
    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt p1, v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    aget v0, v0, p1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_b

    :cond_a
    return v5

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_c
    move v2, v1

    :goto_9
    iget v3, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v2, v3, :cond_d

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    aget-object v3, v0, p1

    aget-byte v3, v3, v2

    if-eq v3, v5, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    new-instance v0, Lorg/apache/xerces/impl/xs/XMLSchemaException;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cos-nonambig"

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/XSElementDecl;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public e(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x0

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    add-int/2addr p4, v4

    iget v5, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-lt p4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v3, v3, v1

    aget v3, v3, p4

    if-ne v3, v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    aget v5, v5, p4

    if-ne v5, v4, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v2, v2, p4

    check-cast v2, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v2}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/XSElementDecl;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v2, v1, p4

    :goto_1
    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-ne p4, v1, :cond_4

    aget p4, p2, v0

    aput p4, p2, v4

    aput v7, p2, v0

    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    aput v3, p2, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    aget-object p0, p0, v3

    if-eqz p0, :cond_6

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->c:I

    if-ne p4, p0, :cond_5

    move v0, v4

    :cond_5
    aput v0, p2, v6

    :cond_6
    return-object v2
.end method

.method public endContentModel([I)Z
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    if-eqz p0, :cond_0

    aget-object p0, p0, v1

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    if-ge p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final f()[I
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final g(Lorg/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->h:I

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->d()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    aput v1, p0, v0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;->d()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->i:[Lorg/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object p1, v2, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->j:[I

    aput v1, p0, v0

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_NIICM"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMUniOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->b()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMBinOp;->c()Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->g(Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    :goto_3
    return-void
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isCompactedForUPA()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->n:Z

    return p0
.end method

.method public isFinalState(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e:[Z

    aget-boolean p0, p0, p1

    :goto_0
    return p0
.end method

.method public occurenceInfo([I)[I
    .locals 3

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p1, v0

    :cond_0
    aget-object p0, p0, v0

    if-eqz p0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    const/4 v2, 0x2

    aget p1, p1, v2

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->c:I

    filled-new-array {v0, v1, p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public oneTransition(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    if-ne v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    move v4, v0

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v4, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v5, v5, v1

    aget v5, v5, v4

    if-ne v5, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->b:[I

    aget v6, v6, v4

    if-ne v6, v8, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v2, v2, v4

    check-cast v2, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v2}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/XSElementDecl;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_3
    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v6, v6, v4

    check-cast v6, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v2, v2, v4

    :goto_1
    iget v6, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-ne v4, v6, :cond_4

    aget v1, p2, v0

    aput v1, p2, v8

    aput v3, p2, v0

    :goto_2
    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    if-eqz v6, :cond_a

    aget-object v9, v6, v1

    if-eqz v9, :cond_8

    if-ne v1, v5, :cond_5

    aget v1, p2, v7

    add-int/2addr v1, v8

    aput v1, p2, v7

    iget v6, v9, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    if-le v1, v6, :cond_a

    if-eq v6, v3, :cond_a

    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->e(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    aget v1, p2, v7

    iget v9, v9, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    if-ge v1, v9, :cond_6

    aget v1, p2, v0

    aput v1, p2, v8

    aput v3, p2, v0

    goto :goto_2

    :cond_6
    aget-object p0, v6, v5

    if-eqz p0, :cond_a

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->c:I

    if-ne v4, p0, :cond_7

    goto :goto_3

    :cond_7
    move v8, v0

    :goto_3
    aput v8, p2, v7

    goto :goto_5

    :cond_8
    aget-object p0, v6, v5

    if-eqz p0, :cond_a

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->c:I

    if-ne v4, p0, :cond_9

    goto :goto_4

    :cond_9
    move v8, v0

    :goto_4
    aput v8, p2, v7

    :cond_a
    :goto_5
    aput v5, p2, v0

    return-object v2

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_7
    if-ne v1, v3, :cond_d

    aput v2, p2, v0

    :cond_d
    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public startContentModel()[I
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [I

    return-object p0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    aget v1, p1, v1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->l:[Lorg/apache/xerces/impl/xs/models/XSDFACM$a;

    if-eqz v2, :cond_1

    aget-object v2, v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    aget p1, p1, v3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_1
    iget v4, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->d:I

    if-lt v0, v4, :cond_2

    return-object v3

    :cond_2
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->k:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    if-eqz v2, :cond_4

    if-ne v1, v4, :cond_3

    iget v4, v2, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    if-lt p1, v4, :cond_4

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_3
    iget v4, v2, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    if-ge p1, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM;->a:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
