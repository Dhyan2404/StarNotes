.class public final Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1#2:303\n1864#3,3:304\n*S KotlinDebug\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n*L\n205#1:304,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020#\u0012\u0006\u00103\u001a\u000202\u00a2\u0006\u0004\u00084\u00105J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0002J\u0014\u0010\u0018\u001a\u00020\u00022\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\tH\u0002J\u0008\u0010\u001c\u001a\u00020\u0002H\u0002J\u001a\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0008\u0002\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020\u001fH\u0002R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\'R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\'R\u0018\u0010,\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010.R\u0016\u00101\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00100\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "",
        "disableToast",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;",
        "event",
        "onImportNoteProgressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;",
        "onImportDocumentsProgressEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;",
        "onImportImageProgressEvent",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;",
        "onDocConvertProgressEvent",
        "f",
        "k",
        "u",
        "r",
        "j",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "importSelectedContext",
        "p",
        "n",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "action",
        "e",
        "d",
        "h",
        "m",
        "g",
        "",
        "content",
        "",
        "withLongDuration",
        "s",
        "i",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "activity",
        "Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;",
        "Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;",
        "importProgressDialog",
        "importImageProgressDialog",
        "Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;",
        "Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;",
        "docConvertDialog",
        "",
        "I",
        "docConvertStatus",
        "Z",
        "enableToast",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nProgressEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1#2:303\n1864#3,3:304\n*S KotlinDebug\n*F\n+ 1 ProgressEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/ProgressEventHandler\n*L\n205#1:304,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    const/16 p1, 0xc8

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->k:Z

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->l(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$showImportSuccessDialog(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->p(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->q(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->o(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->d()V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$event"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getAction()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->e(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 2

    const-string v0, "$importSelectedContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->s(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f()V

    return-void
.end method

.method public final disableToast()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->k:Z

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getTaskInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportComplete$errorList$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportComplete$errorList$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getImportNoteArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getOriginUriList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getTotalImportCount()I

    move-result p1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportComplete$1$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportComplete$1$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->completeCount(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->r(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getTotalImportCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_file_fail:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->t(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v5, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;->getOriginalFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_4

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImportComplete, error list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->import_one_file_fail:I

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->s(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h()V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;->updateProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogConvertFileProgressBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogConvertFileProgressBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/sunia/HTREnginev2/l8l;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/l8l;-><init>(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->picture:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setProgress(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setCurrentNumber(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getTotalImportCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setTotalCount(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;->setProgressInfo(Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;)V

    :cond_2
    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportFileProgressBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportFileProgressBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v2, Lcom/sunia/HTREnginev2/m8l;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/m8l;-><init>(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getCurrentTaskInfo()Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportTaskInfo;->getOriginalFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setProgress(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setCurrentNumber(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getTotalImportCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setTotalCount(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;->setProgressInfo(Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;)V

    :cond_2
    return-void
.end method

.method public final onDocConvertProgressEvent(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->u(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->k(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->j:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onImportDocumentsProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getTotalState()Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentState;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->n(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->j(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_file_fail:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->t(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->h()V

    :goto_0
    return-void
.end method

.method public final onImportImageProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getImportImageState()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g()V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getUriList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->getTotalImportCount()I

    move-result p1

    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportImageProgressEvent$1$1;

    invoke-direct {v5, p0, v0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler$onImportImageProgressEvent$1$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0, v1, p1, v5}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->completeCount(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_picture_success:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v4, v3}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->t(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_picture_fail:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v4, v3}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->t(Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->m(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onImportNoteProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->g:Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->getImportingNoteArgs(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getNoteProgress()F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;-><init>()V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;->setProgress(I)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/ImportProgressDialog;->setProgressInfo(Lcom/onyx/galaxy/note/editor/data/ImportProgressArgs;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->isOpenDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/k8l;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/k8l;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->f:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;)V
    .locals 13

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getImportNoteArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->folder:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportTagNameList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportTagNameList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->tag:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->all_note:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->import_success_toast_msg:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsProgressEvent;->getAction()Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->getCompletedFileTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->s(Ljava/lang/String;Z)V

    return-void
.end method

.method public final s(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->i:Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->isAllTaskComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->j:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->k(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/ConvertProgressDialog;->updateProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;)V

    :cond_3
    return-void
.end method
