.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010T\u001a\u00020S\u00a2\u0006\u0004\u0008U\u0010VB\u001d\u0008\u0016\u0012\u0006\u0010T\u001a\u00020S\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008U\u0010WB%\u0008\u0016\u0012\u0006\u0010T\u001a\u00020S\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010X\u001a\u00020\u0003\u00a2\u0006\u0004\u0008U\u0010YJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0015J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0003J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0016\u0010$\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001fR\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010*\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u0018\u0010,\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010\'R\u0016\u0010.\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010\u001fR\u0016\u00100\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010\u001fR\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00103R\u0018\u00108\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00103R\u0018\u0010:\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010\'R\u0014\u0010<\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u00103R\u0016\u0010>\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010\u0018R\"\u0010D\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u001b\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR*\u0010G\u001a\u00020\u00162\u0006\u0010E\u001a\u00020\u00168\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010\u0018\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR*\u0010N\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\u00038\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010\u001b\u001a\u0004\u0008L\u0010A\"\u0004\u0008M\u0010CR\"\u0010R\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010\u001b\u001a\u0004\u0008P\u0010A\"\u0004\u0008Q\u0010C\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
        "Landroid/view/View;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "",
        "onMeasure",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "tint",
        "Landroid/util/AttributeSet;",
        "attrs",
        "d",
        "c",
        "a",
        "b",
        "e",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
        "arrowDrawable",
        "",
        "f",
        "Z",
        "isExpandEnable",
        "g",
        "I",
        "selectTintResId",
        "",
        "h",
        "F",
        "fillSize",
        "i",
        "fillRadius",
        "j",
        "selectRadius",
        "Landroid/graphics/Path;",
        "k",
        "Landroid/graphics/Path;",
        "fillPath",
        "l",
        "outlinePath",
        "m",
        "selectPath",
        "n",
        "selectStrokeWidth",
        "o",
        "outlineStrokeWidth",
        "Landroid/graphics/Paint;",
        "p",
        "Landroid/graphics/Paint;",
        "paint",
        "q",
        "bitmapPaint",
        "r",
        "alphaFillPaint",
        "s",
        "alphaFillPath",
        "t",
        "bgFill",
        "u",
        "showAlphaBackground",
        "v",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "index",
        "value",
        "w",
        "isSelect",
        "()Z",
        "setSelect",
        "(Z)V",
        "x",
        "getColor",
        "setColor",
        "color",
        "y",
        "getFillDrawableRes",
        "setFillDrawableRes",
        "fillDrawableRes",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
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
.field public e:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:F

.field public o:F

.field public final p:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->f:Z

    .line 6
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->g:I

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->q:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, -0x1

    .line 10
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->t:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    const/4 v1, 0x5

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v4

    if-lez v4, :cond_2

    if-le v5, v6, :cond_3

    :cond_2
    if-gez v4, :cond_4

    if-gt v6, v5, :cond_4

    :cond_3
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v8, v9

    sget-object v9, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v10, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v10

    div-float/2addr v8, v10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v10, v11

    sget v11, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v9

    div-float/2addr v10, v9

    int-to-float v9, v5

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    int-to-float v9, v3

    mul-float/2addr v9, v0

    add-float/2addr v10, v9

    iput v10, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v0

    iput v10, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->r:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eq v5, v6, :cond_4

    add-int/2addr v5, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->k:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->removeAlpha(I)I

    move-result v0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    invoke-direct {v3, v1, v1, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v4, v5

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v6, v7

    sget v7, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v5

    div-float/2addr v6, v5

    new-instance v5, Landroid/graphics/RectF;

    iget v7, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float v8, v7, v8

    invoke-direct {v5, v1, v1, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->offset(FF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->offset(FF)V

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v2, v3

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v4, v5

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v5

    div-float/2addr v4, v5

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v0, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->offset(FF)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->k:Landroid/graphics/Path;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v0, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->k:Landroid/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->offset(FF)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->l:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->l:Landroid/graphics/Path;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v5, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->l:Landroid/graphics/Path;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->offset(FF)V

    :cond_1
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    div-float/2addr v1, v3

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v2

    div-float/2addr v3, v2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->m:Landroid/graphics/Path;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->j:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->m:Landroid/graphics/Path;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Path;->offset(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$color;->black_10:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->r:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/R$styleable;->ColorView:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_fillSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_fillRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->i:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_selectRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->j:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_selectStrokeWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_outlineStrokeWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->o:F

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_arrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->e:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_isExpandEnable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->f:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_selectTint:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->g:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->e()V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_defaultColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setColor(I)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_isSelected:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setSelect(Z)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->ColorView_index:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->v:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    return p0
.end method

.method public final getFillDrawableRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->y:I

    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->v:I

    return p0
.end method

.method public final isSelect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->w:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->s:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->a(Landroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->y:I

    if-lez v0, :cond_3

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v3, v4

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->h:F

    sub-float/2addr v4, v5

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v1

    div-float/2addr v4, v1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->k:Landroid/graphics/Path;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->l:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->o:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->isColorLight(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_13:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->overlay_12:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->k:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->b(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->w:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->m:Landroid/graphics/Path;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->g:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->n:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->c()V

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->x:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->u:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFillDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->y:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->v:I

    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->w:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
