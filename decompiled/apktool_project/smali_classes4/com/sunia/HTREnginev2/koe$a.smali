.class public Lcom/sunia/HTREnginev2/koe$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/koe;-><init>(Landroid/content/Context;Lcom/sunia/HTREnginev2/ggk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/koe;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/koe;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/koe$a;->a:Lcom/sunia/HTREnginev2/koe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/koe$a;->a:Lcom/sunia/HTREnginev2/koe;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/koe;->a(Lcom/sunia/HTREnginev2/koe;)Lcom/sunia/HTREnginev2/ggk;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sunia/HTREnginev2/ggk;->onScale(FFF)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
