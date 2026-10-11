.class public final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n1549#2:851\n1620#2,3:852\n1549#2:855\n1620#2,3:856\n766#2:859\n857#2,2:860\n1549#2:862\n1620#2,3:863\n766#2:866\n857#2,2:867\n1549#2:869\n1620#2,3:870\n1855#2:873\n1603#2,9:874\n1855#2:883\n1856#2:885\n1612#2:886\n1856#2:887\n1549#2:888\n1620#2,3:889\n1549#2:892\n1620#2,3:893\n1549#2:896\n1620#2,3:897\n1549#2:900\n1620#2,3:901\n1#3:884\n256#4,2:904\n254#4:906\n256#4,2:907\n254#4:909\n256#4,2:910\n310#4:912\n326#4,4:913\n311#4:917\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n*L\n616#1:851\n616#1:852,3\n631#1:855\n631#1:856,3\n634#1:859\n634#1:860,2\n635#1:862\n635#1:863,3\n639#1:866\n639#1:867,2\n640#1:869\n640#1:870,3\n644#1:873\n645#1:874,9\n645#1:883\n645#1:885\n645#1:886\n644#1:887\n653#1:888\n653#1:889,3\n663#1:892\n663#1:893,3\n677#1:896\n677#1:897,3\n687#1:900\n687#1:901,3\n645#1:884\n825#1:904,2\n834#1:906\n839#1:907,2\n842#1:909\n847#1:910,2\n747#1:912\n747#1:913,4\n747#1:917\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0008\u0008*\u0002\u0082\u0001\u0018\u0000 \u0088\u00012\u00020\u0001:\u0002\u0088\u0001B\t\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0019\u001a\u00020\u00022\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0008\u0010 \u001a\u00020\u0002H\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010$\u001a\u00020#H\u0002J\u0012\u0010&\u001a\u00020\u00022\u0008\u0008\u0002\u0010%\u001a\u00020#H\u0003J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0007H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0008\u0010*\u001a\u00020\u0002H\u0002J\u0008\u0010+\u001a\u00020\u0002H\u0002J\u0012\u0010.\u001a\u00020\u00022\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J$\u00103\u001a\u00020\u000e2\u0006\u00100\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001012\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u001a\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u000e2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u000206H\u0016J\u0010\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209H\u0007J\u0010\u0010=\u001a\u00020\u00022\u0006\u0010:\u001a\u00020<H\u0007J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010:\u001a\u00020>H\u0007J\u0010\u0010A\u001a\u00020\u00022\u0006\u0010:\u001a\u00020@H\u0007J\u0010\u0010C\u001a\u00020\u00022\u0006\u0010:\u001a\u00020BH\u0007J\u0010\u0010E\u001a\u00020\u00022\u0006\u0010:\u001a\u00020DH\u0007J\u0010\u0010G\u001a\u00020\u00022\u0006\u0010:\u001a\u00020FH\u0007J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010:\u001a\u00020HH\u0007J\u0010\u0010K\u001a\u00020\u00022\u0006\u0010:\u001a\u00020JH\u0007J\u0010\u0010M\u001a\u00020\u00022\u0006\u0010:\u001a\u00020LH\u0007J\u0010\u0010O\u001a\u00020\u00022\u0006\u0010:\u001a\u00020NH\u0007R\u001b\u0010U\u001a\u00020P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR\u001b\u0010Z\u001a\u00020V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010R\u001a\u0004\u0008X\u0010YR\u001b\u0010_\u001a\u00020[8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010R\u001a\u0004\u0008]\u0010^R\u001b\u0010d\u001a\u00020`8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010R\u001a\u0004\u0008b\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010R\u001a\u0004\u0008o\u0010pR\u001b\u0010v\u001a\u00020r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008s\u0010R\u001a\u0004\u0008t\u0010uR\u001b\u0010y\u001a\u00020r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008w\u0010R\u001a\u0004\u0008x\u0010uR\u0016\u0010|\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0016\u0010\u007f\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010~R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "U0",
        "S0",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "noteListModelBean",
        "",
        "pos",
        "I0",
        "R0",
        "P0",
        "Q0",
        "W0",
        "Landroid/view/View;",
        "v",
        "model",
        "a1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "M0",
        "J0",
        "N0",
        "",
        "list",
        "Z0",
        "noteModel",
        "H0",
        "noteModelBean",
        "O0",
        "L0",
        "x0",
        "X0",
        "y0",
        "v0",
        "",
        "V0",
        "notifyAllDataChanged",
        "q0",
        "totalWidth",
        "E0",
        "Y0",
        "t0",
        "b1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "view",
        "onViewCreated",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;",
        "event",
        "onCreateQuicklyFolderEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;",
        "onImportUriDocumentsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;",
        "onImportImageUrisEvent",
        "Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;",
        "onNoteListDragEndEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;",
        "onMultiDeleteEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;",
        "onMultiMoveEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiExportEvent;",
        "onMultiExportEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;",
        "onMultiCopyEvent",
        "Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;",
        "onToggleSelectAllEvent",
        "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;",
        "onSyncNoteProgressChangedEvent",
        "Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;",
        "onActiveNoteListAnimateFinishedEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "z0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "e1",
        "G0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;",
        "f1",
        "B0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;",
        "footerAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;",
        "g1",
        "A0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;",
        "folderListAdapter",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "h1",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "adapterHelper",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "i1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "j1",
        "C0",
        "()Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Ljava/lang/Runnable;",
        "k1",
        "D0",
        "()Ljava/lang/Runnable;",
        "hideGoTopRunnable",
        "l1",
        "F0",
        "updateNoteListViewRunnable",
        "m1",
        "I",
        "showGoTopRowCount",
        "n1",
        "Z",
        "scrollTop",
        "o1",
        "scrollBottom",
        "com/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1",
        "p1",
        "Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;",
        "onDragListener",
        "<init>",
        "()V",
        "Companion",
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
        "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n1549#2:851\n1620#2,3:852\n1549#2:855\n1620#2,3:856\n766#2:859\n857#2,2:860\n1549#2:862\n1620#2,3:863\n766#2:866\n857#2,2:867\n1549#2:869\n1620#2,3:870\n1855#2:873\n1603#2,9:874\n1855#2:883\n1856#2:885\n1612#2:886\n1856#2:887\n1549#2:888\n1620#2,3:889\n1549#2:892\n1620#2,3:893\n1549#2:896\n1620#2,3:897\n1549#2:900\n1620#2,3:901\n1#3:884\n256#4,2:904\n254#4:906\n256#4,2:907\n254#4:909\n256#4,2:910\n310#4:912\n326#4,4:913\n311#4:917\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot\n*L\n616#1:851\n616#1:852,3\n631#1:855\n631#1:856,3\n634#1:859\n634#1:860,2\n635#1:862\n635#1:863,3\n639#1:866\n639#1:867,2\n640#1:869\n640#1:870,3\n644#1:873\n645#1:874,9\n645#1:883\n645#1:885\n645#1:886\n644#1:887\n653#1:888\n653#1:889,3\n663#1:892\n663#1:893,3\n677#1:896\n677#1:897,3\n687#1:900\n687#1:901,3\n645#1:884\n825#1:904,2\n834#1:906\n839#1:907,2\n842#1:909\n847#1:910,2\n747#1:912\n747#1:913,4\n747#1:917\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FragmentNoteFolderRoot"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q1:J = 0x2eeL

