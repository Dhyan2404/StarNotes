.class public Lcom/blankj/utilcode/util/ShadowUtils$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final i:I = 0x44000000

.field public static final j:I


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->w(F)I

    move-result v0

    sput v0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b:F

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c:F

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d:F

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e:F

    const/high16 v0, 0x44000000    # 512.0f

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->f:I

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->h:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v8

    new-instance v9, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e()F

    move-result v4

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b()F

    move-result v5

    iget v6, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->g:I

    iget-boolean v7, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->h:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFIZ)V

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v8, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v9, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->f()F

    move-result v4

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c()F

    move-result v5

    iget v6, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->f:I

    iget-boolean v7, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->h:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFIZ)V

    invoke-virtual {v0, v8, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final b()F
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e()F

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d:F

    :cond_0
    iget p0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d:F

    return p0
.end method

.method public final c()F
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->f()F

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e:F

    :cond_0
    iget p0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e:F

    return p0
.end method

.method public final d()F
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    :cond_0
    iget p0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    return p0
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget v0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->j:I

    int-to-float v0, v0

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b:F

    :cond_0
    iget p0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b:F

    return p0
.end method

.method public final f()F
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e()F

    move-result v0

    iput v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c:F

    :cond_0
    iget p0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c:F

    return p0
.end method

.method public setCircle()Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->h:Z

    iget v0, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Set circle needn\'t set radius."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadowColor(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowColor(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    move-result-object p0

    return-object p0
.end method

.method public setShadowColor(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->f:I

    .line 3
    iput p2, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->g:I

    return-object p0
.end method

.method public setShadowMaxSize(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowMaxSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    move-result-object p0

    return-object p0
.end method

.method public setShadowMaxSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->d:F

    int-to-float p1, p2

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->e:F

    return-object p0
.end method

.method public setShadowRadius(F)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->a:F

    iget-boolean p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->h:Z

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set circle needn\'t set radius."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadowSize(I)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->setShadowSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;

    move-result-object p0

    return-object p0
.end method

.method public setShadowSize(II)Lcom/blankj/utilcode/util/ShadowUtils$Config;
    .locals 0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->b:F

    int-to-float p1, p2

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/ShadowUtils$Config;->c:F

    return-object p0
.end method
