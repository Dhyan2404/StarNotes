.class public Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathCubicOperation"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->g(F)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->i(F)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->h(F)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->j(F)V

    invoke-virtual {p0, p5}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->k(F)V

    invoke-virtual {p0, p6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->l(F)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->a:F

    return p0
.end method

.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
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

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->a:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->c:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->d:F

    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->e:F

    iget v7, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->f:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->c:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->e:F

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->f:F

    return p0
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->a:F

    return-void
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->c:F

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->b:F

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->d:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->e:F

    return-void
.end method

.method public final l(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->f:F

    return-void
.end method
