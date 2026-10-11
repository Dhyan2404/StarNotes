.class public Lcom/miui/penengine/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = "predictParam"

.field public static l:Z = true

.field public static m:Lcom/miui/penengine/f/e;


# instance fields
.field public a:Lcom/miui/penengine/e/b;

.field public b:F

.field public c:F

.field public d:D

.field public e:F

.field public f:I

.field public g:Z

.field public h:F

.field public i:F

.field public j:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/penengine/e/b;->c()Lcom/miui/penengine/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/penengine/f/e;->a:Lcom/miui/penengine/e/b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/penengine/f/e;->b:F

    iput p1, p0, Lcom/miui/penengine/f/e;->c:F

    const-wide v0, 0x408f380000000000L    # 999.0

    iput-wide v0, p0, Lcom/miui/penengine/f/e;->d:D

    iput p1, p0, Lcom/miui/penengine/f/e;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/f/e;->f:I

    iput-boolean v0, p0, Lcom/miui/penengine/f/e;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/penengine/f/e;->h:F

    iput p1, p0, Lcom/miui/penengine/f/e;->i:F

    invoke-virtual {p0}, Lcom/miui/penengine/f/e;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/penengine/f/e;
    .locals 1

    .line 4
    sget-object v0, Lcom/miui/penengine/f/e;->m:Lcom/miui/penengine/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/penengine/f/e;

    invoke-direct {v0, p0}, Lcom/miui/penengine/f/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/penengine/f/e;->m:Lcom/miui/penengine/f/e;

    :cond_0
    sget-object p0, Lcom/miui/penengine/f/e;->m:Lcom/miui/penengine/f/e;

    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 3
    iget p0, p0, Lcom/miui/penengine/f/e;->i:F

    return p0
.end method

.method public final a(Ljava/util/List;II)F
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;II)F"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    if-gt v2, v1, :cond_0

    return v3

    :cond_0
    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/penengine/d/c;

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->f()F

    move-result v11

    add-float/2addr v7, v11

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->f()F

    move-result v11

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->f()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v6, v12

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->f()F

    move-result v11

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->g()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v8, v12

    invoke-virtual {v10}, Lcom/miui/penengine/d/c;->g()F

    move-result v10

    add-float/2addr v9, v10

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    sub-int v5, v2, v1

    int-to-float v5, v5

    mul-float v10, v5, v6

    mul-float v11, v7, v7

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v11, v11, v13

    if-lez v11, :cond_2

    mul-float v11, v5, v8

    mul-float v12, v7, v9

    sub-float/2addr v11, v12

    div-float/2addr v11, v10

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v3, v12

    cmpl-double v3, v3, v13

    if-lez v3, :cond_3

    mul-float/2addr v6, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v8

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->f()F

    move-result v10

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    sub-float/2addr v8, v6

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v10

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->f()F

    move-result v12

    mul-float/2addr v12, v11

    sub-float/2addr v10, v12

    sub-float/2addr v10, v6

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    div-float v8, v9, v5

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v10

    sub-float v10, v8, v10

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->g()F

    move-result v7

    sub-float/2addr v8, v7

    mul-float/2addr v8, v10

    add-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    cmpg-float v0, v3, v4

    if-gtz v0, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v13

    if-lez v0, :cond_5

    div-float/2addr v3, v4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    goto :goto_4

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    return v3
.end method

