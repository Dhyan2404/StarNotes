.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010C\u001a\u00020B\u00a2\u0006\u0004\u0008D\u0010EB\u001d\u0008\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008D\u0010FB%\u0008\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010G\u001a\u00020\u0019\u00a2\u0006\u0004\u0008D\u0010HJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0015J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001bR\u0016\u0010\"\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001bR\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010\t\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010(R\u0014\u0010+\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010(R\u0014\u0010-\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010(R*\u00102\u001a\u00020.2\u0006\u0010/\u001a\u00020.8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u001b\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R*\u0010A\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u00038\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010(\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;",
        "Landroid/view/View;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "getSizeWidth",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "maxSize",
        "minSize",
        "setMaxMinSize",
        "tint",
        "Landroid/util/AttributeSet;",
        "attrs",
        "a",
        "b",
        "Landroid/graphics/drawable/Drawable;",
        "e",
        "Landroid/graphics/drawable/Drawable;",
        "selectDrawable",
        "f",
        "normalDrawable",
        "g",
        "outlineDrawable",
        "",
        "h",
        "I",
        "selectTintResId",
        "i",
        "normalTintResId",
        "j",
        "outlineTintResId",
        "k",
        "sizeTintResId",
        "Landroid/graphics/Paint;",
        "l",
        "Landroid/graphics/Paint;",
        "paint",
        "m",
        "F",
        "n",
        "o",
        "sizeMaxWidth",
        "p",
        "sizeMinWidth",
        "",
        "value",
        "q",
        "Z",
        "isSelect",
        "()Z",
        "setSelect",
        "(Z)V",
        "r",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "index",
        "s",
        "getSize",
        "()F",
        "setSize",
        "(F)V",
        "size",
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

.field public f:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:F

.field public n:F

.field public final o:F

.field public final p:F

.field public q:Z

.field public r:I

.field public s:F


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 5
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_02:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->i:I

    .line 6
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->j:I

    .line 7
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_08:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->k:I

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 9
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->m:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->n:F

    .line 11
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/galaxy/note/R$dimen;->size_max_width:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->o:F

    .line 12
    sget p3, Lcom/onyx/galaxy/note/R$dimen;->size_min_width:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->p:F

    .line 13
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getSizeWidth()F
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->s:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->n:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->m:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->p:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->o:F

    sub-float/2addr p0, v1

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->SizeView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_selectSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->e:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_normalSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->f:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_outlineSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->g:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_selectTint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->h:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_normalTint:I

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_02:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->i:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_outlineTint:I

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->j:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_sizeTint:I

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_08:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->k:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->b()V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_isSelected:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->setSelect(Z)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_defaultSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->setSize(F)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->SizeView_index:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->r:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->h:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->i:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->j:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-void
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->r:I

    return p0
.end method

.method public final getSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->s:F

    return p0
.end method

.method public final isSelect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->q:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
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

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->f:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/DrawableKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->k:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->getSizeWidth()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->r:I

    return-void
.end method

.method public final setMaxMinSize(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->m:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->n:F

    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->s:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
