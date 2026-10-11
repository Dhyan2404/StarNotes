.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,598:1\n637#2:599\n1549#3:600\n1620#3,3:601\n350#3,7:604\n766#3:611\n857#3,2:612\n1549#3:614\n1620#3,3:615\n350#3,7:618\n*S KotlinDebug\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n*L\n504#1:599\n523#1:600\n523#1:601,3\n525#1:604,7\n542#1:611\n542#1:612,2\n546#1:614\n546#1:615,3\n549#1:618,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0002\u0084\u0001\u0018\u00002\u00020\u0001B\t\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0018\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J\u0012\u0010\u001e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010$\u001a\u00020#2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0016J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+H\u0007J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010,\u001a\u00020.H\u0007J\u0010\u00101\u001a\u00020\u00022\u0006\u0010,\u001a\u000200H\u0007J\u0010\u00103\u001a\u00020\u00022\u0006\u0010,\u001a\u000202H\u0007J\u0010\u00105\u001a\u00020\u00022\u0006\u0010,\u001a\u000204H\u0007J\u0010\u00107\u001a\u00020\u00022\u0006\u0010,\u001a\u000206H\u0007J\u0010\u00109\u001a\u00020\u00022\u0006\u0010,\u001a\u000208H\u0007J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010,\u001a\u00020:H\u0007J\u0010\u0010=\u001a\u00020\u00022\u0006\u0010,\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010,\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010,\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010,\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010,\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010,\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010,\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u0010,\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010,\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010,\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00022\u0006\u0010,\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00022\u0006\u0010,\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00022\u0006\u0010,\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00022\u0006\u0010,\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00022\u0006\u0010,\u001a\u00020XH\u0007J\u0010\u0010[\u001a\u00020\u00022\u0006\u0010,\u001a\u00020ZH\u0007J\u0010\u0010]\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\\H\u0007J\u0010\u0010_\u001a\u00020\u00022\u0006\u0010,\u001a\u00020^H\u0007J\u0010\u0010a\u001a\u00020\u00022\u0006\u0010,\u001a\u00020`H\u0007J\u0010\u0010c\u001a\u00020\u00022\u0006\u0010,\u001a\u00020bH\u0007R\u001b\u0010i\u001a\u00020d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010hR\u001b\u0010n\u001a\u00020j8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008k\u0010f\u001a\u0004\u0008l\u0010mR\u001b\u0010s\u001a\u00020o8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008p\u0010f\u001a\u0004\u0008q\u0010rR\u001b\u0010x\u001a\u00020t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008u\u0010f\u001a\u0004\u0008v\u0010wR\u001b\u0010}\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008z\u0010f\u001a\u0004\u0008{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0019\u0010\u0083\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0080\u0001R\u0018\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u008b\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001a\u0010\u008d\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008a\u0001\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "G0",
        "I0",
        "J0",
        "A0",
        "N0",
        "H0",
        "q0",
        "r0",
        "K0",
        "L0",
        "M0",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "filter",
        "z0",
        "O0",
        "",
        "deleteId",
        "t0",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "nodes",
        "s0",
        "Q0",
        "P0",
        "R0",
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
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;",
        "event",
        "onDeleteNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnRecoverNoteEvent;",
        "onRecoverNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateFolderEvent;",
        "onCreateFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;",
        "onEditFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDragMoveFolderEvent;",
        "onDragMoveFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/OnSaveNoteEvent;",
        "onSaveNoteEvent",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onAccountChangedEvent",
        "Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;",
        "onPullSyncNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnMoveNoteEvent;",
        "onMoveNoteEvent",
        "Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;",
        "onMoveTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;",
        "onCreateTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;",
        "onCreateMultipleSubTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;",
        "onEditTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;",
        "onDeleteTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnSaveTagEvent;",
        "onSaveTagEvent",
        "Lcom/onyx/galaxy/note/category/event/OnDragMoveTagEvent;",
        "onDragMoveTagEventEvent",
        "Lcom/onyx/galaxy/note/category/event/GotoUpEvent;",
        "onGotoUpEvent",
        "Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;",
        "onExpandParentFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/ExpandParentTagEvent;",
        "onExpandParentTagEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;",
        "onReloadDataEvent",
        "Lcom/onyx/galaxy/note/settings/event/LocalRecoveryEvent;",
        "onLocalRecoveryEvent",
        "Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;",
        "onDriveRecoveryEvent",
        "Lcom/onyx/android/sdk/data/account/event/UpdateAvatarEvent;",
        "onUpdateAvatarEvent",
        "Lcom/onyx/android/sdk/replicator/event/LoginOnyxAccountEvent;",
        "onLoginOnyxAccountEvent",
        "Lcom/onyx/android/sdk/replicator/event/LogoutOnyxAccountEvent;",
        "onLogoutOnyxAccountEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportedEvent;",
        "onUserNoteListImportedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;",
        "onCloudRestoreCompleteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;",
        "onLocalRestoreCompleteEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "u0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "e1",
        "y0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;",
        "f1",
        "w0",
        "()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;",
        "messageViewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "g1",
        "x0",
        "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "notificationViewModel",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
        "h1",
        "v0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
        "filterAdapter",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "i1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "j1",
        "viewScopeDisposables",
        "com/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1",
        "k1",
        "Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;",
        "onDragListener",
        "",
        "l1",
        "Z",
        "scrollTop",
        "m1",
        "scrollBottom",
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
        "SMAP\nNoteListFunctionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,598:1\n637#2:599\n1549#3:600\n1620#3,3:601\n350#3,7:604\n766#3:611\n857#3,2:612\n1549#3:614\n1620#3,3:615\n350#3,7:618\n*S KotlinDebug\n*F\n+ 1 NoteListFunctionFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFunctionFragment\n*L\n504#1:599\n523#1:600\n523#1:601,3\n525#1:604,7\n542#1:611\n542#1:612,2\n546#1:614\n546#1:615,3\n549#1:618,7\n*E\n"
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

