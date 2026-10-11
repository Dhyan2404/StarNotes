.class public final Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;
.super Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\"\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J.\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u00142\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0006H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u0006H\u0002J\u0008\u0010\u001e\u001a\u00020\u0006H\u0002J\u0008\u0010\u001f\u001a\u00020\u0006H\u0002R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "",
        "onMenuClick",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "info",
        "updateTextSelection",
        "",
        "style",
        "color",
        "changeAnnotation",
        "type",
        "d",
        "",
        "postEvent",
        "j",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "l",
        "g",
        "h",
        "c",
        "",
        "b",
        "f",
        "e",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "manager",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V",
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
.field public b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->n(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->j(IIZ)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;IIZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->l(IIZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->i()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->text()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final c()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->replaceLinebreakFromParagraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->option_copy_failed:I

    invoke-static {p0, v0, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->copyToClipboard(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->i()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->option_copy_success:I

    invoke-static {p0, v0, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final changeAnnotation(II)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->l(IIZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$1;

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;II)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
    .locals 6

    const/4 p1, 0x0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->k(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt;->toSaveTextExcerptArgs(Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextExcerptEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextExcerptEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->i()V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->save_text_excerpt_fail:I

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->save_text_excerpt_fail:I

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->activity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/app/Activity;

    move-result-object p0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->querySupportedProcessTextActivities(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->translate_fail:I

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
    .locals 6

    const/4 p1, 0x1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->k(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final h(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
    .locals 6

    const/4 p1, 0x3

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->Companion:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->k(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(IIZ)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->l(IIZ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l(IIZ)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->save_annotation_fail:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;-><init>()V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setColor(I)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setStyle(I)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-direct {p1, p2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$b;

    invoke-direct {p2, p0, p3}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Z)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "doOnNext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$saveAnnotationObservable$2;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$saveAnnotationObservable$2;-><init>(Z)V

    new-instance p3, Lcom/sunia/HTREnginev2/ffn;

    invoke-direct {p3, p0}, Lcom/sunia/HTREnginev2/ffn;-><init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;)V

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$c;->e:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$c;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->e()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->f()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->c()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->h(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->g(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->d(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    return-void
.end method
