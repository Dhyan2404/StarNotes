.class public final Lcom/onyx/galaxy/note/editor/view/CountingTextView;
.super Lcom/onyx/android/sdk/theme/widgets/TintTextView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0008\u0010T\u001a\u0004\u0018\u00010S\u00a2\u0006\u0004\u0008U\u0010VJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J0\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0014J\u001c\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0003J\u0006\u0010\u001b\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000cJ\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\nJ\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u0006H\u0002J\u0008\u0010#\u001a\u00020\u0003H\u0002J\u0008\u0010$\u001a\u00020\nH\u0002J\u0010\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u0010)\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020%H\u0002J\u0008\u0010*\u001a\u00020!H\u0002R\u0016\u0010-\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010/\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010,R\u0016\u00102\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00104\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00101R\u0016\u00107\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00109\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010?\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00106R\u0014\u0010B\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010D\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u00106R\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001b\u0010P\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\u00a8\u0006W"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/CountingTextView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintTextView;",
        "Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;",
        "",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "",
        "timestamp",
        "onTick",
        "tint",
        "",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "",
        "text",
        "Landroid/widget/TextView$BufferType;",
        "type",
        "setText",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "counterEntry",
        "startCount",
        "stop",
        "refresh",
        "total",
        "setTotalCountTime",
        "countUp",
        "setCountUp",
        "mills",
        "",
        "c",
        "d",
        "a",
        "Landroid/graphics/RectF;",
        "availableSpace",
        "b",
        "suggestedSizeInPx",
        "f",
        "e",
        "h",
        "Ljava/lang/String;",
        "shortTimeFormat",
        "i",
        "longTimeFormat",
        "j",
        "Z",
        "isCountUp",
        "k",
        "isEnableAutoSize",
        "l",
        "I",
        "autoSizeMin",
        "m",
        "autoSizeMax",
        "",
        "n",
        "F",
        "autoSizeStep",
        "o",
        "currentTextLength",
        "p",
        "Landroid/graphics/RectF;",
        "tempRect",
        "q",
        "totalCountTime",
        "",
        "r",
        "[I",
        "autoSizeTextSizesInPx",
        "s",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "Landroid/text/TextPaint;",
        "t",
        "Lkotlin/Lazy;",
        "getMeasureTextPaint",
        "()Landroid/text/TextPaint;",
        "measureTextPaint",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "<init>",
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
.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public final p:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:I

.field public r:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->duration_format_short_with_space:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->h:Ljava/lang/String;

    sget v1, Lcom/onyx/galaxy/note/R$string;->duration_format:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->l:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->m:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->n:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->o:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->p:Landroid/graphics/RectF;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/CountingTextView$measureTextPaint$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/CountingTextView$measureTextPaint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->t:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_short_time_format:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->h:Ljava/lang/String;

    :cond_2
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->h:Ljava/lang/String;

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_long_time_format:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->i:Ljava/lang/String;

    :cond_3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->i:Ljava/lang/String;

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_is_count_up:I

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_count_down_total:I

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->q:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->q:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_is_enable_auto_size:I

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->k:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->k:Z

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_auto_size_min:I

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->l:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_auto_size_max:I

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->m:I

    sget p2, Lcom/onyx/galaxy/note/R$styleable;->CountingTextView_auto_size_step:I

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->n:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->n:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->d()V

    return-void
.end method

.method private final getMeasureTextPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v0, :cond_4

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->p:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->p:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v0, v2

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->b(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    cmpg-float v2, v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method public final b(Landroid/graphics/RectF;)I
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, p1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->f(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    aget p0, p0, v2

    return p0
.end method

.method public final c(J)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->h:Ljava/lang/String;

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondExact(JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->m:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->l:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->n:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->r:[I

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->l:I

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->n:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->c(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->q:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->c(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final f(ILandroid/graphics/RectF;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->getMeasureTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->getMeasureTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->getMeasureTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->getMeasureTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const-string v1, "obtain(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-le p1, v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->stop()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->k:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->o:I

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener$DefaultImpls;->onTick(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;J)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->refresh()V

    return-void
.end method

.method public final refresh()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->s:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getEntryState()Lcom/onyx/galaxy/note/editor/data/CounterEntryState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isCountUp()Z

    move-result v2

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->isStop()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->totalTime()J

    move-result-wide v0

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->Companion:Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$Companion;->getMAX_COUNT_UP_DURATION_MS()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->q:I

    int-to-long v2, v0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/CounterEntryState;->segmentTotalTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->e()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCountUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->j:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView$BufferType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->k:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->o:I

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->o:I

    :cond_1
    return-void
.end method

.method public final setTotalCountTime(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->q:I

    return-void
.end method

.method public final startCount(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->s:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->registerListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CountingTextView;->s:Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterEntry;->getTimerHandler()Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler;->unregisterListener(Lcom/onyx/galaxy/note/editor/data/CounterTimerHandler$CounterListener;)V

    :cond_0
    return-void
.end method

.method public tint()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->tint()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
