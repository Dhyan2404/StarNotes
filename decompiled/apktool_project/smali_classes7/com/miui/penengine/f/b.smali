.class public Lcom/miui/penengine/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:[F

.field public h:[F

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:[[F

.field public m:[[F

.field public n:[[F

.field public o:[[F

.field public p:[[F

.field public q:[[F

.field public r:[[F

.field public s:[[F

.field public t:[[F

.field public u:[[F

.field public v:[[F

.field public w:[[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, Lcom/miui/penengine/f/b;->a:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/miui/penengine/f/b;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/penengine/f/b;->c:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/penengine/f/b;->g:[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->h:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->i:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->j:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->k:[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->l:[[F

    filled-new-array {v0, v0}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->m:[[F

    filled-new-array {v0, v0}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->n:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->o:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->p:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->q:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->r:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->s:[[F

    filled-new-array {v1, v0}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->t:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/miui/penengine/f/b;->u:[[F

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/miui/penengine/f/b;->v:[[F

    filled-new-array {v1, v1}, [I

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/miui/penengine/f/b;->w:[[F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 1
    iget-object v5, p0, Lcom/miui/penengine/f/b;->v:[[F

    aget-object v5, v5, v1

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/penengine/f/b;->v:[[F

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/miui/penengine/f/b;->n:[[F

    aget-object v6, v5, v0

    aget v6, v6, v0

    iget-object v7, p0, Lcom/miui/penengine/f/b;->s:[[F

    aget-object v8, v7, v0

    aget v8, v8, v0

    add-float/2addr v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v6, v8, v6

    aput v6, v4, v0

    const/4 v4, 0x1

    aget-object v1, v1, v4

    aget-object v5, v5, v4

    aget v5, v5, v4

    aget-object v6, v7, v3

    aget v6, v6, v3

    add-float/2addr v5, v6

    div-float/2addr v8, v5

    aput v8, v1, v4

    move v1, v0

    :goto_2
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    move v5, v0

    :goto_3
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Lcom/miui/penengine/f/b;->t:[[F

    aget-object v6, v6, v1

    aput v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/penengine/f/b;->t:[[F

    aget-object v2, v1, v0

    iget-object v5, p0, Lcom/miui/penengine/f/b;->s:[[F

    aget-object v6, v5, v0

    aget v6, v6, v0

    iget-object p0, p0, Lcom/miui/penengine/f/b;->v:[[F

    aget-object v7, p0, v0

    aget v8, v7, v0

    mul-float/2addr v6, v8

    aput v6, v2, v0

    aget-object v2, v1, v4

    aget-object v6, v5, v4

    aget v6, v6, v0

    aget v7, v7, v0

    mul-float/2addr v6, v7

    aput v6, v2, v0

    aget-object v0, v1, v3

    aget-object v2, v5, v3

    aget v2, v2, v3

    aget-object p0, p0, v4

    aget v6, p0, v4

    mul-float/2addr v2, v6

    aput v2, v0, v4

    const/4 v0, 0x3

    aget-object v1, v1, v0

    aget-object v0, v5, v0

    aget v0, v0, v3

    aget p0, p0, v4

    mul-float/2addr v0, p0

    aput v0, v1, v4

    return-void
.end method

.method public a(FF)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/miui/penengine/f/b;->h:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput v2, v0, p1

    const/4 v3, 0x2

    aput p2, v0, v3

    const/4 p2, 0x3

    aput v2, v0, p2

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/miui/penengine/f/b;->f:F

    move v0, v1

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    iget-object v6, p0, Lcom/miui/penengine/f/b;->l:[[F

    aget-object v6, v6, v0

    aput v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/penengine/f/b;->l:[[F

    aget-object v5, v0, v1

    iget v6, p0, Lcom/miui/penengine/f/b;->f:F

    aput v6, v5, v1

    aget-object v5, v0, p1

    const/high16 v7, 0x41200000    # 10.0f

    div-float v8, v6, v7

    aput v8, v5, p1

    aget-object v5, v0, v3

    aput v6, v5, v3

    aget-object v0, v0, p2

    aput v8, v0, p2

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_3

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_2

    iget-object v6, p0, Lcom/miui/penengine/f/b;->o:[[F

    aget-object v6, v6, v0

    aput v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/penengine/f/b;->o:[[F

    aget-object v5, v0, v1

    aput v7, v5, v1

    aget-object v5, v0, p1

    const/high16 v6, 0x40000000    # 2.0f

    aput v6, v5, p1

    aget-object v5, v0, v3

    aput v7, v5, v3

    aget-object v0, v0, p2

    aput v6, v0, p2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_4

    iget-object v5, p0, Lcom/miui/penengine/f/b;->g:[F

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/penengine/f/b;->d:F

    iput v0, p0, Lcom/miui/penengine/f/b;->e:F

    move v5, v1

    :goto_5
    if-ge v5, v3, :cond_6

    move v6, v1

    :goto_6
    if-ge v6, v3, :cond_5

    iget-object v7, p0, Lcom/miui/penengine/f/b;->n:[[F

    aget-object v7, v7, v5

    aput v2, v7, v6

    iget-object v7, p0, Lcom/miui/penengine/f/b;->m:[[F

    aget-object v7, v7, v5

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-object v5, p0, Lcom/miui/penengine/f/b;->n:[[F

    aget-object v6, v5, v1

    aput v0, v6, v1

    aget-object v5, v5, p1

    aput v0, v5, p1

    iget-object v5, p0, Lcom/miui/penengine/f/b;->m:[[F

    aget-object v6, v5, v1

    aput v0, v6, v1

    aget-object v5, v5, p1

    aput v0, v5, p1

    move v5, v1

    :goto_7
    if-ge v5, v4, :cond_8

    move v6, v1

    :goto_8
    if-ge v6, v4, :cond_7

    iget-object v7, p0, Lcom/miui/penengine/f/b;->w:[[F

    aget-object v7, v7, v5

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    iget-object v5, p0, Lcom/miui/penengine/f/b;->w:[[F

    aget-object v6, v5, v1

    aput v0, v6, v1

    aput v0, v6, p1

    aget-object v6, v5, p1

    aput v0, v6, p1

    aget-object v6, v5, v3

    aput v0, v6, v3

    aput v0, v6, p2

    aget-object v5, v5, p2

    aput v0, v5, p2

    move v5, v1

    :goto_9
    if-ge v5, v4, :cond_a

    move v6, v1

    :goto_a
    if-ge v6, v4, :cond_9

    iget-object v7, p0, Lcom/miui/penengine/f/b;->p:[[F

    aget-object v7, v7, v5

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    iget-object p0, p0, Lcom/miui/penengine/f/b;->p:[[F

    aget-object v2, p0, v1

    aput v0, v2, v1

    aget-object v1, p0, p1

    aput v0, v1, p1

    aget-object p1, p0, v3

    aput v0, p1, v3

    aget-object p0, p0, p2

    aput v0, p0, p2

    return-void
.end method

.method public final a([[FF[[FII)V
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p4, :cond_1

    move v1, p0

    :goto_1
    if-ge v1, p5, :cond_0

    .line 4
    aget-object v2, p3, v0

    aget-object v3, p1, v0

    aget v3, v3, v1

    mul-float/2addr v3, p2

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a([[F[[F[[FII)V
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p4, :cond_1

    move v1, p0

    :goto_1
    if-ge v1, p5, :cond_0

    .line 3
    aget-object v2, p3, v0

    aget-object v3, p1, v0

    aget v3, v3, v1

    aget-object v4, p2, v0

    aget v4, v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 16

    move-object/from16 v6, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 1
    iget-object v5, v6, Lcom/miui/penengine/f/b;->q:[[F

    aget-object v5, v5, v1

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lcom/miui/penengine/f/b;->q:[[F

    aget-object v4, v1, v0

    iget-object v5, v6, Lcom/miui/penengine/f/b;->w:[[F

    aget-object v7, v5, v0

    aget v8, v7, v0

    iget-object v9, v6, Lcom/miui/penengine/f/b;->o:[[F

    aget-object v10, v9, v0

    aget v11, v10, v0

    mul-float/2addr v8, v11

    const/4 v11, 0x1

    aget v12, v7, v11

    aget-object v13, v9, v11

    aget v14, v13, v0

    mul-float/2addr v14, v12

    add-float/2addr v14, v8

    aput v14, v4, v0

    aget v7, v7, v0

    aget v8, v10, v11

    mul-float/2addr v7, v8

    aget v8, v13, v11

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    aput v12, v4, v11

    aget-object v4, v1, v11

    aget-object v7, v5, v11

    aget v7, v7, v11

    aget v8, v13, v0

    mul-float/2addr v8, v7

    aput v8, v4, v0

    aget v8, v13, v11

    mul-float/2addr v7, v8

    aput v7, v4, v11

    const/4 v4, 0x2

    aget-object v7, v1, v4

    aget-object v8, v5, v4

    aget v10, v8, v4

    aget-object v12, v9, v4

    aget v13, v12, v4

    mul-float/2addr v10, v13

    const/4 v13, 0x3

    aget v14, v8, v13

    aget-object v9, v9, v13

    aget v15, v9, v4

    mul-float/2addr v15, v14

    add-float/2addr v15, v10

    aput v15, v7, v4

    aget v8, v8, v4

    aget v10, v12, v13

    mul-float/2addr v8, v10

    aget v10, v9, v13

    mul-float/2addr v14, v10

    add-float/2addr v14, v8

    aput v14, v7, v13

    aget-object v1, v1, v13

    aget-object v5, v5, v13

    aget v5, v5, v13

    aget v7, v9, v4

    mul-float/2addr v7, v5

    aput v7, v1, v4

    aget v7, v9, v13

    mul-float/2addr v5, v7

    aput v5, v1, v13

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    move v5, v0

    :goto_3
    if-ge v5, v3, :cond_2

    iget-object v7, v6, Lcom/miui/penengine/f/b;->r:[[F

    aget-object v7, v7, v1

    aput v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v6, Lcom/miui/penengine/f/b;->r:[[F

    aget-object v5, v1, v0

    iget-object v7, v6, Lcom/miui/penengine/f/b;->q:[[F

    aget-object v8, v7, v0

    aget v9, v8, v0

    iget-object v10, v6, Lcom/miui/penengine/f/b;->w:[[F

    aget-object v12, v10, v0

    aget v14, v12, v0

    mul-float/2addr v9, v14

    aget v8, v8, v11

    aget v14, v12, v11

    mul-float/2addr v14, v8

    add-float/2addr v14, v9

    aput v14, v5, v0

    aget-object v9, v10, v11

    aget v14, v9, v11

    mul-float/2addr v8, v14

    aput v8, v5, v11

    aget-object v5, v1, v11

    aget-object v8, v7, v11

    aget v14, v8, v0

    aget v15, v12, v0

    mul-float/2addr v14, v15

    aget v8, v8, v11

    aget v12, v12, v11

    mul-float/2addr v12, v8

    add-float/2addr v12, v14

    aput v12, v5, v0

    aget v9, v9, v11

    mul-float/2addr v8, v9

    aput v8, v5, v11

    aget-object v5, v1, v4

    aget-object v8, v7, v4

    aget v9, v8, v4

    aget-object v12, v10, v4

    aget v14, v12, v4

    mul-float/2addr v9, v14

    aget v8, v8, v13

    aget v14, v12, v13

    mul-float/2addr v14, v8

    add-float/2addr v14, v9

    aput v14, v5, v4

    aget-object v9, v10, v13

    aget v10, v9, v13

    mul-float/2addr v8, v10

    aput v8, v5, v13

    aget-object v1, v1, v13

    aget-object v5, v7, v13

    aget v7, v5, v4

    aget v8, v12, v4

    mul-float/2addr v7, v8

    aget v5, v5, v13

    aget v8, v12, v13

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    aput v8, v1, v4

    aget v7, v9, v13

    mul-float/2addr v5, v7

    aput v5, v1, v13

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_5

    move v5, v0

    :goto_5
    if-ge v5, v3, :cond_4

    iget-object v7, v6, Lcom/miui/penengine/f/b;->l:[[F

    aget-object v7, v7, v1

    aput v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, v6, Lcom/miui/penengine/f/b;->l:[[F

    aget-object v5, v1, v0

    iget v7, v6, Lcom/miui/penengine/f/b;->f:F

    aput v7, v5, v0

    aget-object v5, v1, v11

    const/high16 v8, 0x41200000    # 10.0f

    div-float v8, v7, v8

    aput v8, v5, v11

    aget-object v5, v1, v4

    aput v7, v5, v4

    aget-object v1, v1, v13

    aput v8, v1, v13

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_7

    move v4, v0

    :goto_7
    if-ge v4, v3, :cond_6

    iget-object v5, v6, Lcom/miui/penengine/f/b;->u:[[F

    aget-object v5, v5, v1

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    iget-object v1, v6, Lcom/miui/penengine/f/b;->r:[[F

    iget v2, v6, Lcom/miui/penengine/f/b;->d:F

    iget-object v3, v6, Lcom/miui/penengine/f/b;->u:[[F

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/penengine/f/b;->a([[FF[[FII)V

    iget-object v1, v6, Lcom/miui/penengine/f/b;->l:[[F

    iget-object v3, v6, Lcom/miui/penengine/f/b;->q:[[F

    const/high16 v2, 0x3e000000    # 0.125f

    invoke-virtual/range {v0 .. v5}, Lcom/miui/penengine/f/b;->a([[FF[[FII)V

    iget-object v1, v6, Lcom/miui/penengine/f/b;->u:[[F

    iget-object v2, v6, Lcom/miui/penengine/f/b;->q:[[F

    iget-object v3, v6, Lcom/miui/penengine/f/b;->s:[[F

    invoke-virtual/range {v0 .. v5}, Lcom/miui/penengine/f/b;->a([[F[[F[[FII)V

    return-void
.end method

.method public b(FF)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->h()V

    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->b()V

    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->a()V

    invoke-virtual {p0, p1, p2}, Lcom/miui/penengine/f/b;->c(FF)V

    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->f()V

    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->e()V

    invoke-virtual {p0}, Lcom/miui/penengine/f/b;->g()V

    return-void
.end method

.method public final b([[F[[F[[FII)V
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p4, :cond_2

    move v1, p0

    :goto_1
    if-ge v1, p5, :cond_1

    const/4 v2, 0x0

    move v3, p0

    :goto_2
    if-ge v3, p5, :cond_0

    .line 2
    aget-object v4, p1, v0

    aget v4, v4, v3

    aget-object v5, p2, v3

    aget v5, v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    aget-object v3, p3, v0

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/f/b;->h:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final c(FF)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/miui/penengine/f/b;->k:[F

    iget-object v1, p0, Lcom/miui/penengine/f/b;->j:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    sub-float/2addr p1, v3

    aput p1, v0, v2

    const/4 v3, 0x2

    aget v4, v1, v3

    sub-float/2addr p2, v4

    const/4 v5, 0x1

    aput p2, v0, v5

    iget-object p2, p0, Lcom/miui/penengine/f/b;->h:[F

    aget v6, v1, v2

    iget-object p0, p0, Lcom/miui/penengine/f/b;->t:[[F

    aget-object v7, p0, v2

    aget v7, v7, v2

    mul-float/2addr v7, p1

    add-float/2addr v7, v6

    aput v7, p2, v2

    aget p1, v1, v5

    aget-object v6, p0, v5

    aget v6, v6, v2

    aget v2, v0, v2

    mul-float/2addr v6, v2

    add-float/2addr v6, p1

    aput v6, p2, v5

    aget-object p1, p0, v3

    aget p1, p1, v5

    aget v0, v0, v5

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    aput p1, p2, v3

    const/4 p1, 0x3

    aget v1, v1, p1

    aget-object p0, p0, p1

    aget p0, p0, v5

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    aput p0, p2, p1

    return-void
.end method

.method public final c([[F[[F[[FII)V
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p4, :cond_1

    move v1, p0

    :goto_1
    if-ge v1, p5, :cond_0

    .line 2
    aget-object v2, p3, v0

    aget-object v3, p1, v0

    aget v3, v3, v1

    aget-object v4, p2, v0

    aget v4, v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()F
    .locals 1

    iget-object p0, p0, Lcom/miui/penengine/f/b;->h:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/miui/penengine/f/b;->h:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/miui/penengine/f/b;->i:[F

    aget v4, v3, v1

    sub-float/2addr v2, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v0, v3

    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/penengine/f/b;->k:[F

    aget v1, v0, v1

    mul-float/2addr v1, v1

    aget v0, v0, v4

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x469c4000    # 20000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/penengine/f/b;->f:F

    return-void
.end method

.method public final f()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/miui/penengine/f/b;->u:[[F

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/miui/penengine/f/b;->u:[[F

    aget-object v1, v5, v0

    iget-object v2, p0, Lcom/miui/penengine/f/b;->t:[[F

    aget-object v3, v2, v0

    aget v3, v3, v0

    aput v3, v1, v0

    const/4 v1, 0x1

    aget-object v3, v5, v1

    aget-object v4, v2, v1

    aget v4, v4, v0

    aput v4, v3, v0

    const/4 v0, 0x2

    aget-object v3, v5, v0

    aget-object v4, v2, v0

    aget v4, v4, v1

    aput v4, v3, v0

    const/4 v3, 0x3

    aget-object v4, v5, v3

    aget-object v2, v2, v3

    aget v1, v2, v1

    aput v1, v4, v0

    iget-object v3, p0, Lcom/miui/penengine/f/b;->p:[[F

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p0

    move-object v4, v5

    invoke-virtual/range {v2 .. v7}, Lcom/miui/penengine/f/b;->c([[F[[F[[FII)V

    iget-object v9, p0, Lcom/miui/penengine/f/b;->u:[[F

    iget-object v10, p0, Lcom/miui/penengine/f/b;->s:[[F

    iget-object v11, p0, Lcom/miui/penengine/f/b;->o:[[F

    const/4 v12, 0x4

    const/4 v13, 0x4

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/miui/penengine/f/b;->b([[F[[F[[FII)V

    return-void
.end method

.method public final g()V
    .locals 11

    iget-object v0, p0, Lcom/miui/penengine/f/b;->r:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget v2, v2, v1

    const/4 v3, 0x2

    aget-object v0, v0, v3

    aget v0, v0, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/miui/penengine/f/b;->k:[F

    aget v4, v0, v1

    mul-float/2addr v4, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    mul-float/2addr v0, v0

    iget-object v6, p0, Lcom/miui/penengine/f/b;->g:[F

    aget v7, v6, v1

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    const v4, 0x3ff9999a    # 1.95f

    div-float/2addr v7, v4

    aput v7, v6, v1

    aget v7, v6, v5

    mul-float/2addr v7, v8

    add-float/2addr v7, v0

    div-float/2addr v7, v4

    aput v7, v6, v5

    iget-object v0, p0, Lcom/miui/penengine/f/b;->v:[[F

    aget-object v4, v0, v1

    iget-object v7, p0, Lcom/miui/penengine/f/b;->l:[[F

    aget-object v8, v7, v1

    aget v8, v8, v1

    iget-object v9, p0, Lcom/miui/penengine/f/b;->m:[[F

    aget-object v10, v9, v1

    aget v10, v10, v1

    add-float/2addr v8, v10

    aput v8, v4, v1

    aget-object v0, v0, v5

    aget-object v4, v7, v3

    aget v3, v4, v3

    aget-object v4, v9, v5

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v0, v5

    aget v0, v6, v1

    sub-float/2addr v0, v8

    aget v1, v6, v5

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    div-float/2addr v0, v2

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/penengine/f/b;->d:F

    iget v1, p0, Lcom/miui/penengine/f/b;->e:F

    const v2, 0x3ca3d70a    # 0.02f

    add-float/2addr v2, v1

    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    iput v2, p0, Lcom/miui/penengine/f/b;->d:F

    goto :goto_0

    :cond_0
    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iput v1, p0, Lcom/miui/penengine/f/b;->d:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/penengine/f/b;->d:F

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x3fcccccd    # 1.6f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput v1, p0, Lcom/miui/penengine/f/b;->d:F

    goto :goto_2

    :cond_3
    :goto_1
    iput v3, p0, Lcom/miui/penengine/f/b;->d:F

    :cond_4
    :goto_2
    iget v0, p0, Lcom/miui/penengine/f/b;->d:F

    iput v0, p0, Lcom/miui/penengine/f/b;->e:F

    return-void
.end method

.method public h()V
    .locals 7

    iget-object v0, p0, Lcom/miui/penengine/f/b;->j:[F

    iget-object v1, p0, Lcom/miui/penengine/f/b;->w:[[F

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget v4, v3, v2

    iget-object p0, p0, Lcom/miui/penengine/f/b;->h:[F

    aget v5, p0, v2

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v3, v3, v5

    aget v6, p0, v5

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    aput v3, v0, v2

    aget-object v2, v1, v5

    aget v2, v2, v5

    mul-float/2addr v2, v6

    aput v2, v0, v5

    const/4 v2, 0x2

    aget-object v3, v1, v2

    aget v4, v3, v2

    aget v5, p0, v2

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v3, v3, v5

    aget p0, p0, v5

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    aput v3, v0, v2

    aget-object v1, v1, v5

    aget v1, v1, v5

    mul-float/2addr v1, p0

    aput v1, v0, v5

    return-void
.end method
