.class public final Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*B\u001b\u0008\u0016\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0008\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008)\u0010-J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016J0\u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0016\u0010\u001b\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0016\u0010$\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001fR\u0016\u0010&\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;",
        "Landroid/view/View;",
        "",
        "value",
        "",
        "updateIndicatorTotal",
        "index",
        "updateSelectedIndex",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "",
        "x",
        "y",
        "width",
        "Landroid/graphics/Paint;",
        "paint",
        "b",
        "total",
        "a",
        "e",
        "I",
        "currentIndex",
        "f",
        "totalIndicator",
        "g",
        "Landroid/graphics/Paint;",
        "selectedPaint",
        "h",
        "normalPaint",
        "i",
        "F",
        "indicatorSelectedWidth",
        "j",
        "indicatorHeight",
        "k",
        "indicatorNormalWidth",
        "l",
        "indicatorInterval",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    .line 3
    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_3:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->l:F

    .line 4
    iget v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    iput v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->k:F

    .line 5
    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->i:F

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    .line 7
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    .line 13
    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    iget p0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    .line 20
    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_3:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->l:F

    .line 21
    iget p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    iput p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->k:F

    .line 22
    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->i:F

    .line 23
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    .line 24
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    .line 30
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_03:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    .line 31
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    iget p0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->i:F

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget v1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->k:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->l:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public final b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 6

    add-float v3, p2, p4

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->f:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->a(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->j:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->f:I

    const/4 v3, 0x0

    move v9, v3

    :goto_0
    if-ge v9, v2, :cond_2

    iget v3, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->e:I

    if-ne v9, v3, :cond_1

    iget v7, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->i:F

    iget-object v8, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->g:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->i:F

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->k:F

    iget-object v8, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->h:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->k:F

    :goto_1
    add-float/2addr v1, v3

    iget v3, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->l:F

    add-float/2addr v1, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateIndicatorTotal(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/member/view/ChargeIndicatorView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
