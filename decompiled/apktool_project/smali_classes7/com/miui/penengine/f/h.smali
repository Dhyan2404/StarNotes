.class public Lcom/miui/penengine/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static o:Lcom/miui/penengine/f/h;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:J

.field public j:J

.field public k:Lcom/miui/penengine/f/b;

.field public l:D

.field public m:D

.field public n:D


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->l:D

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->m:D

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->n:D

    new-instance v0, Lcom/miui/penengine/f/b;

    invoke-direct {v0}, Lcom/miui/penengine/f/b;-><init>()V

    iput-object v0, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    return-void
.end method

.method public static a()Lcom/miui/penengine/f/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/penengine/f/h;->o:Lcom/miui/penengine/f/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/penengine/f/h;

    invoke-direct {v0}, Lcom/miui/penengine/f/h;-><init>()V

    sput-object v0, Lcom/miui/penengine/f/h;->o:Lcom/miui/penengine/f/h;

    :cond_0
    sget-object v0, Lcom/miui/penengine/f/h;->o:Lcom/miui/penengine/f/h;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/miui/penengine/d/c;)V
    .locals 13

    .line 2
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v0

    iput v0, p0, Lcom/miui/penengine/f/h;->f:F

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v0

    iput v0, p0, Lcom/miui/penengine/f/h;->e:F

    iget-wide v0, p0, Lcom/miui/penengine/f/h;->i:J

    iget-wide v2, p0, Lcom/miui/penengine/f/h;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/miui/penengine/f/h;->a:F

    iget v7, p0, Lcom/miui/penengine/f/h;->c:F

    sub-float/2addr v6, v7

    long-to-float v7, v0

    div-float/2addr v6, v7

    :goto_0
    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/miui/penengine/f/h;->b:F

    iget v7, p0, Lcom/miui/penengine/f/h;->d:F

    sub-float/2addr v4, v7

    long-to-float v0, v0

    div-float/2addr v4, v0

    :goto_1
    mul-float v0, v6, v6

    mul-float v1, v4, v4

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v7

    iget v8, p0, Lcom/miui/penengine/f/h;->a:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v7

    iget v8, p0, Lcom/miui/penengine/f/h;->b:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/miui/penengine/f/h;->i:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, v2

    if-nez v2, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/miui/penengine/f/h;->g:F

    sub-float v3, v6, v3

    long-to-float v9, v7

    div-float/2addr v3, v9

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/miui/penengine/f/h;->h:F

    sub-float v2, v4, v2

    long-to-float v5, v7

    div-float v5, v2, v5

    :goto_3
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v9, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v9

    const/high16 v10, 0x40000000    # 2.0f

    if-gez v2, :cond_4

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v2

    long-to-float v11, v7

    mul-float v12, v6, v11

    add-float/2addr v12, v2

    mul-float/2addr v3, v11

    mul-float/2addr v3, v11

    div-float/2addr v3, v10

    add-float v2, v3, v12

    :goto_4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_5

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v3

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v3

    long-to-float v7, v7

    mul-float v8, v4, v7

    add-float/2addr v8, v3

    mul-float/2addr v5, v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v10

    add-float v3, v5, v8

    :goto_5
    const-wide v7, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v0, v7

    if-lez v0, :cond_7

    iput v2, p0, Lcom/miui/penengine/f/h;->e:F

    iput v3, p0, Lcom/miui/penengine/f/h;->f:F

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->l:D

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->m:D

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->n:D

    :cond_7
    :goto_6
    iput v6, p0, Lcom/miui/penengine/f/h;->g:F

    iput v4, p0, Lcom/miui/penengine/f/h;->h:F

    iget v0, p0, Lcom/miui/penengine/f/h;->b:F

    iput v0, p0, Lcom/miui/penengine/f/h;->d:F

    iget v0, p0, Lcom/miui/penengine/f/h;->a:F

    iput v0, p0, Lcom/miui/penengine/f/h;->c:F

    iget v0, p0, Lcom/miui/penengine/f/h;->e:F

    iput v0, p0, Lcom/miui/penengine/f/h;->a:F

    iget v0, p0, Lcom/miui/penengine/f/h;->f:F

    iput v0, p0, Lcom/miui/penengine/f/h;->b:F

    iget-wide v0, p0, Lcom/miui/penengine/f/h;->i:J

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->j:J

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->i:J

    return-void
.end method

.method public a([F[FI)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    const/4 v1, 0x0

    aget v2, p1, v1

    aget v1, p2, v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/penengine/f/b;->a(FF)V

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/miui/penengine/f/b;->b(FF)V

    iget-object v1, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    invoke-virtual {v1}, Lcom/miui/penengine/f/b;->c()F

    move-result v1

    aput v1, p1, v0

    iget-object v1, p0, Lcom/miui/penengine/f/h;->k:Lcom/miui/penengine/f/b;

    invoke-virtual {v1}, Lcom/miui/penengine/f/b;->d()F

    move-result v1

    aput v1, p2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget v2, p1, v1

    aput v2, p1, v0

    aget v1, p2, v1

    aput v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/penengine/f/h;->n:D

    return-wide v0
.end method

.method public b(Lcom/miui/penengine/d/c;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v0

    iput v0, p0, Lcom/miui/penengine/f/h;->e:F

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v0

    iput v0, p0, Lcom/miui/penengine/f/h;->f:F

    iget v1, p0, Lcom/miui/penengine/f/h;->e:F

    iput v1, p0, Lcom/miui/penengine/f/h;->a:F

    iput v0, p0, Lcom/miui/penengine/f/h;->b:F

    iput v1, p0, Lcom/miui/penengine/f/h;->c:F

    iput v0, p0, Lcom/miui/penengine/f/h;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/f/h;->g:F

    iput v0, p0, Lcom/miui/penengine/f/h;->h:F

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->i:J

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->j:J

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->m:D

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->l:D

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->n:D

    return-void
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/penengine/f/h;->l:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/penengine/f/h;->m:D

    return-wide v0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/f/h;->e:F

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/miui/penengine/f/h;->f:F

    return p0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/f/h;->e:F

    iput v0, p0, Lcom/miui/penengine/f/h;->f:F

    iput v0, p0, Lcom/miui/penengine/f/h;->g:F

    iput v0, p0, Lcom/miui/penengine/f/h;->h:F

    iput v0, p0, Lcom/miui/penengine/f/h;->a:F

    iput v0, p0, Lcom/miui/penengine/f/h;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->i:J

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->m:D

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->n:D

    iput-wide v0, p0, Lcom/miui/penengine/f/h;->l:D

    return-void
.end method
