.class public Lcom/sunia/HTREnginev2/tmm$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/tmm;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/tmm;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tmm;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tmm$a;->a:Lcom/sunia/HTREnginev2/tmm;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget-object p1, p0, Lcom/sunia/HTREnginev2/tmm$a;->a:Lcom/sunia/HTREnginev2/tmm;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeableDelegate;->c:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/material/shape/ShapeableDelegate;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tmm$a;->a:Lcom/sunia/HTREnginev2/tmm;

    iget-object p1, p0, Lcom/google/android/material/shape/ShapeableDelegate;->d:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, p1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/tmm;->e(Lcom/sunia/HTREnginev2/tmm;)F

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
