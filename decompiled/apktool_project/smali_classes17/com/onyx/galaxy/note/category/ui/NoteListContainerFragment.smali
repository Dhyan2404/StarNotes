.class public final Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,472:1\n288#2,2:473\n1549#2:475\n1620#2,3:476\n1549#2:479\n1620#2,3:480\n277#3,2:483\n277#3,2:485\n*S KotlinDebug\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n*L\n242#1:473,2\n466#1:475\n466#1:476,3\n470#1:479\n470#1:480,3\n355#1:483,2\n356#1:485,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008|\u0010}J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0014\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0016\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0017\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J$\u0010 \u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u001f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0007J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010%\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010%\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010%\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010%\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00022\u0006\u0010%\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00022\u0006\u0010%\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00022\u0006\u0010%\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00022\u0006\u0010%\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010%\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010%\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010%\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010%\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010%\u001a\u00020AH\u0007J\u0010\u0010D\u001a\u00020\u00022\u0006\u0010%\u001a\u00020CH\u0007J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010%\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00022\u0006\u0010%\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010%\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00022\u0006\u0010%\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010%\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00022\u0006\u0010%\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00022\u0006\u0010%\u001a\u00020QH\u0007J\u0010\u0010T\u001a\u00020\u00022\u0006\u0010%\u001a\u00020SH\u0007J\u0010\u0010V\u001a\u00020\u00022\u0006\u0010%\u001a\u00020UH\u0007R\u001b\u0010\\\u001a\u00020W8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[R\u001b\u0010a\u001a\u00020]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010Y\u001a\u0004\u0008_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010Y\u001a\u0004\u0008d\u0010eR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010l\u001a\u00020g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010iR\"\u0010q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u001c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008r\u0010pR\u001c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008t\u0010pR\"\u0010w\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008v\u0010pR\u001c\u0010y\u001a\u0008\u0012\u0004\u0012\u00020\u00110m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008x\u0010pR\"\u0010{\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110n0m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008z\u0010p\u00a8\u0006~"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "D0",
        "H0",
        "u0",
        "F0",
        "C0",
        "o0",
        "E0",
        "",
        "Landroid/net/Uri;",
        "uris",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "G0",
        "w0",
        "x0",
        "",
        "it",
        "B0",
        "y0",
        "v0",
        "z0",
        "A0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;",
        "event",
        "onPullSyncNoteEvent",
        "Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;",
        "onPullRemoveSyncNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;",
        "onReloadDataEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;",
        "onDragMoveFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;",
        "onSaveNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;",
        "onCreateFolderEvent",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onAccountChangedEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;",
        "onNCreateScribbleNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/PaperImageContentEvent;",
        "onPaperImageContentEvent",
        "Lcom/onyx/galaxy/note/category/event/CoverImageContentEvent;",
        "onCoverCreateImageContentEvent",
        "Lcom/onyx/galaxy/note/category/event/CoverDocumentsEvent;",
        "onCoverDocumentsEvent",
        "Lcom/onyx/galaxy/note/category/event/PaperDocumentsEvent;",
        "onPaperDocumentsEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;",
        "onDeleteNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;",
        "onRecoverNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;",
        "onMoveNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;",
        "onEditFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;",
        "onEditListNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;",
        "onDeleteTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;",
        "onSaveTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;",
        "onEditTagEvent",
        "Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;",
        "onLocalRecoveryEvent",
        "Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;",
        "onDriveRecoveryEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;",
        "onSavedDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;",
        "onUserNoteListImportedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;",
        "onImportDocumentsDoneEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "r0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "e1",
        "t0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "f1",
        "s0",
        "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "notificationViewModel",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "g1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "h1",
        "viewScopeDisposables",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "i1",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "getBookContentLauncher",
        "j1",
        "getImageContentLauncher",
        "k1",
        "getPaperImageContentLauncher",
        "l1",
        "getPaperDocumentsLauncher",
        "m1",
        "getCoverImageContentLauncher",
        "n1",
        "getCoverDocumentsLauncher",
        "<init>",
        "()V",
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
        "SMAP\nNoteListContainerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,472:1\n288#2,2:473\n1549#2:475\n1620#2,3:476\n1549#2:479\n1620#2,3:480\n277#3,2:483\n277#3,2:485\n*S KotlinDebug\n*F\n+ 1 NoteListContainerFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListContainerFragment\n*L\n242#1:473,2\n466#1:475\n466#1:476,3\n470#1:479\n470#1:480,3\n355#1:483,2\n356#1:485,2\n*E\n"
    }
