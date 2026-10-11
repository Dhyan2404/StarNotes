.class public Lcom/sunia/calculatorv2/ink/model/x;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/d0;
.implements Lcom/sunia/HTREnginev2/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/y;",
        ">;",
        "Lcom/sunia/HTREnginev2/d0;",
        "Lcom/sunia/HTREnginev2/i;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/regex/Pattern;


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Lcom/sunia/HTREnginev2/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^.*[\\p{Script=Arab}\\p{Script=Hebr}].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/calculatorv2/ink/model/x;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;>;>;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/graphics/BoundBox;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->i:Z

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->j:Z

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/x;->f:Ljava/util/List;

    invoke-virtual {p0, p3}, Lcom/sunia/calculatorv2/ink/model/f;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/s8p;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/s8p;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->h:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/x;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5
    iget-boolean v2, v0, Lcom/sunia/calculatorv2/ink/model/x;->j:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target bound:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text-line"

    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-boolean v3, v0, Lcom/sunia/calculatorv2/ink/model/x;->i:Z

    const/4 v8, 0x0

    if-eqz v3, :cond_a

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v10, v0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sunia/calculatorv2/ink/model/y;

    .line 12
    invoke-virtual {v11}, Lcom/sunia/calculatorv2/ink/model/y;->f()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sunia/calculatorv2/ink/model/w;

    .line 13
    invoke-virtual {v12}, Lcom/sunia/calculatorv2/ink/model/w;->a()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1, v13, v8, v14, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 15
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v13, v5

    if-lez v13, :cond_1

    .line 16
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 17
    :cond_1
    new-instance v13, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-direct {v13, v12, v9}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    neg-float v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    move v13, v12

    move v14, v13

    move v12, v11

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sunia/calculatorv2/ink/util/Pair;

    .line 21
    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 p1, v3

    neg-int v3, v6

    .line 23
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v6, v6, 0x2

    iget v0, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v8

    move-object/from16 v18, v4

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v8

    if-ge v3, v13, :cond_3

    move v13, v3

    :cond_3
    if-le v6, v11, :cond_4

    move v11, v6

    :cond_4
    if-ge v0, v14, :cond_5

    move v14, v0

    :cond_5
    if-le v4, v12, :cond_6

    move v12, v4

    .line 24
    :cond_6
    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v15}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/w;

    new-instance v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    new-instance v15, Lcom/sunia/HTREnginev2/s1;

    move/from16 v19, v11

    iget v11, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v11

    invoke-direct {v15, v3, v8}, Lcom/sunia/HTREnginev2/s1;-><init>(II)V

    invoke-direct {v6, v15, v7}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v4, v6}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v0, v8

    add-float v3, v10, v1

    add-float/2addr v0, v3

    float-to-int v8, v0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move/from16 v11, v19

    goto :goto_1

    :cond_7
    move-object/from16 v18, v4

    sub-int v0, v11, v13

    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v3, v12, v14

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 26
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v1

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v4

    add-int/2addr v13, v11

    neg-int v6, v13

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-int/2addr v14, v12

    neg-int v8, v14

    int-to-float v8, v8

    mul-float/2addr v8, v7

    int-to-float v0, v0

    .line 27
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v7

    mul-float/2addr v7, v0

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v10

    int-to-float v3, v3

    mul-float/2addr v10, v3

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_8

    .line 28
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v2

    div-float/2addr v2, v0

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v0

    div-float v2, v0, v3

    .line 30
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/util/Pair;

    .line 31
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/calculatorv2/ink/model/w;

    .line 32
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/HTREnginev2/s1;

    .line 33
    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v10}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v7}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v11

    invoke-virtual {v7}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v7

    .line 35
    new-instance v12, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v13, v10, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    add-float/2addr v13, v6

    mul-float/2addr v13, v2

    add-float/2addr v13, v1

    iget v14, v10, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    add-float/2addr v14, v6

    mul-float/2addr v14, v2

    add-float/2addr v14, v1

    iget v15, v10, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    add-float/2addr v15, v8

    mul-float/2addr v15, v2

    add-float/2addr v15, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    add-float/2addr v10, v8

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    invoke-direct {v12, v13, v14, v15, v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    .line 36
    new-instance v10, Lcom/sunia/HTREnginev2/s1;

    add-float/2addr v11, v6

    mul-float/2addr v11, v2

    add-float/2addr v11, v1

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v4

    invoke-direct {v10, v11, v7}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    .line 37
    new-instance v7, Lcom/sunia/HTREnginev2/a0;

    invoke-virtual {v5}, Lcom/sunia/calculatorv2/ink/model/w;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v10, v2, v12}, Lcom/sunia/HTREnginev2/a0;-><init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/s1;FLcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    invoke-virtual {v5, v7}, Lcom/sunia/calculatorv2/ink/model/w;->q(Lcom/sunia/HTREnginev2/k;)V

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/w;

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v18

    invoke-static {v5, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const/4 v0, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_7

    .line 39
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p0

    .line 41
    iget-object v6, v4, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/y;

    .line 42
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/model/y;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/calculatorv2/ink/model/w;

    .line 43
    invoke-virtual {v9}, Lcom/sunia/calculatorv2/ink/model/w;->a()Ljava/lang/String;

    move-result-object v10

    .line 44
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v10, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 46
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v3, v8, v7, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 49
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v9

    mul-float/2addr v7, v9

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    cmpl-float v7, v7, v9

    const v9, 0x33d6bf95    # 1.0E-7f

    if-ltz v7, :cond_d

    .line 50
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    div-float/2addr v7, v10

    .line 51
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    .line 52
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v10

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 53
    :cond_d
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    div-float/2addr v7, v10

    .line 54
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    .line 55
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v10

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    :goto_5
    int-to-float v11, v11

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    .line 56
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterX()F

    move-result v11

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getCenterY()F

    move-result v2

    iget v12, v6, Landroid/graphics/Rect;->left:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/Rect;->top:I

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    .line 57
    new-instance v13, Lcom/sunia/HTREnginev2/a0;

    new-instance v15, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v15, v9, v10}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    new-instance v9, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    add-float/2addr v10, v12

    mul-float/2addr v10, v7

    add-float/2addr v10, v11

    iget v5, v6, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v12

    mul-float/2addr v5, v7

    add-float/2addr v5, v11

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v14

    mul-float/2addr v8, v7

    add-float/2addr v8, v2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    add-float/2addr v6, v14

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    invoke-direct {v9, v10, v5, v8, v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-direct {v13, v3, v15, v7, v9}, Lcom/sunia/HTREnginev2/a0;-><init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/s1;FLcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    iput-object v13, v4, Lcom/sunia/calculatorv2/ink/model/x;->k:Lcom/sunia/HTREnginev2/a0;

    .line 58
    sget-object v5, Lcom/sunia/calculatorv2/ink/model/x;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_e

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/util/Pair;

    .line 60
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 61
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {v1, v3, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 63
    new-instance v13, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v15, v10, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v15, v5

    add-float/2addr v15, v12

    mul-float/2addr v15, v7

    add-float/2addr v15, v11

    move-object/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    add-float/2addr v0, v12

    mul-float/2addr v0, v7

    add-float/2addr v0, v11

    move/from16 v18, v11

    iget v11, v10, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v11, v14

    mul-float/2addr v11, v7

    add-float/2addr v11, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    add-float/2addr v10, v14

    mul-float/2addr v10, v7

    add-float/2addr v10, v2

    invoke-direct {v13, v15, v0, v11, v10}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    .line 64
    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/w;

    new-instance v6, Lcom/sunia/HTREnginev2/u0;

    invoke-direct {v6, v13}, Lcom/sunia/HTREnginev2/u0;-><init>(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    invoke-virtual {v0, v6}, Lcom/sunia/calculatorv2/ink/model/w;->q(Lcom/sunia/HTREnginev2/k;)V

    .line 65
    invoke-virtual {v1, v3, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v5, v0

    move v8, v9

    move-object/from16 v0, v17

    move/from16 v11, v18

    goto :goto_6

    :cond_e
    const/4 v0, 0x1

    .line 66
    :goto_7
    iput-boolean v0, v4, Lcom/sunia/calculatorv2/ink/model/x;->j:Z

    :cond_f
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->j:Z

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->k()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/x;->k:Lcom/sunia/HTREnginev2/a0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/x;->f:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/y;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/x;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "text-line"

    return-object p0
.end method
