.class public final Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenCaptureEditorPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,349:1\n1#2:350\n324#3:351\n324#3:352\n324#3:353\n324#3:354\n324#3:355\n324#3:356\n324#3:357\n324#3:358\n324#3:359\n324#3:360\n324#3:361\n*S KotlinDebug\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n*L\n310#1:351\n313#1:352\n316#1:353\n319#1:354\n322#1:355\n325#1:356\n328#1:357\n331#1:358\n334#1:359\n337#1:360\n340#1:361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u0001NB\u0007\u00a2\u0006\u0004\u0008L\u0010MJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0007J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0014\u0010\u0014\u001a\u00020\u00042\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002JD\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\rH\u0002J\u0008\u0010#\u001a\u00020\rH\u0002J\u0008\u0010$\u001a\u00020\rH\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010\n\u001a\u00020%H\u0002J\u0018\u0010*\u001a\u00020)2\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0015H\u0002J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+H\u0002R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00104\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00106\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00103R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00107R\u0016\u00108\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u00103R\u0016\u00109\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00103R\u0016\u0010:\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u00103R\u0016\u0010;\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00103R\u0016\u0010<\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u00103R\u0016\u0010=\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00103R\u0016\u0010>\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00103R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010@R\u0016\u0010D\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0014\u0010E\u001a\u00020)8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010CR\u0016\u0010G\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010CR\u001c\u0010J\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0014\u0010K\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00103\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;",
        "",
        "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;",
        "listener",
        "",
        "setListener",
        "Landroid/app/Application;",
        "application",
        "show",
        "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;",
        "event",
        "onOrientationChanged",
        "s",
        "Landroid/graphics/RectF;",
        "shotViewRect",
        "n",
        "Landroid/graphics/Rect;",
        "f",
        "Lcom/hjq/window/EasyWindow;",
        "window",
        "l",
        "",
        "dx",
        "dy",
        "j",
        "leftOffset",
        "rightOffset",
        "topOffset",
        "bottomOffset",
        "widthOffset",
        "heightOffset",
        "q",
        "rect",
        "",
        "d",
        "h",
        "g",
        "Landroid/view/MotionEvent;",
        "k",
        "x",
        "y",
        "",
        "e",
        "Landroid/view/View;",
        "touchView",
        "i",
        "Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;",
        "a",
        "Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;",
        "binding",
        "b",
        "F",
        "lastX",
        "c",
        "lastY",
        "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;",
        "limitSize",
        "screenHeight",
        "screenWidth",
        "shotViewWidth",
        "shotViewHeight",
        "shotViewX",
        "shotViewY",
        "Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;",
        "Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;",
        "maskDrawable",
        "m",
        "I",
        "mode",
        "MODE_CANCEL",
        "o",
        "MODE_OK",
        "p",
        "Lcom/hjq/window/EasyWindow;",
        "currentEasyWindow",
        "expandTouchPadding",
        "<init>",
        "()V",
        "ScreenCaptureListener",
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
        "SMAP\nScreenCaptureEditorPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,349:1\n1#2:350\n324#3:351\n324#3:352\n324#3:353\n324#3:354\n324#3:355\n324#3:356\n324#3:357\n324#3:358\n324#3:359\n324#3:360\n324#3:361\n*S KotlinDebug\n*F\n+ 1 ScreenCaptureEditorPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup\n*L\n310#1:351\n313#1:352\n316#1:353\n319#1:354\n322#1:355\n325#1:356\n328#1:357\n331#1:358\n334#1:359\n337#1:360\n340#1:361\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

.field public b:F

.field public c:F

.field public d:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public final l:Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I

.field public final n:I

.field public o:I

