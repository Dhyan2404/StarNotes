.class public final Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010&J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;",
        "action",
        "",
        "l",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "",
        "maxWidth",
        "m",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "g",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "",
        "h",
        "[I",
        "editorViewOffset",
        "i",
        "I",
        "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;",
        "getLongPressPopup",
        "()Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;",
        "setLongPressPopup",
        "(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V",
        "longPressPopup",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/base/data/TouchPoint;[II)V",
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
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I

.field public j:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/base/data/TouchPoint;[II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundleManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorViewOffset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->h:[I

    iput p5, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->i:I

    return-void
.end method

.method public static final synthetic access$checkPopupBound(Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->l(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;->setX(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;->setY(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;->e:Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLongPressPopup()Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->j:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/HitTestVisibleBoxAction;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->i:I

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    :cond_1
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->getCurrentTouchModeFeature()Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;->supportFingerEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->hasPasteData()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getPasteMenus()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v6, v0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/util/List;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->j:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->show(Landroid/view/View;)V

    return-void
.end method

.method public final setLongPressPopup(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/ShowLongPressPopupAction;->j:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    return-void
.end method