.end annotation


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$notificationViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$notificationViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->g1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->fcFolderRoot:Landroidx/fragment/app/FragmentContainerView;

    const-string v4, "fcFolderRoot"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->fcViewPage:Landroidx/fragment/app/FragmentContainerView;

    const-string v3, "fcViewPage"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->g1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getGetBookContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->i1:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getGetCoverDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->n1:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getGetImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->j1:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getGetPaperDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->l1:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->s0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleCoverImageFileSelectResult(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->v0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleFileSelectResult(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->w0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleImageSelectResult(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->x0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleTemplateImageFileSelectResult(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->y0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handlerCoverDocuments(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->z0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handlerPaperDocuments(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->A0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$importImage(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->B0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setGetBookContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->i1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setGetCoverDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->n1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setGetCoverImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->m1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setGetImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->j1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setGetPaperDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->l1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setGetPaperImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->k1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$toggleFragment(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->H0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->p0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->I0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->q0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final p0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$id;->tag_key_data:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getContent()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getContent()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$id;->tag_key_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onSecondaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->s0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->setBannerNotificationClosed(Z)V

    return-void
.end method


# virtual methods
.method public final A0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final B0(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p0, v8, p1, p2, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importImage$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageArgs;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V

    return-void
.end method

.method public final C0()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->F0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p0}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;-><init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D0()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v4, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->s0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->getNotifications()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$f;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$g;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$h;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    const-string v0, "doOnNext(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final E0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final F0()V
    .locals 11

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckConfig(Z)V

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G0(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->create(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final H0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/twj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/twj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->contentText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "contentText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/rwj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rwj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->bannerLayout:Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->closeButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "closeButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/swj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/swj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final onAccountChangedEvent(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->resetFolderRootListData()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onCoverCreateImageContentEvent(Lcom/onyx/galaxy/note/category/event/CoverImageContentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/CoverImageContentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->m1:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "getCoverImageContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCoverDocumentsEvent(Lcom/onyx/galaxy/note/category/event/CoverDocumentsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/CoverDocumentsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->n1:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "getCoverDocumentsLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->Companion:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;->getDocumentMimeTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd9

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateFolderEvent(Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onDeleteNoteEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;->getNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoNoteSet()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->u0()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onDeleteTagEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoNoteSet()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->u0()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onDragMoveFolderEvent(Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onDriveRecoveryEvent(Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onEditFolderEvent(Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrTitleOp()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onEditListNoteEvent(Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnEditListNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onEditTagEvent(Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrTitleOp()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onImportDocumentsDoneEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onLocalRecoveryEvent(Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onMoveNoteEvent(Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onNCreateScribbleNoteEvent(Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;->getNoteCreateFrom()Lcom/onyx/android/sdk/data/NoteCreateFrom;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->createNoteByTemplate(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    return-void
.end method

.method public final onPaperDocumentsEvent(Lcom/onyx/galaxy/note/category/event/PaperDocumentsEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/PaperDocumentsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->l1:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "getPaperDocumentsLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->Companion:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;->getDocumentMimeTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPaperImageContentEvent(Lcom/onyx/galaxy/note/category/event/PaperImageContentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/PaperImageContentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->k1:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "getPaperImageContentLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPullRemoveSyncNoteEvent(Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/PullRemoveSyncNoteEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolderRoot()V

    :cond_1
    return-void
.end method

.method public final onPullSyncNoteEvent(Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    const-string v1, "onPullSyncNoteEvent"

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onRecoverNoteEvent(Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onReloadDataEvent(Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onSaveNoteEvent(Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onSaveTagEvent(Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onSavedDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SavedDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public final onUserNoteListImportedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->E0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->H0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->D0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->C0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->o0()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->endAppCreate()V

    return-void
.end method

.method public final r0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListContainerBinding;

    return-object p0
.end method

.method public final s0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-object p0
.end method

.method public final t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final u0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->t0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoUp()V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/GotoUpEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/GotoUpEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final v0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$a;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$a;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$b;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$b;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final w0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->G0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importDocuments$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V

    return-void
.end method

.method public final x0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    const/4 v1, 0x1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->unnamed_note:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;-><init>(ILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$c;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final y0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$d;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$e;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$e;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
