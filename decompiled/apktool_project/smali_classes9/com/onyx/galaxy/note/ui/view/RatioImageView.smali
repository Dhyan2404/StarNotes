.class public final Lcom/onyx/galaxy/note/ui/view/RatioImageView;
.super Lcom/onyx/android/sdk/theme/widgets/TintImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001%B\u0011\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!B\u001b\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008 \u0010\"B#\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010#\u001a\u00020\u0002\u00a2\u0006\u0004\u0008 \u0010$J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J(\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0014J\"\u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012J\u0012\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0018R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/RatioImageView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintImageView;",
        "",
        "widthSpec",
        "heightSpec",
        "",
        "onMeasure",
        "w",
        "h",
        "ow",
        "oh",
        "onSizeChanged",
        "",
        "widthHeightRatio",
        "",
        "dynamicWidth",
        "dynamicHeight",
        "setWidthHeightRatio",
        "Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;",
        "listener",
        "Landroid/util/AttributeSet;",
        "attrs",
        "a",
        "g",
        "Z",
        "i",
        "F",
        "j",
        "Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;",
        "sizeChangeListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "SizeChangeListener",
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
.field public g:Z

.field public h:Z

.field public i:F

.field public j:Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/ui/view/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/ui/view/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->i:F

    .line 5
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic setWidthHeightRatio$default(Lcom/onyx/galaxy/note/ui/view/RatioImageView;FZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->setWidthHeightRatio(FZZ)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->RatioImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RatioImageView_dynamicWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->g:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RatioImageView_dynamicHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->h:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RatioImageView_widthHeightRatio:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->i:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->g:Z

    if-eqz v0, :cond_0

    int-to-float p1, p2

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->i:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->h:Z

    if-eqz v0, :cond_1

    int-to-float p2, p1

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->i:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->j:Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public final onSizeChanged(Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->j:Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;

    return-void
.end method

.method public final setWidthHeightRatio(FZZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->g:Z

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->h:Z

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method