.method public final a(Lcom/miui/penengine/d/c;Ljava/lang/StringBuilder;)V
    .locals 1

    const-string p0, "("

    .line 6
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 5
    sget-boolean p0, Lcom/miui/penengine/f/e;->l:Z

    if-eqz p0, :cond_0

    const-string p0, "predictParam"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "After Resample Step1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/penengine/d/c;

    invoke-virtual {p0, v2, v0}, Lcom/miui/penengine/f/e;->a(Lcom/miui/penengine/d/c;Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()D
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/miui/penengine/f/e;->d:D

    return-wide v0
.end method

.method public final b(Ljava/util/List;II)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;II)F"
        }
    .end annotation

    if-lt p2, p3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/penengine/d/c;

    invoke-virtual {v3}, Lcom/miui/penengine/d/c;->f()F

    move-result v3

    sub-int v4, p3, p2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/penengine/d/c;

    invoke-virtual {v3}, Lcom/miui/penengine/d/c;->g()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p0

    move v3, v0

    move v4, v3

    :goto_1
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/penengine/d/c;

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->f()F

    move-result v6

    sub-float/2addr v6, v1

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->g()F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->f()F

    move-result v6

    sub-float/2addr v6, v1

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->f()F

    move-result v7

    sub-float/2addr v7, v1

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->g()F

    move-result v6

    sub-float/2addr v6, v2

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->g()F

    move-result v5

    sub-float/2addr v5, v2

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_2
    float-to-double p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p3, v7, v0

    if-gez p3, :cond_3

    return p0

    :cond_3
    float-to-double v0, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public b(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/e;->d(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/e;->e(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/miui/penengine/f/e;->i:F

    iput v0, p0, Lcom/miui/penengine/f/e;->b:F

    const-wide v1, 0x408f380000000000L    # 999.0

    iput-wide v1, p0, Lcom/miui/penengine/f/e;->d:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/penengine/f/e;->g:Z

    iput v1, p0, Lcom/miui/penengine/f/e;->f:I

    iput v0, p0, Lcom/miui/penengine/f/e;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/penengine/f/e;->h:F

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/penengine/f/e;->b(Ljava/util/List;II)F

    move-result v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/miui/penengine/f/e;->b(Ljava/util/List;II)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/penengine/f/e;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/penengine/f/e;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/penengine/f/e;->f:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/miui/penengine/f/e;->f:I

    :goto_1
    iput p1, p0, Lcom/miui/penengine/f/e;->e:F

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/e;->f(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/miui/penengine/f/e;->c(Ljava/util/List;)V

    iget p1, p0, Lcom/miui/penengine/f/e;->f:I

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/miui/penengine/f/e;->b:F

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr v1, p1

    const p1, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, p1

    const/high16 p1, 0x40400000    # 3.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x40b00000    # 5.5f

    div-float/2addr v1, p1

    const p1, 0x3f428f5c    # 0.76f

    add-float/2addr v1, p1

    :cond_0
    iput v1, p0, Lcom/miui/penengine/f/e;->h:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/penengine/f/e;->b:F

    const v0, 0x3fcccccd    # 1.6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    const v0, 0x404ccccd    # 3.2f

    div-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/penengine/f/e;->h:F

    :goto_0
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/miui/penengine/f/e;->g:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/penengine/f/e;->e:F

    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    mul-float/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/miui/penengine/f/e;->i:F

    goto :goto_2

    :cond_0
    iget p1, p0, Lcom/miui/penengine/f/e;->f:I

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v0, v2

    iget p1, p0, Lcom/miui/penengine/f/e;->b:F

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v2, 0x3db851ec    # 0.09f

    mul-float/2addr p1, v2

    float-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3d23d70a    # 0.04f

    goto :goto_0

    :goto_2
    iget p1, p0, Lcom/miui/penengine/f/e;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    iget p1, p0, Lcom/miui/penengine/f/e;->e:F

    const v0, 0x3e570a3d    # 0.21f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/penengine/f/e;->i:F

    :cond_2
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/penengine/f/e;->b:F

    iput v1, p0, Lcom/miui/penengine/f/e;->c:F

    iget-object v1, p0, Lcom/miui/penengine/f/e;->a:Lcom/miui/penengine/e/b;

    invoke-virtual {v1}, Lcom/miui/penengine/e/b;->b()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/penengine/d/c;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/penengine/d/c;

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->f()F

    move-result v6

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->f()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->g()F

    move-result v7

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->g()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v4

    sub-long/2addr v8, v4

    long-to-float v4, v8

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float/2addr v6, v4

    float-to-double v5, v6

    div-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    if-lt v2, v5, :cond_1

    iget v2, p0, Lcom/miui/penengine/f/e;->b:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    iput v2, p0, Lcom/miui/penengine/f/e;->b:F

    iget v2, p0, Lcom/miui/penengine/f/e;->c:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/miui/penengine/f/e;->c:F

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/miui/penengine/f/e;->c:F

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/penengine/f/e;->c:F

    return-void
.end method
