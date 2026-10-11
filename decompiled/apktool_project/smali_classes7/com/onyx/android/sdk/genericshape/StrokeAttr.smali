.class public final Lcom/onyx/android/sdk/genericshape/StrokeAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0019\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000f\"\u0004\u0008\u001b\u0010\u0011R\u001a\u0010\u001c\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/StrokeAttr;",
        "",
        "()V",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "colorTransformMode",
        "getColorTransformMode",
        "setColorTransformMode",
        "enableColor",
        "",
        "getEnableColor",
        "()Z",
        "setEnableColor",
        "(Z)V",
        "opacity",
        "",
        "getOpacity",
        "()Ljava/lang/Float;",
        "setOpacity",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "roundCorner",
        "getRoundCorner",
        "setRoundCorner",
        "width",
        "getWidth",
        "()F",
        "setWidth",
        "(F)V",
        "copy",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private color:I

.field private colorTransformMode:I

.field private enableColor:Z

.field private opacity:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private roundCorner:Z

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->width:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->color:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->enableColor:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->roundCorner:Z

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/genericshape/StrokeAttr;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->width:F

    iput v1, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->width:F

    iget v1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->color:I

    iput v1, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->color:I

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->enableColor:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->enableColor:Z

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->opacity:Ljava/lang/Float;

    iget v1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->colorTransformMode:I

    iput v1, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->colorTransformMode:I

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->roundCorner:Z

    iput-boolean p0, v0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->roundCorner:Z

    return-object v0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->color:I

    return p0
.end method

.method public final getColorTransformMode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->colorTransformMode:I

    return p0
.end method

.method public final getEnableColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->enableColor:Z

    return p0
.end method

.method public final getOpacity()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->opacity:Ljava/lang/Float;

    return-object p0
.end method

.method public final getRoundCorner()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->roundCorner:Z

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->width:F

    return p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->color:I

    return-void
.end method

.method public final setColorTransformMode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->colorTransformMode:I

    return-void
.end method

.method public final setEnableColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->enableColor:Z

    return-void
.end method

.method public final setOpacity(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->opacity:Ljava/lang/Float;

    return-void
.end method

.method public final setRoundCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->roundCorner:Z

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->width:F

    return-void
.end method
