.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public controlY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->i(F)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->j(F)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->k(F)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->l(F)V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
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

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->f()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->g()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->h()F

    move-result p0

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return p0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return p0
.end method

.method public final g()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return p0
.end method

.method public final h()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return p0
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return-void
.end method

.method public final l(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return-void
.end method
