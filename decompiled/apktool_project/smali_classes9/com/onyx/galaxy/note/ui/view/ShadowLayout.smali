.class public final Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CB\u001b\u0008\u0016\u0012\u0006\u0010A\u001a\u00020@\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008B\u0010DB#\u0008\u0016\u0012\u0006\u0010A\u001a\u00020@\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010E\u001a\u00020\u0003\u00a2\u0006\u0004\u0008B\u0010FJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rJ&\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u000bJ\u0008\u0010\u0016\u001a\u00020\u0006H\u0016J\u0012\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u0006H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010!\u001a\u00020\u0006H\u0002R\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\"R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u0016\u0010\u000e\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\'R\u0016\u0010-\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010\'R\u0016\u0010\u0010\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010\'R\u0016\u0010\u0011\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010\'R\u0016\u0010\u0013\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010\'R\u0016\u0010\u0012\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010\'R\u0016\u00103\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010#R\u0016\u00105\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010#R\u0016\u00107\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010\'R\u0016\u00109\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010#R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010?\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010<\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/ShadowLayout;",
        "Landroid/widget/FrameLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "",
        "onMeasure",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "",
        "showShadow",
        "",
        "shadowRadius",
        "setShadowRadius",
        "topLeftRadius",
        "topRightRadius",
        "bottomRightRadius",
        "bottomLeftRadius",
        "setCornerRadius",
        "showBorder",
        "tint",
        "Landroid/util/AttributeSet;",
        "attrs",
        "e",
        "g",
        "",
        "b",
        "Landroid/graphics/RectF;",
        "a",
        "d",
        "c",
        "f",
        "Z",
        "I",
        "shadowColor",
        "",
        "h",
        "F",
        "shadowDx",
        "i",
        "shadowDy",
        "j",
        "k",
        "cornerRadius",
        "l",
        "m",
        "n",
        "o",
        "p",
        "borderColor",
        "q",
        "borderColorRes",
        "r",
        "borderWidth",
        "s",
        "fillColorRes",
        "Landroid/graphics/Paint;",
        "t",
        "Landroid/graphics/Paint;",
        "paint",
        "u",
        "strokePaint",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public e:Z

.field public f:Z

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public final t:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x1000000

    .line 4
    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g:I

    .line 5
    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->p:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->q:I

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->r:F

    .line 8
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->s:I

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->t:Landroid/graphics/Paint;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->u:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->e(Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final b()[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->l:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->m:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->o:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->n:F

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->a()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->r:F

    neg-float v2, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    neg-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->b()[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->b()[F

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_showShadow:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->e:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_showBorder:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->f:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_shadowColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->h:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_shadowDy:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->i:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_shadowRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->j:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->k:F

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->l:F

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->m:F

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->o:F

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->n:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_borderColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->p:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_borderColorRes:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->q:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_borderWidth:I

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->r:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->r:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_fillColor:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->s:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_topLeftRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_topLeftRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->l:F

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_topRightRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_topRightRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->m:F

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_bottomRightRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_bottomRightRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->o:F

    :cond_2
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_bottomLeftRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ShadowLayout_bottomLeftRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->n:F

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->p:I

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->u:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final g()V
    .locals 9

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->j:F

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->h:F

    sub-float v2, v0, v1

    iget v3, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->i:F

    sub-float v4, v0, v3

    add-float/2addr v1, v0

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->t:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->t:Landroid/graphics/Paint;

    iget v5, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->s:I

    invoke-static {v5}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->e:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->t:Landroid/graphics/Paint;

    iget v5, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->j:F

    iget v6, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->h:F

    iget v7, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->i:F

    iget v8, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    float-to-int v2, v2

    float-to-int v3, v4

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->f()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->u:Landroid/graphics/Paint;

    iget p0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->r:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->d(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->c(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCornerRadius(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "topLeftRadius"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topRightRadius"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomRightRadius"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomLeftRadius"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->l:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->m:F

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->o:F

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->n:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShadowRadius(Ljava/lang/Number;)V
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shadowRadius"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->j:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final showBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->f:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final showShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->e:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->f()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->g()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
