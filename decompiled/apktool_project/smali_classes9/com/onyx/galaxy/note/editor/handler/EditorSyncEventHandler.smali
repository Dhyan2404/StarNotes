.class public Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,540:1\n766#2:541\n857#2,2:542\n766#2:544\n857#2,2:545\n1855#2,2:547\n766#2:549\n857#2,2:550\n1855#2,2:552\n1477#2:554\n1502#2,3:555\n1505#2,3:565\n1855#2:568\n1855#2,2:569\n1726#2,3:571\n1856#2:574\n766#2:575\n857#2,2:576\n1855#2,2:578\n1855#2,2:580\n372#3,7:558\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n*L\n127#1:541\n127#1:542,2\n128#1:544\n128#1:545,2\n129#1:547,2\n481#1:549\n481#1:550,2\n484#1:552,2\n488#1:554\n488#1:555,3\n488#1:565,3\n490#1:568\n491#1:569,2\n494#1:571,3\n490#1:574\n502#1:575\n502#1:576,2\n503#1:578,2\n533#1:580,2\n488#1:558,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010_\u001a\u00020]\u0012\u0006\u0010`\u001a\u00020Y\u00a2\u0006\u0004\u0008a\u0010bJ\u001c\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u001aH\u0007J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u001cH\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020$H\u0007J\u0010\u0010\'\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020&H\u0007J\u0010\u0010)\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020(H\u0007J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020*H\u0007J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020,H\u0007J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020NH\u0017J\u0010\u0010Q\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020VH\u0007J\u001e\u0010\\\u001a\u00020\u00042\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020Y0X2\u0006\u0010[\u001a\u00020&H\u0015R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010^\u00a8\u0006c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "",
        "callback",
        "f",
        "e",
        "",
        "docId",
        "d",
        "",
        "event",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "onDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;",
        "onDocumentClosedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;",
        "onActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;",
        "onReleaseOtherNoteMemoryEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;",
        "onChangePageColumnCountEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;",
        "onEnableAdaptiveStrokeWidthEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;",
        "onEnableContinuousPageEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;",
        "onChangeLayoutTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;",
        "onChangeScrollerGravityEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;",
        "onEditorUndoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;",
        "onEditorRedoEvent",
        "Lcom/onyx/android/sdk/note/common/event/CommandEvent;",
        "onCommandEvent",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "onChangedShapeBeanEvent",
        "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;",
        "onNoteShapeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;",
        "onPageInsertedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;",
        "onOtherNotePageInsertedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;",
        "onPageRemovedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;",
        "onUpdateDocFetchPolicyEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RemovedPageRestoredEvent;",
        "onRemovedPageRestoredEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;",
        "onPageCopiedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageFinallyEvent;",
        "onRotatePageFinallyEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;",
        "onPastePageEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;",
        "onUpdatePageMarginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;",
        "onPageLayerRemovedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;",
        "onNoteLayerInfoChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;",
        "onNoteLayerMergedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;",
        "onNoteLayerAddedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerSetEvent;",
        "onNoteLayerSetEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;",
        "onNoteLayerUpdatedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;",
        "onAudioShapeBeanCreatedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRemovedEvent;",
        "onAudioInfoBeanRemovedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;",
        "onAudioInfoBeanRenamedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;",
        "onDraftCellAddedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/GotoOtherShapeLinkEvent;",
        "onGotoGotoOtherNoteLinkEvent",
        "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;",
        "onEditNoteEncryptionChangedEvent",
        "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;",
        "onNoteTitleUpdatedEvent",
        "Lcom/onyx/galaxy/note/category/event/NoteTagUpdatedEvent;",
        "onNoteTagUpdatedEvent",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundleList",
        "changedShapeBean",
        "applyChangedShapes",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,540:1\n766#2:541\n857#2,2:542\n766#2:544\n857#2,2:545\n1855#2,2:547\n766#2:549\n857#2,2:550\n1855#2,2:552\n1477#2:554\n1502#2,3:555\n1505#2,3:565\n1855#2:568\n1855#2,2:569\n1726#2,3:571\n1856#2:574\n766#2:575\n857#2,2:576\n1855#2,2:578\n1855#2,2:580\n372#3,7:558\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler\n*L\n127#1:541\n127#1:542,2\n128#1:544\n128#1:545,2\n129#1:547,2\n481#1:549\n481#1:550,2\n484#1:552,2\n488#1:554\n488#1:555,3\n488#1:565,3\n490#1:568\n491#1:569,2\n494#1:571,3\n490#1:574\n502#1:575\n502#1:576,2\n503#1:578,2\n533#1:580,2\n488#1:558,7\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundleManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->b(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateShapeLocationBarEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public applyChangedShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ")V"
        }
    .end annotation

    const-string p0, "editorBundleList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "changedShapeBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyChangedShapesAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/imf;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/imf;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getPrimaryEditorBundleList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getImmutableEditorBundleList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getImmutableEditorBundleList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_5

    :cond_8
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_a

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v1, v3

    goto :goto_6

    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v4, :cond_b

    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->setOwner(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$updateAssociatedBundleNoteModel$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$updateAssociatedBundleNoteModel$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->e()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivateDocumentEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivateDocumentEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAudioInfoBeanRemovedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRemovedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRemovedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioInfoBeanRemovedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioInfoBeanRemovedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRemovedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onAudioInfoBeanRenamedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioInfoBeanRenamedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/AudioInfoBeanRenamedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onAudioShapeBeanCreatedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onChangeLayoutTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangeLayoutTypeEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangeLayoutTypeEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ChangeLayoutTypeEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onChangePageColumnCountEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangePageColumnCountEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangePageColumnCountEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ChangePageColumnCountEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onChangeScrollerGravityEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangeScrollerGravityEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangeScrollerGravityEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ChangeScrollerGravityEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onChangedShapeBeanEvent(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangedShapeBeanEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onChangedShapeBeanEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onCommandEvent(Lcom/onyx/android/sdk/note/common/event/CommandEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/event/CommandEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onCommandEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lcom/onyx/android/sdk/note/common/event/CommandEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onDocumentClosedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDocumentClosedEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->e()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDocumentOpened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDraftCellAddedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onDraftCellAddedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onDraftCellAddedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onEditNoteEncryptionChangedEvent(Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEditNoteEncryptionChangedEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEditNoteEncryptionChangedEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onEditorRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EditorRedoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEditorUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EditorUndoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEnableAdaptiveStrokeWidthEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEnableAdaptiveStrokeWidthEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEnableAdaptiveStrokeWidthEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/EnableAdaptiveStrokeWidthEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onEnableContinuousPageEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEnableContinuousPageEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onEnableContinuousPageEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/EnableContinuousPageEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onGotoGotoOtherNoteLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/GotoOtherShapeLinkEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/GotoOtherShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/GotoOtherShapeLinkEvent;->getLinkBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onNoteLayerAddedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerAddedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerAddedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerAddedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteLayerInfoChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerInfoChangedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerInfoChangedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerInfoChangedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteLayerMergedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerMergedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerMergedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteLayerSetEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerSetEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerSetEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerSetEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerSetEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerSetEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteLayerUpdatedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerUpdatedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteLayerUpdatedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerUpdatedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteShapeChangedEvent(Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->onChangedShapeBeanEvent(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    return-void
.end method

.method public final onNoteTagUpdatedEvent(Lcom/onyx/galaxy/note/category/event/NoteTagUpdatedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteTagUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteTagUpdatedEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteTagUpdatedEvent$1;-><init>(Lcom/onyx/galaxy/note/category/event/NoteTagUpdatedEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onNoteTitleUpdatedEvent(Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteTitleUpdatedEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onNoteTitleUpdatedEvent$1;-><init>(Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onOtherNotePageInsertedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onOtherNotePageInsertedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onOtherNotePageInsertedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/OtherNotePageInsertedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onPageCopiedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageCopiedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageCopiedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onPageInsertedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageInsertedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageInsertedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/PageInsertedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onPageLayerRemovedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageLayerRemovedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageLayerRemovedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/PageLayerRemovedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onPageRemovedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageRemovedEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPageRemovedEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/PagesRemovedEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onPastePageEvent(Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/PastePageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPastePageEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onPastePageEvent$1;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onReleaseOtherNoteMemoryEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getImmutableEditorBundleList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isDocumentOpen(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReleaseNoteMemoryAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final onRemovedPageRestoredEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RemovedPageRestoredEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RemovedPageRestoredEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onRemovedPageRestoredEvent$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onRemovedPageRestoredEvent$1;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onRotatePageFinallyEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageFinallyEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageFinallyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onRotatePageFinallyEvent$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onRotatePageFinallyEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onUpdateDocFetchPolicyEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdateDocFetchPolicyEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdateDocFetchPolicyEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/UpdateDocFetchPolicyEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onUpdatePageMarginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->f:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postToAssociatedBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
