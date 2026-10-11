.class public Lcom/sunia/HTREnginev2/cpe$d;
.super Lcom/sunia/HTREnginev2/cpe;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/cpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/cpe$b;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/cpe$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/cpe;-><init>(Lcom/sunia/HTREnginev2/cpe$b;Lcom/sunia/HTREnginev2/cpe$a;)V

    return-void
.end method


# virtual methods
.method public drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method
