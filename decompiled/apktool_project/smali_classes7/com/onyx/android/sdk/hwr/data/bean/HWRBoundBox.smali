.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002R\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0007\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0007\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u000bR\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0007\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000b\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "",
        "Landroid/graphics/RectF;",
        "toRectF",
        "emptyRectF",
        "",
        "a",
        "F",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "x",
        "b",
        "getY",
        "setY",
        "y",
        "c",
        "getWidth",
        "setWidth",
        "width",
        "d",
        "getHeight",
        "setHeight",
        "height",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emptyRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->d:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->c:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->b:F

    return p0
.end method

.method public final setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->d:F

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->c:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->a:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->b:F

    return-void
.end method

.method public final toRectF()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->a:F

    iget v2, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->b:F

    iget v3, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->c:F

    add-float/2addr v3, v1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->d:F

    add-float/2addr p0, v2

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
