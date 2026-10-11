.class public final Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;
.super Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\"\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u0019\u001a\u00020\u0006H\u0002J\u0008\u0010\u001a\u001a\u00020\u0006H\u0002J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J\u0008\u0010\u001c\u001a\u00020\u0006H\u0002R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "",
        "onMenuClick",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;",
        "info",
        "updateAnnotationSelection",
        "",
        "style",
        "color",
        "changeAnnotation",
        "type",
        "e",
        "",
        "postEvent",
        "k",
        "h",
        "i",
        "c",
        "",
        "b",
        "g",
        "f",
        "d",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;",
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
.field public b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;
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

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->m(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;IIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->k(IIZ)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->j()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getQuote()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->j()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->option_copy_success:I

    invoke-static {p0, v0, v2, v4, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public final changeAnnotation(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->k(IIZ)V

    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v8, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->j()V

    return-void
.end method

.method public final e(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
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

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->l(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->save_text_excerpt_fail:I

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->save_text_excerpt_fail:I

    invoke-static {p0, v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/onyx/android/sdk/universal/editor/extension/ContentSelectionKt;->toSaveTextExcerptArgs(Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextExcerptEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SaveTextExcerptEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->j()V

    return-void
.end method

.method public final g()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b()Ljava/lang/String;

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

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

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

.method public final h(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
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

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->l(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V
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

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->l(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;IIZILjava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(IIZ)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->save_annotation_fail:I

    invoke-static {p0, p1, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->save_annotation_fail:I

    invoke-static {p0, p1, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setStyle(I)V

    invoke-virtual {v4, p2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setColor(I)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    invoke-direct {p1, p2, v0, v4}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$saveAnnotation$1;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$saveAnnotation$1;-><init>(Z)V

    new-instance p3, Lcom/sunia/HTREnginev2/pb;

    invoke-direct {p3, p0}, Lcom/sunia/HTREnginev2/pb;-><init>(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;)V

    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
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

    sget-object p2, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->d()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->f()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->g()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->c()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->i(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->h(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->e(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    return-void
.end method
