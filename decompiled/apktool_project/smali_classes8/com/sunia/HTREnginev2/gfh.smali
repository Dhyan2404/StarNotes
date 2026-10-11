.class public final Lcom/sunia/HTREnginev2/gfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/data/Migration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/base/data/Migration<",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/data/Migration$DefaultImpls;->afterMigration(Lcom/onyx/android/sdk/base/data/Migration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic afterMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gfh;->a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method

.method public b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/data/Migration$DefaultImpls;->beforeMigration(Lcom/onyx/android/sdk/base/data/Migration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic beforeMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gfh;->b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method

.method public c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->getUnionFontRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x2

    int-to-float v6, v5

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    add-float/2addr p0, v0

    invoke-direct {v2, v3, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p1, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->updateShapeRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {p1, v5}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic migrate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/gfh;->c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method
