.class public final Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001!B\u001d\u0008\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eB\'\u0008\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001d\u0010 J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\tJ\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;",
        "Landroid/widget/FrameLayout;",
        "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;",
        "listener",
        "",
        "setListener",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "shapeAttributes",
        "setShapeAttributes",
        "",
        "max",
        "min",
        "setStrokeSeekBarMaxMinValue",
        "a",
        "d",
        "c",
        "b",
        "Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;",
        "e",
        "Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;",
        "binding",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "ShapeAttributesChangeListener",
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
.field public e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

.field public f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;->Companion:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;->getEMPTY()Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    .line 3
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    .line 4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->a()V

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;->Companion:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;->getEMPTY()Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    .line 8
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->a()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getShapeAttributes$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    return-object p0
.end method

.method public static synthetic setStrokeSeekBarMaxMinValue$default(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->setStrokeSeekBarMaxMinValue(II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->d()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setShape(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;)V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeDesc:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;->getStrokeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initStrokeLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initStrokeLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->c()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->b()V

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->f:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    return-void
.end method

.method public final setShapeAttributes(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->g:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->d()V

    return-void
.end method

.method public final setStrokeSeekBarMaxMinValue(II)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutStrokeAndColorBinding;->strokeSeekbar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setMin(I)V

    return-void
.end method
