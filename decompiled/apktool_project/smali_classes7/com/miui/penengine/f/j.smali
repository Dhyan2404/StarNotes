.class public Lcom/miui/penengine/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/penengine/f/c;


# static fields
.field public static final A:I = -0x1

.field public static final B:I = 0x96

.field public static final r:Ljava/lang/String; = "PredictAlgo"

.field public static final s:I = 0x0

.field public static final t:Z = true

.field public static final u:I = 0x28

.field public static final v:I = 0xc

.field public static final w:I = 0x1

.field public static final x:F = 4.333f

.field public static final y:I = 0x32

.field public static final z:I


# instance fields
.field public a:[[F

.field public b:[F

.field public c:F

.field public d:I

.field public final e:[F

.field public final f:[F

.field public g:Lcom/miui/penengine/f/e;

.field public h:J

.field public i:J

.field public j:F

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/miui/penengine/f/h;

.field public m:[F

.field public n:[F

.field public o:[F

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/miui/penengine/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/miui/penengine/f/j;->a:[[F

    const/16 v0, 0xf0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/penengine/f/j;->b:[F

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/miui/penengine/f/j;->c:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/penengine/f/j;->d:I

    const/16 v0, 0xc

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/penengine/f/j;->e:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/penengine/f/j;->f:[F

    const-wide/16 v1, 0x5

    iput-wide v1, p0, Lcom/miui/penengine/f/j;->h:J

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/miui/penengine/f/j;->i:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/penengine/f/j;->j:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-static {}, Lcom/miui/penengine/f/h;->a()Lcom/miui/penengine/f/h;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    const/16 v1, 0x28

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/penengine/f/j;->m:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/penengine/f/j;->n:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/penengine/f/j;->o:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-static {}, Lcom/miui/penengine/e/b;->c()Lcom/miui/penengine/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/penengine/f/j;->q:Lcom/miui/penengine/e/b;

    invoke-static {p1}, Lcom/miui/penengine/f/e;->a(Landroid/content/Context;)Lcom/miui/penengine/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    invoke-virtual {p0}, Lcom/miui/penengine/f/j;->c()V

    sget-object p0, Lcom/miui/penengine/c/a;->b:Lcom/miui/penengine/c/a;

    new-instance v0, Lcom/sunia/HTREnginev2/ezo;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ezo;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/penengine/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "predict/estimate.hdb"

    invoke-static {p0, v2, v0, v1}, Lcom/miui/penengine/facade/algorithm/JNIPathEstimateInterface;->init(Landroid/content/res/AssetManager;Ljava/lang/String;IZ)I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/miui/penengine/f/j;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/miui/penengine/f/j;->h:J

    return-void
.end method

.method public a(Lcom/miui/penengine/d/c;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/miui/penengine/f/j;->c()V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0, p1}, Lcom/miui/penengine/f/h;->b(Lcom/miui/penengine/d/c;)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/penengine/d/c;

    invoke-virtual {v0}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/miui/penengine/d/c;->a(J)V

    const-string v0, "PredictAlgo"

    const-string v1, "Same Time point"

    invoke-static {v0, v1}, Lcom/miui/penengine/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/miui/penengine/f/j;->j:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/penengine/d/c;

    invoke-static {v2, p1}, Lcom/miui/penengine/f/g;->a(Lcom/miui/penengine/d/c;Lcom/miui/penengine/d/c;)D

    move-result-wide v2

    add-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lcom/miui/penengine/f/j;->j:F

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0, p1}, Lcom/miui/penengine/f/h;->a(Lcom/miui/penengine/d/c;)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/penengine/d/c;->a(F)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/penengine/d/c;->b(F)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->d()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/penengine/d/c;->c(D)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->b()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/penengine/d/c;->a(D)V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->c()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/penengine/d/c;->b(D)V

    iget-object p0, p0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    const-string p0, "PredictAlgo"

    .line 5
    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[F[F)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a()[Lcom/miui/penengine/f/f;
    .locals 30

    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, v0, Lcom/miui/penengine/f/j;->q:Lcom/miui/penengine/e/b;

    invoke-virtual {v1}, Lcom/miui/penengine/e/b;->b()F

    move-result v1

    iget v2, v0, Lcom/miui/penengine/f/j;->j:F

    iget-wide v3, v0, Lcom/miui/penengine/f/j;->i:J

    long-to-float v3, v3

    div-float/2addr v3, v1

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_1
    iget-object v6, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x2a

    if-ge v6, v7, :cond_1

    iget-object v6, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    new-instance v15, Lcom/miui/penengine/d/c;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/miui/penengine/d/c;-><init>(DDJI)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    iget-object v7, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    const v8, 0x408aa7f0    # 4.333f

    invoke-static {v6, v7, v8, v5, v2}, Lcom/miui/penengine/f/g;->a(Ljava/util/List;Ljava/util/List;FIZ)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    return-object v7

    :cond_2
    iget-object v6, v0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    iget-object v9, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/miui/penengine/f/e;->b(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    return-object v7

    :cond_3
    move v6, v3

    move v9, v6

    :goto_2
    const/16 v10, 0x28

    const/4 v11, 0x2

    if-ge v6, v10, :cond_4

    add-int/lit8 v10, v6, 0x2

    iget-object v12, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/penengine/d/c;

    iget-object v13, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    add-int/lit8 v14, v10, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/penengine/d/c;

    iget-object v15, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v16, v9, 0x1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->f()F

    move-result v17

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->f()F

    move-result v18

    sub-float v17, v17, v18

    aput v17, v15, v9

    iget-object v9, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v15, v16, 0x1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->g()F

    move-result v17

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->g()F

    move-result v18

    sub-float v17, v17, v18

    aput v17, v9, v16

    iget-object v9, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v17

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v19

    sub-double v7, v17, v19

    double-to-float v7, v7

    aput v7, v9, v15

    iget-object v7, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v17

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v19

    move v15, v5

    sub-double v4, v17, v19

    double-to-float v4, v4

    aput v4, v7, v16

    iget-object v4, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v18

    move v7, v10

    sub-double v9, v16, v18

    double-to-float v9, v9

    aput v9, v4, v8

    iget-object v4, v0, Lcom/miui/penengine/f/j;->m:[F

    iget-object v8, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    add-int/lit8 v10, v7, -0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->f()F

    move-result v22

    iget-object v7, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v23

    iget-object v7, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->f()F

    move-result v24

    iget-object v7, v0, Lcom/miui/penengine/f/j;->p:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v25

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->f()F

    move-result v26

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->g()F

    move-result v27

    invoke-static/range {v22 .. v27}, Lcom/miui/penengine/f/g;->a(FFFFFF)F

    move-result v7

    aput v7, v4, v6

    iget-object v4, v0, Lcom/miui/penengine/f/j;->b:[F

    add-int/lit8 v9, v5, 0x1

    iget-object v7, v0, Lcom/miui/penengine/f/j;->m:[F

    aget v7, v7, v6

    aput v7, v4, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v15

    const/4 v4, 0x1

    const/4 v7, 0x0

    const v8, 0x408aa7f0    # 4.333f

    goto/16 :goto_2

    :cond_4
    move v15, v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v4, v0, Lcom/miui/penengine/f/j;->b:[F

    const/16 v5, 0x1a

    invoke-static {v4, v5, v3}, Lcom/miui/penengine/facade/algorithm/JNIPathEstimateInterface;->runModel([FII)[F

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    if-eqz v4, :cond_13

    array-length v6, v4

    if-eq v6, v5, :cond_5

    goto/16 :goto_b

    :cond_5
    const/16 v5, 0x19

    aget v5, v4, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v6, v0, Lcom/miui/penengine/f/j;->j:F

    iget-wide v7, v0, Lcom/miui/penengine/f/j;->i:J

    long-to-float v7, v7

    div-float v8, v7, v1

    cmpg-float v8, v6, v8

    const/high16 v12, 0x3f800000    # 1.0f

    if-gez v8, :cond_6

    mul-float/2addr v6, v1

    div-float/2addr v6, v7

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v6, v1

    move v1, v6

    move v6, v15

    goto :goto_3

    :cond_6
    move v6, v15

    if-ge v6, v10, :cond_7

    int-to-float v1, v6

    mul-float/2addr v1, v12

    const/high16 v7, 0x42200000    # 40.0f

    div-float/2addr v1, v7

    goto :goto_3

    :cond_7
    const v7, 0x3f0ccccd    # 0.55f

    div-float/2addr v7, v1

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v1

    const v1, 0x3f266666    # 0.65f

    add-float/2addr v7, v1

    iget v1, v0, Lcom/miui/penengine/f/j;->c:F

    const/high16 v8, 0x41400000    # 12.0f

    div-float/2addr v1, v8

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v8

    const v8, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v8

    mul-float/2addr v1, v7

    :goto_3
    mul-float/2addr v5, v1

    iget v1, v0, Lcom/miui/penengine/f/j;->c:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v5, v1

    iget-object v7, v0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    invoke-virtual {v7}, Lcom/miui/penengine/f/e;->b()D

    move-result-wide v7

    const-wide v9, 0x4062c00000000000L    # 150.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    move v10, v3

    const-wide/16 v16, 0x0

    :goto_4
    if-ge v10, v5, :cond_a

    iget-object v9, v0, Lcom/miui/penengine/f/j;->n:[F

    iget-object v3, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/penengine/d/c;

    invoke-virtual {v3}, Lcom/miui/penengine/d/c;->f()F

    move-result v3

    mul-int/lit8 v19, v10, 0x2

    aget v20, v4, v19

    add-float v3, v3, v20

    aput v3, v9, v10

    iget-object v3, v0, Lcom/miui/penengine/f/j;->o:[F

    iget-object v9, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/penengine/d/c;

    invoke-virtual {v9}, Lcom/miui/penengine/d/c;->g()F

    move-result v20

    const/4 v9, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v13, v4, v19

    add-float v20, v20, v13

    aput v20, v3, v10

    if-lez v10, :cond_8

    if-ge v10, v5, :cond_8

    iget-object v3, v0, Lcom/miui/penengine/f/j;->n:[F

    aget v13, v3, v10

    float-to-double v14, v13

    iget-object v13, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v9, v13, v10

    float-to-double v11, v9

    add-int/lit8 v9, v10, -0x1

    aget v3, v3, v9

    move-object/from16 v29, v4

    float-to-double v3, v3

    aget v9, v13, v9

    move v13, v1

    float-to-double v0, v9

    move-wide/from16 v21, v14

    move-wide/from16 v23, v11

    move-wide/from16 v25, v3

    move-wide/from16 v27, v0

    invoke-static/range {v21 .. v28}, Lcom/miui/penengine/f/g;->a(DDDD)D

    move-result-wide v0

    add-double v16, v16, v0

    cmpl-double v0, v16, v7

    if-lez v0, :cond_9

    if-nez v2, :cond_9

    sub-int/2addr v5, v10

    int-to-float v0, v5

    sub-float v1, v13, v0

    move v5, v10

    goto :goto_5

    :cond_8
    move v13, v1

    move-object/from16 v29, v4

    :cond_9
    move v1, v13

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v29

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_a
    move v13, v1

    move-object/from16 v29, v4

    iget-object v1, v0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    invoke-virtual {v1}, Lcom/miui/penengine/f/e;->a()F

    move-result v1

    const/4 v2, 0x1

    :goto_6
    const/16 v3, 0xc

    if-gt v2, v3, :cond_e

    add-int/lit8 v3, v2, -0x1

    const/16 v4, 0xb

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v2, v5, :cond_b

    iget-object v7, v0, Lcom/miui/penengine/f/j;->n:[F

    aget v7, v7, v3

    iget-object v8, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v8, v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v12, v9, v1

    iget-object v9, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/penengine/d/c;

    invoke-virtual {v9}, Lcom/miui/penengine/d/c;->f()F

    move-result v9

    sub-float/2addr v7, v9

    mul-float/2addr v7, v12

    iget-object v9, v0, Lcom/miui/penengine/f/j;->e:[F

    aget v9, v9, v4

    mul-float/2addr v9, v1

    add-float/2addr v9, v7

    iget-object v7, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->f()F

    move-result v7

    add-float/2addr v7, v9

    iget-object v9, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/penengine/d/c;

    invoke-virtual {v9}, Lcom/miui/penengine/d/c;->g()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v12

    iget-object v9, v0, Lcom/miui/penengine/f/j;->f:[F

    aget v4, v9, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v8

    iget-object v8, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/penengine/d/c;

    invoke-virtual {v8}, Lcom/miui/penengine/d/c;->g()F

    move-result v8

    add-float/2addr v8, v4

    iget-object v4, v0, Lcom/miui/penengine/f/j;->e:[F

    iget-object v9, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/penengine/d/c;

    invoke-virtual {v9}, Lcom/miui/penengine/d/c;->f()F

    move-result v9

    sub-float v9, v7, v9

    aput v9, v4, v3

    iget-object v4, v0, Lcom/miui/penengine/f/j;->f:[F

    iget-object v9, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/penengine/d/c;

    invoke-virtual {v9}, Lcom/miui/penengine/d/c;->g()F

    move-result v9

    sub-float v9, v8, v9

    aput v9, v4, v3

    iget-object v4, v0, Lcom/miui/penengine/f/j;->n:[F

    aput v7, v4, v3

    iget-object v4, v0, Lcom/miui/penengine/f/j;->o:[F

    aput v8, v4, v3

    const/4 v7, 0x2

    goto/16 :goto_7

    :cond_b
    const/4 v7, 0x2

    if-lt v2, v7, :cond_d

    iget-object v8, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/penengine/d/c;

    invoke-virtual {v8}, Lcom/miui/penengine/d/c;->f()F

    move-result v8

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v10, v9, -0x2

    aget v10, v29, v10

    add-float/2addr v8, v10

    iget-object v10, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/penengine/d/c;

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->g()F

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v12, v9, -0x1

    aget v11, v29, v12

    add-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v1

    iget-object v11, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/penengine/d/c;

    invoke-virtual {v11}, Lcom/miui/penengine/d/c;->f()F

    move-result v11

    sub-float/2addr v8, v11

    mul-float/2addr v8, v12

    iget-object v11, v0, Lcom/miui/penengine/f/j;->e:[F

    aget v11, v11, v4

    mul-float/2addr v11, v1

    add-float/2addr v11, v8

    iget-object v8, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/penengine/d/c;

    invoke-virtual {v8}, Lcom/miui/penengine/d/c;->f()F

    move-result v8

    add-float/2addr v8, v11

    iget-object v11, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/penengine/d/c;

    invoke-virtual {v11}, Lcom/miui/penengine/d/c;->g()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v12

    iget-object v11, v0, Lcom/miui/penengine/f/j;->f:[F

    aget v4, v11, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v10

    iget-object v10, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/penengine/d/c;

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->g()F

    move-result v10

    add-float/2addr v10, v4

    iget-object v4, v0, Lcom/miui/penengine/f/j;->e:[F

    iget-object v11, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/penengine/d/c;

    invoke-virtual {v11}, Lcom/miui/penengine/d/c;->f()F

    move-result v11

    sub-float v11, v8, v11

    aput v11, v4, v3

    iget-object v4, v0, Lcom/miui/penengine/f/j;->f:[F

    iget-object v11, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/penengine/d/c;

    invoke-virtual {v11}, Lcom/miui/penengine/d/c;->g()F

    move-result v11

    sub-float v11, v10, v11

    aput v11, v4, v3

    add-int/lit8 v4, v5, 0x1

    if-ne v2, v4, :cond_c

    int-to-float v4, v5

    sub-float v4, v13, v4

    iget-object v11, v0, Lcom/miui/penengine/f/j;->n:[F

    add-int/lit8 v12, v2, -0x2

    aget v14, v11, v12

    sub-float/2addr v8, v14

    mul-float/2addr v8, v4

    add-float/2addr v8, v14

    aput v8, v11, v12

    iget-object v8, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v11, v8, v12

    sub-float/2addr v10, v11

    mul-float/2addr v10, v4

    add-float/2addr v10, v11

    aput v10, v8, v12

    :cond_c
    iget-object v4, v0, Lcom/miui/penengine/f/j;->n:[F

    add-int/lit8 v8, v2, -0x2

    aget v10, v4, v8

    aput v10, v4, v3

    iget-object v4, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v8, v4, v8

    aput v8, v4, v3

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, v0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    iget-object v2, v0, Lcom/miui/penengine/f/j;->n:[F

    iget-object v3, v0, Lcom/miui/penengine/f/j;->o:[F

    invoke-virtual {v1, v2, v3, v5}, Lcom/miui/penengine/f/h;->a([F[FI)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget v1, v0, Lcom/miui/penengine/f/j;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    move v1, v5

    :cond_f
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [Lcom/miui/penengine/f/f;

    if-lez v5, :cond_11

    const v3, 0x408aa7f0    # 4.333f

    mul-float/2addr v3, v13

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    div-float/2addr v5, v4

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_12

    int-to-float v8, v4

    mul-float/2addr v8, v5

    sub-float v9, v13, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v8

    cmpl-float v12, v9, v7

    if-nez v12, :cond_10

    iget-object v7, v0, Lcom/miui/penengine/f/j;->n:[F

    aget v7, v7, v8

    iget-object v9, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v8, v9, v8

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_10
    iget-object v12, v0, Lcom/miui/penengine/f/j;->n:[F

    aget v14, v12, v8

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v16, v15, v7

    add-float v16, v16, v9

    mul-float v14, v14, v16

    add-int/lit8 v17, v8, 0x1

    aget v12, v12, v17

    sub-float/2addr v7, v9

    mul-float/2addr v12, v7

    add-float v9, v12, v14

    iget-object v12, v0, Lcom/miui/penengine/f/j;->o:[F

    aget v8, v12, v8

    mul-float v8, v8, v16

    aget v12, v12, v17

    mul-float/2addr v12, v7

    add-float/2addr v8, v12

    move v7, v9

    :goto_9
    new-instance v9, Lcom/miui/penengine/f/f;

    int-to-long v10, v4

    move v14, v13

    int-to-long v12, v3

    mul-long/2addr v10, v12

    iget-object v12, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/penengine/d/c;

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v12

    add-long/2addr v12, v10

    invoke-direct {v9, v7, v8, v12, v13}, Lcom/miui/penengine/f/f;-><init>(FFJ)V

    aput-object v9, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v14

    move v7, v15

    goto :goto_8

    :cond_11
    iget-object v0, v0, Lcom/miui/penengine/f/j;->k:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/penengine/d/c;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_12

    new-instance v4, Lcom/miui/penengine/f/f;

    invoke-virtual {v0}, Lcom/miui/penengine/d/c;->f()F

    move-result v5

    invoke-virtual {v0}, Lcom/miui/penengine/d/c;->g()F

    move-result v6

    invoke-virtual {v0}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/penengine/f/f;-><init>(FFJ)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    return-object v2

    :cond_13
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "v2.1.5"

    return-object p0
.end method

.method public b(I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    int-to-float v0, p1

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/penengine/f/j;->c:F

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/penengine/f/j;->c:F

    :cond_1
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/miui/penengine/f/j;->i:J

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    invoke-virtual {v0}, Lcom/miui/penengine/f/e;->c()V

    iget-object v0, p0, Lcom/miui/penengine/f/j;->l:Lcom/miui/penengine/f/h;

    invoke-virtual {v0}, Lcom/miui/penengine/f/h;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/f/j;->j:F

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/penengine/f/j;->e:[F

    aput v0, v2, v1

    iget-object v2, p0, Lcom/miui/penengine/f/j;->f:[F

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()[F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/f/j;->g:Lcom/miui/penengine/f/e;

    iget-object p0, p0, Lcom/miui/penengine/f/e;->j:[F

    return-object p0
.end method
