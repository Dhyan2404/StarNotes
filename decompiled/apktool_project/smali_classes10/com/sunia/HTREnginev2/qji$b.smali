.class public Lcom/sunia/HTREnginev2/qji$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/qji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field public a:[I

.field public b:[I

.field public c:Z

.field public d:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/qji$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>([Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/qji$a;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    const/16 v1, 0xff

    filled-new-array {v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/qji$b;->c:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qji$b;->d:[Ljava/util/List;

    iput p2, p0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v1, v1, v6

    iget-object v7, v0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aget v8, v7, v2

    aget v9, v7, v4

    aget v7, v7, v6

    shr-int/lit8 v10, v3, 0x4

    shr-int/lit8 v11, v5, 0x4

    shr-int/lit8 v12, v1, 0x4

    filled-new-array {v10, v11, v12}, [I

    move-result-object v10

    shr-int/lit8 v11, v8, 0x4

    shr-int/lit8 v12, v9, 0x4

    shr-int/lit8 v13, v7, 0x4

    filled-new-array {v11, v12, v13}, [I

    move-result-object v11

    aget v12, v10, v2

    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    :goto_0
    aget v6, v11, v2

    if-gt v12, v6, :cond_6

    shl-int/lit8 v6, v12, 0x8

    aget v17, v10, v4

    move/from16 v18, v13

    move/from16 v2, v17

    :goto_1
    aget v13, v11, v4

    if-gt v2, v13, :cond_5

    shl-int/lit8 v13, v2, 0x4

    or-int/2addr v13, v6

    const/16 v16, 0x2

    aget v19, v10, v16

    move/from16 v20, v6

    move/from16 v4, v19

    :goto_2
    aget v6, v11, v16

    if-gt v4, v6, :cond_4

    or-int v6, v13, v4

    move-object/from16 v21, v10

    iget-object v10, v0, Lcom/sunia/HTREnginev2/qji$b;->d:[Ljava/util/List;

    aget-object v6, v10, v6

    if-nez v6, :cond_2

    :cond_1
    move/from16 v23, v1

    move-object/from16 v24, v11

    move/from16 v25, v13

    goto :goto_5

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/HTREnginev2/qji$a;

    move-object/from16 v22, v6

    iget v6, v10, Lcom/sunia/HTREnginev2/qji$a;->a:I

    const/high16 v23, 0xff0000

    and-int v23, v6, v23

    move-object/from16 v24, v11

    shr-int/lit8 v11, v23, 0x10

    const v23, 0xff00

    and-int v23, v6, v23

    move/from16 v25, v13

    shr-int/lit8 v13, v23, 0x8

    and-int/lit16 v6, v6, 0xff

    if-lt v11, v3, :cond_3

    if-gt v11, v8, :cond_3

    if-lt v13, v5, :cond_3

    if-gt v13, v9, :cond_3

    if-lt v6, v1, :cond_3

    if-gt v6, v7, :cond_3

    iget v10, v10, Lcom/sunia/HTREnginev2/qji$a;->b:I

    int-to-float v10, v10

    move/from16 v23, v1

    iget v1, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    int-to-float v1, v1

    div-float/2addr v10, v1

    int-to-float v1, v11

    mul-float/2addr v1, v10

    add-float v18, v18, v1

    int-to-float v1, v13

    mul-float/2addr v1, v10

    add-float/2addr v14, v1

    int-to-float v1, v6

    mul-float/2addr v1, v10

    add-float/2addr v15, v1

    goto :goto_4

    :cond_3
    move/from16 v23, v1

    :goto_4
    move-object/from16 v6, v22

    move/from16 v1, v23

    move-object/from16 v11, v24

    move/from16 v13, v25

    goto :goto_3

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v21

    move/from16 v1, v23

    move-object/from16 v11, v24

    move/from16 v13, v25

    goto :goto_2

    :cond_4
    move/from16 v23, v1

    move-object/from16 v21, v10

    move-object/from16 v24, v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v20

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v23, v1

    move-object/from16 v21, v10

    move-object/from16 v24, v11

    const/16 v16, 0x2

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v18

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v13, v0

    float-to-int v1, v13

    shl-int/lit8 v1, v1, 0x10

    add-float/2addr v14, v0

    float-to-int v2, v14

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-float/2addr v15, v0

    float-to-int v0, v15

    or-int/2addr v0, v1

    return v0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/qji$b;->c:Z

    return p0
.end method

.method public c()Lcom/sunia/HTREnginev2/qji$b;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v5, v0, v4

    aget v6, v3, v4

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    const/4 v6, 0x2

    aget v0, v0, v6

    aget v3, v3, v6

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    if-lt v2, v5, :cond_1

    if-lt v2, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v4

    move v7, v6

    move v6, v1

    move v1, v7

    goto :goto_0

    :cond_1
    if-lt v5, v0, :cond_2

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v6

    move v6, v4

    :goto_0
    invoke-virtual {p0, v1, v0, v6}, Lcom/sunia/HTREnginev2/qji$b;->d(III)Lcom/sunia/HTREnginev2/qji$b;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0, v0, v1, v6}, Lcom/sunia/HTREnginev2/qji$b;->d(III)Lcom/sunia/HTREnginev2/qji$b;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0, v6, v1, v0}, Lcom/sunia/HTREnginev2/qji$b;->d(III)Lcom/sunia/HTREnginev2/qji$b;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iput-boolean v4, p0, Lcom/sunia/HTREnginev2/qji$b;->c:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public d(III)Lcom/sunia/HTREnginev2/qji$b;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    aget v2, v1, p1

    iget-object v3, v0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aget v4, v3, p1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    return-object v5

    :cond_0
    rsub-int/lit8 v2, p1, 0x2

    mul-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v4, p2, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v6, p3, 0x2

    mul-int/lit8 v6, v6, 0x4

    iget v7, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    const/4 v8, 0x2

    div-int/2addr v7, v8

    const/16 v9, 0x100

    new-array v9, v9, [I

    const/4 v10, 0x0

    aget v11, v1, v10

    shr-int/lit8 v12, v11, 0x4

    const/4 v13, 0x1

    aget v14, v1, v13

    shr-int/lit8 v15, v14, 0x4

    aget v1, v1, v8

    shr-int/lit8 v5, v1, 0x4

    filled-new-array {v12, v15, v5}, [I

    move-result-object v5

    aget v12, v3, v10

    shr-int/lit8 v15, v12, 0x4

    aget v10, v3, v13

    shr-int/lit8 v13, v10, 0x4

    aget v3, v3, v8

    shr-int/lit8 v8, v3, 0x4

    filled-new-array {v15, v13, v8}, [I

    move-result-object v8

    const/4 v13, 0x0

    filled-new-array {v13, v13, v13}, [I

    move-result-object v15

    aget v13, v5, p1

    move/from16 v20, v7

    const/16 v19, 0x0

    :goto_0
    aget v7, v8, p1

    if-gt v13, v7, :cond_7

    shl-int v7, v13, v2

    aget v21, v5, p2

    move/from16 v22, v2

    move/from16 v30, v19

    move/from16 v19, v13

    move/from16 v13, v21

    move/from16 v21, v30

    :goto_1
    aget v2, v8, p2

    if-gt v13, v2, :cond_5

    shl-int v2, v13, v4

    or-int/2addr v2, v7

    aget v23, v5, p3

    move-object/from16 v24, v5

    move/from16 v30, v23

    move/from16 v23, v4

    move/from16 v4, v30

    :goto_2
    aget v5, v8, p3

    if-gt v4, v5, :cond_4

    shl-int v5, v4, v6

    or-int/2addr v5, v2

    move/from16 v25, v2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/qji$b;->d:[Ljava/util/List;

    aget-object v2, v2, v5

    if-nez v2, :cond_2

    :cond_1
    move/from16 v28, v6

    move/from16 v29, v7

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    goto :goto_4

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/qji$a;

    move-object/from16 v26, v2

    iget v2, v5, Lcom/sunia/HTREnginev2/qji$a;->a:I

    const/high16 v27, 0xff0000

    and-int v27, v2, v27

    move/from16 v28, v6

    shr-int/lit8 v6, v27, 0x10

    const/16 v16, 0x0

    aput v6, v15, v16

    const v27, 0xff00

    and-int v27, v2, v27

    move/from16 v29, v7

    shr-int/lit8 v7, v27, 0x8

    const/16 v17, 0x1

    aput v7, v15, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v18, 0x2

    aput v2, v15, v18

    if-lt v6, v11, :cond_3

    if-gt v6, v12, :cond_3

    if-lt v7, v14, :cond_3

    if-gt v7, v10, :cond_3

    if-lt v2, v1, :cond_3

    if-gt v2, v3, :cond_3

    aget v2, v15, p1

    aget v6, v9, v2

    iget v5, v5, Lcom/sunia/HTREnginev2/qji$a;->b:I

    add-int/2addr v6, v5

    aput v6, v9, v2

    add-int v21, v21, v5

    :cond_3
    move-object/from16 v2, v26

    move/from16 v6, v28

    move/from16 v7, v29

    goto :goto_3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v25

    move/from16 v6, v28

    move/from16 v7, v29

    goto :goto_2

    :cond_4
    move/from16 v28, v6

    move/from16 v29, v7

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_1

    :cond_5
    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v28, v6

    move/from16 v7, v20

    move/from16 v2, v21

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    if-lt v2, v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v13, v19, 0x1

    move/from16 v19, v2

    move/from16 v20, v7

    move/from16 v2, v22

    move/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, v28

    goto/16 :goto_0

    :cond_7
    move/from16 v7, v20

    const/16 v16, 0x0

    :goto_5
    iget-object v1, v0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    aget v1, v1, p1

    iget-object v2, v0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    move/from16 v10, v16

    :goto_6
    iget-object v6, v0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aget v8, v6, p1

    if-gt v4, v8, :cond_f

    aget v11, v9, v4

    if-nez v11, :cond_8

    if-nez v10, :cond_9

    if-ge v4, v8, :cond_9

    iget-object v6, v0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    add-int/lit8 v8, v4, 0x1

    aput v8, v6, p1

    goto :goto_7

    :cond_8
    add-int v12, v10, v11

    if-ge v12, v7, :cond_a

    move v5, v4

    move v10, v12

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    sub-int v1, v7, v10

    sub-int v2, v12, v7

    if-gt v1, v2, :cond_c

    if-ne v5, v3, :cond_d

    iget v1, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    if-ne v11, v1, :cond_b

    aput v4, v6, p1

    const/4 v1, 0x0

    return-object v1

    :cond_b
    add-int/lit8 v2, v4, 0x1

    move v1, v4

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    if-ne v4, v8, :cond_e

    iget v2, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    if-ne v11, v2, :cond_d

    return-object v1

    :cond_d
    move v2, v4

    move v1, v5

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v1, v4

    move v10, v12

    :cond_f
    :goto_8
    new-instance v3, Lcom/sunia/HTREnginev2/qji$b;

    iget-object v4, v0, Lcom/sunia/HTREnginev2/qji$b;->d:[Ljava/util/List;

    invoke-direct {v3, v4, v10}, Lcom/sunia/HTREnginev2/qji$b;-><init>([Ljava/util/List;I)V

    iget v4, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    sub-int/2addr v4, v10

    iput v4, v0, Lcom/sunia/HTREnginev2/qji$b;->e:I

    iget-object v4, v3, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    iget-object v5, v0, Lcom/sunia/HTREnginev2/qji$b;->a:[I

    aget v6, v5, p1

    aput v6, v4, p1

    iget-object v6, v3, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aput v1, v6, p1

    aput v2, v5, p1

    aget v1, v5, p2

    aput v1, v4, p2

    iget-object v0, v0, Lcom/sunia/HTREnginev2/qji$b;->b:[I

    aget v1, v0, p2

    aput v1, v6, p2

    aget v1, v5, p3

    aput v1, v4, p3

    aget v0, v0, p3

    aput v0, v6, p3

    return-object v3
.end method
