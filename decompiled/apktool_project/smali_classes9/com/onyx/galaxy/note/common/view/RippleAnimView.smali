.class public final Lcom/onyx/galaxy/note/common/view/RippleAnimView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;,
        Lcom/onyx/galaxy/note/common/view/RippleAnimView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 .2\u00020\u0001:\u0002/.B\u0013\u0008\u0016\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008)\u0010*B\u001d\u0008\u0016\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008)\u0010+B%\u0008\u0016\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010,\u001a\u00020\u0011\u00a2\u0006\u0004\u0008)\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0015J\u0008\u0010\u0006\u001a\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002R,\u0010\u0010\u001a\u001a\u0012\u0008\u0012\u00060\u000cR\u00020\u00000\u000bj\u000c\u0012\u0008\u0012\u00060\u000cR\u00020\u0000`\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/RippleAnimView;",
        "Landroid/view/View;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "onDetachedFromWindow",
        "c",
        "Landroid/util/AttributeSet;",
        "attrs",
        "d",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;",
        "Lkotlin/collections/ArrayList;",
        "e",
        "Ljava/util/ArrayList;",
        "ripples",
        "",
        "f",
        "I",
        "rippleColor",
        "g",
        "speed",
        "h",
        "rippleDensity",
        "",
        "i",
        "Z",
        "isFill",
        "j",
        "isAlpha",
        "Landroid/graphics/Paint;",
        "k",
        "Landroid/graphics/Paint;",
        "paint",
        "Ljava/lang/Runnable;",
        "l",
        "Ljava/lang/Runnable;",
        "drawRunnable",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "Circle",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final ANIM_FRAME_DURATION:J = 0x50L

.field public static final Companion:Lcom/onyx/galaxy/note/common/view/RippleAnimView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_ALPHA:I = 0xdc


# instance fields
.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->Companion:Lcom/onyx/galaxy/note/common/view/RippleAnimView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/common/view/RippleAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/common/view/RippleAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->f:I

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->g:I

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->h:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->j:Z

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    .line 10
    new-instance p1, Lcom/sunia/HTREnginev2/wrl;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/wrl;-><init>(Lcom/onyx/galaxy/note/common/view/RippleAnimView;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->l:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->d(Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/common/view/RippleAnimView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->b(Lcom/onyx/galaxy/note/common/view/RippleAnimView;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/common/view/RippleAnimView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_1_5:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;

    const/4 v2, 0x0

    const/16 v3, 0xdc

    invoke-direct {v1, p0, v2, v3}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;-><init>(Lcom/onyx/galaxy/note/common/view/RippleAnimView;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->RippleAnimView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RippleAnimView_viewColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->f:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RippleAnimView_speed:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->g:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RippleAnimView_density:I

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->h:I

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->RippleAnimView_isAlpha:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->j:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
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

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/collections/IndexedValue;

    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->component1()I

    invoke-virtual {v2}, Lkotlin/collections/IndexedValue;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v5

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->k:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    div-float/2addr v5, v6

    cmpl-float v3, v3, v5

    const/16 v5, 0xdc

    if-lez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->j:Z

    if-eqz v3, :cond_2

    int-to-float v3, v5

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/onyx/galaxy/note/R$dimen;->twice:I

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v4

    div-float/2addr v7, v4

    div-float/2addr v6, v7

    mul-float/2addr v6, v3

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->setAlpha(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->g:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->setWidth(I)V

    :goto_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->h:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;-><init>(Lcom/onyx/galaxy/note/common/view/RippleAnimView;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/view/RippleAnimView;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
