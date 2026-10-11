.class public Lcom/sunia/HTREnginev2/jnn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/jnn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/jnn;->q(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/RectF;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jnn$a;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jnn$a;->b:Landroid/graphics/RectF;

    iput p3, p0, Lcom/sunia/HTREnginev2/jnn$a;->c:F

    iput p4, p0, Lcom/sunia/HTREnginev2/jnn$a;->d:F

    iput p5, p0, Lcom/sunia/HTREnginev2/jnn$a;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 2
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jnn$a;->a:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jnn$a;->b:Landroid/graphics/RectF;

    invoke-interface {p2, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p2

    iget v0, p0, Lcom/sunia/HTREnginev2/jnn$a;->c:F

    iget v1, p0, Lcom/sunia/HTREnginev2/jnn$a;->d:F

    iget p0, p0, Lcom/sunia/HTREnginev2/jnn$a;->e:F

    invoke-static {p1, p2, v0, v1, p0}, Lcom/sunia/HTREnginev2/jnn;->n(FFFFF)F

    move-result p0

    new-instance p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {p1, p0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object p1
.end method