.field public p:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_28:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->layout_screen_capture_editor_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->layout_screen_capture_editor_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    new-instance v1, Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;

    invoke-direct {v1}, Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->l:Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;

    const/16 v1, 0x3e9

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->n:I

    const/16 v1, 0x3ea

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->o:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->q:F

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->m(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "easyWindow"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->cancel()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->d:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;Lcom/hjq/window/EasyWindow;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "easyWindow"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->cancel()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->d:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;->onEditorRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->q(FFFFFF)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final e(FF)I
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    const/4 p2, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->btnCancel:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "btnCancel"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->n:I

    return p0

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->btnOk:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "btnOk"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->o:I

    return p0

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->leftTopHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "leftTopHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p0, 0x33

    return p0

    :cond_5
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_6
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->leftBottomHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "leftBottomHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p0, 0x53

    return p0

    :cond_7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_8
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->rightTopHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "rightTopHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p0, 0x35

    return p0

    :cond_9
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_a
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->rightBottomHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "rightBottomHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p0, 0x55

    return p0

    :cond_b
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_c
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->leftHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "leftHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p0, 0x3

    return p0

    :cond_d
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_e
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->rightHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "rightHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x5

    return p0

    :cond_f
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_10
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->topHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "topHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_11

    const/16 p0, 0x30

    return p0

    :cond_11
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_12
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->bottomHandle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "bottomHandle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p0, 0x50

    return p0

    :cond_13
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    move-object p2, p1

    :goto_0
    iget-object p1, p2, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotView:Landroid/view/View;

    const-string p2, "shotView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x11

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotView:Landroid/view/View;

    const-string v3, "shotView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_1
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v4, v3, v0, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public final i(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->screenVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->q:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/Rect;Ljava/lang/Number;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final j(FF)V
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->m:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    const/16 v3, 0x33

    if-eq v2, v3, :cond_4

    const/16 v3, 0x35

    if-eq v2, v3, :cond_3

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    add-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    move-object v3, p0

    move v5, v8

    move v7, v9

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    add-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float v8, v4

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v3, p0

    move v7, v9

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v6

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    sub-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    neg-float v9, v6

    const/16 v10, 0x9

    const/4 v11, 0x0

    move-object v3, p0

    move v5, v8

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e:F

    sub-float/2addr p2, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    neg-float v8, v4

    neg-float v9, v6

    const/16 v10, 0xa

    const/4 v11, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-float v6, v3

    const/16 v7, 0x1b

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v5

    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move v4, v5

    move v6, v7

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget p2, v1, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2d

    const/4 v8, 0x0

    move-object v0, p0

    move v2, v5

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget p2, v1, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x2e

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->b:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->m:I

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j(FF)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->m:I

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->n:I

    const/4 v3, 0x0

    const-string v4, "binding"

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->btnCancel:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->o:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->btnOk:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->e(FF)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->m:I

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->c:F

    return v1
.end method

.method public final l(Lcom/hjq/window/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/b6m;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/b6m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setOnTouchListener(Lcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public final n(Landroid/graphics/RectF;)V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_5:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->l:Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g:F

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->l:Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;->setHighlightRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final onOrientationChanged(Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->p:Lcom/hjq/window/EasyWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->show(Landroid/app/Application;)V

    return-void
.end method

.method public final q(FFFFFF)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {v0, v1, p2, v2, p4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->transform(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->d(Landroid/graphics/RectF;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    add-float/2addr p4, p1

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    add-float/2addr p1, p5

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    add-float/2addr p1, p6

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    const/4 p3, 0x0

    const-string p4, "binding"

    if-nez p1, :cond_1

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p5, "shotContainer"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    float-to-int p5, p5

    iget p6, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    float-to-int p6, p6

    invoke-static {p1, p5, p6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    invoke-virtual {p1, p5}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p1, :cond_3

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_3
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->shotContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    invoke-virtual {p1, p5}, Landroid/view/View;->setY(F)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iget p5, p2, Landroid/graphics/RectF;->right:F

    sget-object p6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p6, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p5, v0

    iput p5, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v0, :cond_4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    sub-float/2addr p5, v0

    iput p5, p1, Landroid/graphics/RectF;->left:F

    iget p5, p2, Landroid/graphics/RectF;->bottom:F

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {p6, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p5, v0

    iput p5, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v0, :cond_5

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    add-float/2addr p5, v0

    iput p5, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    cmpl-float p5, p5, v0

    const/4 v0, 0x0

    if-lez p5, :cond_6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p5

    neg-float p5, p5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p5, v1

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p6, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p5, v1

    goto :goto_0

    :cond_6
    move p5, v0

    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_7

    neg-float v1, v1

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1, p5}, Landroid/graphics/RectF;->offset(FF)V

    sget p5, Lcom/onyx/android/sdk/device/R$dimen;->dp_30:I

    invoke-virtual {p6, p5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p5

    iget p6, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-lez p6, :cond_8

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    cmpl-float p6, p6, v0

    if-ltz p6, :cond_a

    :cond_8
    iget p6, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float p5, p5

    sub-float/2addr p6, p5

    iput p6, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p5, :cond_9

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, p3

    :cond_9
    iget-object p5, p5, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iget p5, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p5, p5

    sub-float/2addr p6, p5

    iput p6, p1, Landroid/graphics/RectF;->top:F

    :cond_a
    iget-object p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p5, :cond_b

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, p3

    :cond_b
    iget-object p5, p5, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->buttonGroup:Landroid/widget/LinearLayout;

    iget p6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p5, p6}, Landroid/view/View;->setX(F)V

    iget-object p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez p5, :cond_c

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object p3, p5

    :goto_2
    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->buttonGroup:Landroid/widget/LinearLayout;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->n(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final s()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    div-float/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->d:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;

    return-void
.end method

.method public final show(Landroid/app/Application;)V
    .locals 12
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->s()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->d:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;->onStart()V

    :cond_0
    invoke-static {p1}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->p:Lcom/hjq/window/EasyWindow;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->l:Lcom/onyx/android/sdk/ui/HighlightMaskDrawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v3, "getWindowParams(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->matchScreen(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->g:F

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->f:F

    float-to-int v3, v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeContentView(Lcom/hjq/window/EasyWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->matchParent(Landroid/view/View;)V

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v11}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;FFFFFFILjava/lang/Object;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->j:F

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->k:F

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->h:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->i:F

    add-float/2addr v6, v4

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->n(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->a:Lcom/onyx/galaxy/note/databinding/LayoutScreenCaptureBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->l(Lcom/hjq/window/EasyWindow;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->btn_cancel:I

    new-instance v1, Lcom/sunia/HTREnginev2/c6m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c6m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V

    invoke-virtual {p1, v0, v1}, Lcom/hjq/window/EasyWindow;->setOnClickListener(ILcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;

    sget v0, Lcom/onyx/galaxy/note/R$id;->btn_ok:I

    new-instance v1, Lcom/sunia/HTREnginev2/d6m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d6m;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V

    invoke-virtual {p1, v0, v1}, Lcom/hjq/window/EasyWindow;->setOnClickListener(ILcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setOnWindowLifecycle(Lcom/hjq/window/EasyWindow$OnWindowLifecycle;)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->show()V

    return-void
.end method
