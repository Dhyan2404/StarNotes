.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field public static final a:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->p(F)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->t(F)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->q(F)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->o(F)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->j()F

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->n()F

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->k()F

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->i()F

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->r(F)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->s(F)V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->l()F

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->m()F

    move-result p0

    return p0
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathOperation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->n()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->k()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->i()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->l()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->m()F

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final i()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return p0
.end method

.method public final j()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return p0
.end method

.method public final k()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return p0
.end method

.method public final l()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return p0
.end method

.method public final m()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return p0
.end method

.method public final n()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return p0
.end method

.method public final o(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return-void
.end method

.method public final p(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return-void
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return-void
.end method

.method public final r(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return-void
.end method

.method public final s(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return-void
.end method

.method public final t(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return-void
.end method
