.class public final Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008:\u0010;B\u001b\u0008\u0016\u0012\u0006\u00109\u001a\u000208\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008:\u0010<B#\u0008\u0016\u0012\u0006\u00109\u001a\u000208\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008:\u0010?J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0014\u0010\u000c\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nJS\u0010\u0015\u001a\u00020\u00042K\u0010\u0014\u001aG\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00040\rJ@\u0010\u0018\u001a\u00020\u000428\u0010\u0014\u001a4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0016J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0002J\u0012\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u0008\u0010\u001f\u001a\u00020\u0004H\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0002R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R]\u0010\u0014\u001aI\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+RH\u0010.\u001a4\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00100R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0016\u00104\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00100R\u0016\u00107\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;",
        "Landroid/widget/FrameLayout;",
        "",
        "title",
        "",
        "setTitle",
        "",
        "value",
        "setProgressValue",
        "getProgressValue",
        "Lorg/apache/commons/lang3/Range;",
        "range",
        "setRange",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "progress",
        "progressValue",
        "",
        "isFromUser",
        "callback",
        "setProgressChangeCallback",
        "Lkotlin/Function2;",
        "suffix",
        "setFormatProgressValueStrCallback",
        "prefix",
        "setProgressValuePrefix",
        "setProgressValueSuffix",
        "Landroid/util/AttributeSet;",
        "attrs",
        "b",
        "d",
        "c",
        "a",
        "Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;",
        "e",
        "Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;)V",
        "binding",
        "f",
        "Lkotlin/jvm/functions/Function3;",
        "g",
        "Lkotlin/jvm/functions/Function2;",
        "formatProgressValueStrFunc",
        "h",
        "Ljava/lang/String;",
        "i",
        "j",
        "k",
        "formatter",
        "l",
        "Z",
        "isDisplayFloatValue",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
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
.field public e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Z


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
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string p3, ""

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->j:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->k:Ljava/lang/String;

    const/4 p3, 0x1

    .line 8
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->l:Z

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 10
    invoke-static {p1, p0, p3}, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    move-result-object p1

    const-string p3, "inflate(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    .line 11
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->b(Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->d()V

    return-void
.end method

.method public static final synthetic access$generateProgressValueStr(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;F)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)Lkotlin/jvm/functions/Function3;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->f:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method


# virtual methods
.method public final a(F)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->g:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_progressValuePrefix:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->h:Ljava/lang/String;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_progressValueSuffix:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_seekBarTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->j:Ljava/lang/String;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_formatter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->progress_decimal_format:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->k:Ljava/lang/String;

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_isStick:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setStick(Z)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_segmentCount:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setSegmentCount(I)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_isDisplayFloatValue:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->l:Z

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_progressTint:I

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_backgroundTint:I

    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_background_stick_progress_bar_color:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setBackgroundColorRes(I)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressColorRes(I)V

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_minValue:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    sget v2, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_minValue:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMinValue(F)V

    :cond_5
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_maxValue:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    sget v2, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_maxValue:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setMaxValue(F)V

    :cond_6
    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_defaultValue:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/onyx/galaxy/note/R$styleable;->StickSeekBarContainer_defaultValue:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressValue:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->a(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->c()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    return-object p0
.end method

.method public final getProgressValue()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->getProgressValue()F

    move-result p0

    return p0
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    return-void
.end method

.method public final setFormatProgressValueStrCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->g:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->c()V

    return-void
.end method

.method public final setProgressChangeCallback(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setProgressValue(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setProgressValue(F)V

    return-void
.end method

.method public final setProgressValuePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->c()V

    :cond_0
    return-void
.end method

.method public final setProgressValueSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->c()V

    :cond_0
    return-void
.end method

.method public final setRange(Lorg/apache/commons/lang3/Range;)V
    .locals 1
    .param p1    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarView;->setValueRange(Lorg/apache/commons/lang3/Range;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->j:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;->e:Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewStickProgressContainerBinding;->tvProgressTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
