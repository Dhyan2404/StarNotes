.class public abstract Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHsvBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HsvBaseDrawable.kt\ncom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1#2:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008&\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H&J\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u001d\u001a\u00020\u00168\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\u0016\u0010\r\u001a\u00020\u000c8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\"R\u001a\u0010\'\u001a\u00020\u00058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u001a\u0010,\u001a\u00020\u000f8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "",
        "showCorner",
        "drawBorder",
        "",
        "getCornerRadius",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "draw",
        "drawContent",
        "Landroid/graphics/RectF;",
        "bounds",
        "setBounds",
        "",
        "getOpacity",
        "alpha",
        "setAlpha",
        "Landroid/graphics/ColorFilter;",
        "colorFilter",
        "setColorFilter",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "setPaint",
        "(Landroid/graphics/Paint;)V",
        "paint",
        "b",
        "getBorderPaint",
        "setBorderPaint",
        "borderPaint",
        "Landroid/graphics/RectF;",
        "c",
        "F",
        "getBorderWidth",
        "()F",
        "borderWidth",
        "d",
        "I",
        "getBorderColor",
        "()I",
        "borderColor",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHsvBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HsvBaseDrawable.kt\ncom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1#2:90\n*E\n"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected bounds:Landroid/graphics/RectF;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:F

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_0_5:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->c:F

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->d:I

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->showCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getCornerRadius()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->showCorner()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->drawBorder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->c:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getCornerRadius()F

    move-result v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public drawBorder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract drawContent(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final getBorderColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->d:I

    return p0
.end method

.method public final getBorderPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->c:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setBorderPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public final setBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public showCorner()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