.field public final g1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k1:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l1:Z

.field public m1:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$messageViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$messageViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$notificationViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$notificationViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->g1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->h1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->j1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->k1:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->l1:Z

    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const-string v0, "click_galaxy_folder_0004"

    invoke-static {p1, v0, p2, p3, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->q0()V

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const-string v0, "click_galaxy_tag_0004"

    invoke-static {p1, v0, p2, p3, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->r0()V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleNoteSetExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleFolderExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->P0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleTagExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->R0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getFilterAdapter(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->x0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->m1:Z

    return p0
.end method

.method public static final synthetic access$getScrollTop$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->l1:Z

    return p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleSelectedFilter(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->z0(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    return-void
.end method

.method public static final synthetic access$setScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->m1:Z

    return-void
.end method

.method public static final synthetic access$setScrollTop$p(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->l1:Z

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->C0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->D0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->F0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->B0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->E0(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_create_folder:I

    new-instance v2, Lcom/sunia/HTREnginev2/mxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/mxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_create_tag:I

    new-instance v2, Lcom/sunia/HTREnginev2/nxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/nxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_series_expand:I

    new-instance v2, Lcom/sunia/HTREnginev2/oxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/oxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_folder_expand:I

    new-instance v2, Lcom/sunia/HTREnginev2/pxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/pxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_tag_expand:I

    new-instance v2, Lcom/sunia/HTREnginev2/qxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/qxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->rvFilter:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final G0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final H0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->vScrollDown:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->k1:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->vScrollUp:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->k1:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->rvFilter:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initDragScroll$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initDragScroll$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final I0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->H0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->N0()V

    return-void
.end method

.method public final J0()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->w0()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;->getUnreadCount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v4, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->x0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->getNotifications()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$a;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$b;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$initViewModel$disposable$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->j1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final K0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->loadFilterList()V

    return-void
.end method

.method public final L0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->loadNoteFoldTree()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final M0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->loadTagTree()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final N0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final O0()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->N0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoNoteSet()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->G0()V

    return-void
.end method

.method public final P0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFolderExpand()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "click_galaxy_folder_0002"

    goto :goto_0

    :cond_0
    const-string p0, "click_galaxy_folder_0003"

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final Q0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isNoteSetExpand()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "click_galaxy_homepage_note_0002"

    goto :goto_0

    :cond_0
    const-string p0, "click_galaxy_homepage_note_0003"

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final R0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTagExpand()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "click_galaxy_tag_0002"

    goto :goto_0

    :cond_0
    const-string p0, "click_galaxy_tag_0003"

    :goto_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onCloudRestoreCompleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->rvFilter:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd6

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onCreateMultipleSubTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateMultipleSubTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onCreateTagEvent(Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnCreateTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onDeleteNoteEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnDeleteNoteEvent;->getNodes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->s0(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onDeleteTagEvent(Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OnDeleteTagEvent;->getNode()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->t0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->j1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onDragMoveTagEventEvent(Lcom/onyx/galaxy/note/category/event/OnDragMoveTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnDragMoveTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onEditFolderEvent(Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnEditFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onEditTagEvent(Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnEditTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onExpandParentFolderEvent(Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onExpandParentTagEvent(Lcom/onyx/galaxy/note/category/event/ExpandParentTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/ExpandParentTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onGotoUpEvent(Lcom/onyx/galaxy/note/category/event/GotoUpEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/GotoUpEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onLocalRestoreCompleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onLoginOnyxAccountEvent(Lcom/onyx/android/sdk/replicator/event/LoginOnyxAccountEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/LoginOnyxAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->O0()V

    return-void
.end method

.method public final onLogoutOnyxAccountEvent(Lcom/onyx/android/sdk/replicator/event/LogoutOnyxAccountEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/LogoutOnyxAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->O0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onMoveTagEvent(Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OnMoveTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    return-void
.end method

.method public final onPullSyncNoteEvent(Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/PullSyncNoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    return-void
.end method

.method public final onUpdateAvatarEvent(Lcom/onyx/android/sdk/data/account/event/UpdateAvatarEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/UpdateAvatarEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->N0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->M0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->K0()V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->j1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->G0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->I0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->J0()V

    return-void
.end method

.method public final q0()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/CreateFolderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_FUNC_ROOT_FOLDER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-direct {v0, p0, v1, v2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final r0()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/TagCreateFrom;->HOME_FUNC_ROOT_TAG_CREATE:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {v0, p0, v1, v2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final s0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v3, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    move v4, v6

    :goto_5
    if-ne v4, v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v3

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteFolderFromTree$deleteNode$1;

    invoke-direct {v4, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteFolderFromTree$deleteNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteFolderFromTree$1;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteFolderFromTree$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    goto :goto_6

    :cond_b
    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoNoteSet()V

    :cond_c
    return-void
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteTagFromTree$deleteTag$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteTagFromTree$deleteTag$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_3
    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteTagFromTree$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$deleteTagFromTree$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoNoteSet()V

    :cond_7
    return-void
.end method

.method public final u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    return-object p0
.end method

.method public final v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->h1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    return-object p0
.end method

.method public final w0()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    return-object p0
.end method

.method public final x0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->g1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-object p0
.end method

.method public final y0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final z0(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->v0()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->updateSelectId(Ljava/lang/String;)V

    return-void
.end method