.field public static final r1:J = 0x32L


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

.field public final h1:Lcom/chad/library/adapter4/QuickAdapterHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m1:I

.field public n1:Z

.field public o1:Z

.field public final p1:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->Companion:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->e1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$footerAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$footerAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->f1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$folderListAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$folderListAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->g1:Lkotlin/Lazy;

    new-instance v0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->build()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->h1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$gridLayoutManager$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$gridLayoutManager$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->j1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$hideGoTopRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$hideGoTopRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->k1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$updateNoteListViewRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$updateNoteListViewRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->l1:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->n1:Z

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->p1:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    return-void
.end method

.method public static final K0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final T0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->Y0()V

    return-void
.end method

.method public static final synthetic access$adjustListView(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->q0(Z)V

    return-void
.end method

.method public static final synthetic access$adjustRowCountInScreen(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->t0()V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getFolderListAdapter(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHideGoTopRunnable(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->D0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->o1:Z

    return p0
.end method

.method public static final synthetic access$getScrollTop$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->n1:Z

    return p0
.end method

.method public static final synthetic access$getShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    return p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleAddTagToNote(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->H0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$handleClickFolder(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->I0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method

.method public static final synthetic access$handleCopyNote(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->J0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleDeleteNote(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->L0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleEditNode(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->M0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleExportNote(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->N0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleMoveNote(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->O0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$loadListData(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->W0()V

    return-void
.end method

.method public static final synthetic access$setScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->o1:Z

    return-void
.end method

.method public static final synthetic access$setScrollTop$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->n1:Z

    return-void
.end method

.method public static final synthetic access$setShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    return-void
.end method

.method public static final synthetic access$showNoteOpPopup(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->a1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$toggleGoTopVisible(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->b1()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->T0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->u0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->K0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->s0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->w0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->q0(Z)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_horizontal_margin:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_left_container_width:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-float/2addr v1, v0

    :cond_0
    float-to-int v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    const-string v3, "rv"

    if-eq v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_2

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->E0(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    if-ne v1, v4, :cond_6

    if-ne v2, v0, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->F0()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    const-string v0, "pay_load_key_refresh_view"

    const-string v1, "FragmentNoteFolderRoot"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->folder_gird_item_height:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eq v3, v4, :cond_0

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->folder_linear_item_height:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    :cond_0
    div-int v1, v0, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    :cond_1
    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->g1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    return-object p0
.end method

.method public final B0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;

    return-object p0
.end method

.method public final C0()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->j1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public final D0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->k1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final E0(I)I
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->folder_gird_item_max_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->note_grid_divider_min_width:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    int-to-float p1, p1

    div-float v1, p1, v0

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    :goto_0
    int-to-float v3, v1

    mul-float/2addr v3, v0

    sub-float v3, p1, v3

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final F0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->l1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final H0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->setNoteModelBean(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;

    const-string v1, "FragmentNoteFolderRoot"

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final I0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSelectList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->updateSelect(ZI)V

    return-void
.end method

.method public final J0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$string;->option_copying:I

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    new-instance v2, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v3, v1, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$e;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$e;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/yug;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/yug;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$f;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final L0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    const-string v1, "subscribe(...)"

    const-string v2, "requireContext(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p1, p1}, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v4, v0, v3}, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :goto_2
    return-void
.end method

.method public final M0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    const-string v1, "requireContext(...)"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$g;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$g;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "FragmentNoteFolderRoot"

    invoke-direct {v0, p0, p1, v1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public final N0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->Z0(Ljava/util/List;)V

    return-void
.end method

.method public final O0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOldParentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOpNoteIds(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setMoveNoteList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    const-string v2, "FragmentNoteFolderRoot"

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final P0()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$optionClickCallback$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$optionClickCallback$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$j;

    invoke-direct {v4, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$j;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v2, v3, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$id;->v_click_option:I

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$j;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$j;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->h1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAfterAdapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->h1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->B0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->addAfterAdapter(Lcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->W0()V

    return-void
.end method

.method public final R0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->includeEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getFOLDER_ROOT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setEmptyBean(Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;)V

    return-void
.end method

.method public final S0()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->r0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->t0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->h1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteListDragListener;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteListDragListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v0, "slGoTop"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/zug;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/zug;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->vScrollDown:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->p1:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->vScrollUp:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->p1:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->R0()V

    return-void
.end method

.method public final U0()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$4;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$5;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$5;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isLoadingList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$7;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$7;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final V0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterRootFolder()Z

    move-result p0

    return p0
.end method

.method public final W0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final X0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOldParentId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOpNoteIds(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setMoveNoteList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    const-string v3, "FragmentNoteFolderRoot"

    invoke-direct {v2, v0, v3}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$h;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$h;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final Y0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    neg-int v0, v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->list_go_top_animate_duration:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public final Z0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "requireContext(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;->toNoteExportArgsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$showExportDialog$1$1;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$showExportDialog$1$1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->setListener(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$showNoteOpPopup$noteOperateListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$showNoteOpPopup$noteOperateListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v0, "getRoot(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b1()V
    .locals 8

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    const/16 v1, 0x8

    const-string v2, "slGoTop"

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->C0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int/2addr v0, v3

    iget v3, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->m1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/material/transition/MaterialFade;

    invoke-direct {v7}, Lcom/google/android/material/transition/MaterialFade;-><init>()V

    invoke-static {v6, v7}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/google/android/material/transition/MaterialFade;

    invoke-direct {v3}, Lcom/google/android/material/transition/MaterialFade;-><init>()V

    invoke-static {v0, v3}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final onActiveNoteListAnimateFinishedEvent(Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->r0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->t0()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->h1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->r0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->t0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffdd

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateQuicklyFolderEvent(Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubFolderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findFolder(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_HEADER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-direct {p1, v0, p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onImportImageUrisEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;->getUriList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importImages$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V

    return-void
.end method

.method public final onImportUriDocumentsEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getUriList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public final onMultiCopyEvent(Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->v0()V

    return-void
.end method

.method public final onMultiDeleteEvent(Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->x0()V

    return-void
.end method

.method public final onMultiExportEvent(Lcom/onyx/galaxy/note/category/event/MultiExportEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiExportEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->y0()V

    return-void
.end method

.method public final onMultiMoveEvent(Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->X0()V

    return-void
.end method

.method public final onNoteListDragEndEvent(Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->resetDragView()V

    return-void
.end method

.method public final onSyncNoteProgressChangedEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->handleSyncNoteProgressChangedEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;)V

    return-void
.end method

.method public final onToggleSelectAllEvent(Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->V0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move p1, v0

    :goto_0
    const-string v1, "pay_load_key_selected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->A0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v1, v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->P0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->S0()V

    return-void
.end method

.method public final q0(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sunia/HTREnginev2/bvg;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/bvg;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sunia/HTREnginev2/cvg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cvg;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->option_copying:I

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$a;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$b;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/avg;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/avg;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$c;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final x0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findFolders(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "requireContext(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    new-instance v0, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;

    invoke-direct {v0, v1, v3, v4}, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final y0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->G0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->Z0(Ljava/util/List;)V

    return-void
.end method

.method public final z0()Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    return-object p0
.end method
