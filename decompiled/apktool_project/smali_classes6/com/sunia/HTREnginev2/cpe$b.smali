.class public final Lcom/sunia/HTREnginev2/cpe$b;
.super Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/cpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final w:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/elevation/ElevationOverlayProvider;)V

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/cpe$b;->w:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/sunia/HTREnginev2/cpe$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/cpe$b;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/cpe$b;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/cpe$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    .line 6
    iget-object p1, p1, Lcom/sunia/HTREnginev2/cpe$b;->w:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cpe$b;->w:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/cpe$b;Lcom/sunia/HTREnginev2/cpe$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/cpe$b;-><init>(Lcom/sunia/HTREnginev2/cpe$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cpe$b;->w:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cpe;->y(Lcom/sunia/HTREnginev2/cpe$b;)Lcom/sunia/HTREnginev2/cpe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-object p0
.end method
