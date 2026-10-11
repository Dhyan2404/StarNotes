.class public final Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,576:1\n277#2,2:577\n277#2,2:579\n277#2,2:581\n277#2,2:583\n326#2,4:585\n1855#3,2:589\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n*L\n281#1:577,2\n282#1:579,2\n283#1:581,2\n284#1:583,2\n285#1:585,4\n501#1:589,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 d2\u00020\u0001:\u0001dB\u0007\u00a2\u0006\u0004\u0008b\u0010cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0016\u0010\u000f\u001a\u00020\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0010\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u001fH\u0002J\u0008\u0010*\u001a\u00020\u0002H\u0002J\u0012\u0010-\u001a\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016J$\u00103\u001a\u0002022\u0006\u0010/\u001a\u00020.2\u0008\u00101\u001a\u0004\u0018\u0001002\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016J\u001a\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u0002022\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016J\u0010\u00108\u001a\u00020\u00022\u0006\u00107\u001a\u000206H\u0016J\u0010\u0010:\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020;H\u0007J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020=H\u0007J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020?H\u0007J\u0010\u0010B\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020AH\u0007R\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010D\u001a\u0004\u0008E\u0010FR\'\u0010L\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0I0H8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010D\u001a\u0004\u0008J\u0010KR\u001b\u0010O\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010D\u001a\u0004\u0008M\u0010NR\u001b\u0010S\u001a\u00020P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010D\u001a\u0004\u0008Q\u0010RR\u001b\u0010W\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010D\u001a\u0004\u0008U\u0010VR\u001b\u0010[\u001a\u00020X8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010D\u001a\u0004\u0008Y\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010]R\u0014\u0010a\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010`\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "g1",
        "d1",
        "",
        "event",
        "I0",
        "k1",
        "L0",
        "j1",
        "l1",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "resultList",
        "K0",
        "a1",
        "M0",
        "W0",
        "z0",
        "x0",
        "S0",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "entity",
        "J0",
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "openDocArgs",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "model",
        "f1",
        "U0",
        "",
        "keyword",
        "y0",
        "B0",
        "h1",
        "",
        "percent",
        "m1",
        "A0",
        "eventId",
        "i1",
        "e1",
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
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;",
        "onOpenSearchResultEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;",
        "onImportDocumentUrisEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;",
        "onImportImageUrisEvent",
        "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;",
        "onActivationStateChangedEvent",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onLoginAccountChanged",
        "Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;",
        "Lkotlin/Lazy;",
        "D0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;",
        "binding",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Ljava/util/LinkedList;",
        "G0",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "searchHistoryOp",
        "E0",
        "()I",
        "limitCount",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;",
        "C0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;",
        "H0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;",
        "searchViewModel",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "F0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "noteViewModel",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "searchDisposable",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
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
        "SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,576:1\n277#2,2:577\n277#2,2:579\n277#2,2:581\n277#2,2:583\n326#2,4:585\n1855#3,2:589\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment\n*L\n281#1:577,2\n282#1:579,2\n283#1:581,2\n284#1:583,2\n285#1:585,4\n501#1:589,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l1:Ljava/lang/String; = "SEARCH_NOTE_HISTORY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

.field public final i1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j1:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->d1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$searchHistoryOp$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$searchHistoryOp$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$limitCount$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$limitCount$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->f1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$adapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->g1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$searchViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$searchViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->h1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$noteViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$noteViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final N0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public static final O0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->z0()V

    const-string p1, "click_galaxy_search_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1(Ljava/lang/String;)V

    return-void
.end method

.method public static final P0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->B0()V

    return-void
.end method

.method public static final Q0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final R0(Landroid/view/View;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToDataRepository$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    return-void
.end method

.method public static final T0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->J0(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    :goto_0
    return-void
.end method

.method public static final V0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$keyword"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->h1(Ljava/lang/String;)V

    return-void
.end method

.method public static final X0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->y0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->h1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->x0()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final Y0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const-string p1, "click_galaxy_search_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final Z0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->clearList()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$clearDisposable(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->A0()V

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getSearchDisposable$p(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->j1:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$getSearchViewModel(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleEvent(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->I0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$handleSearchResultList(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->K0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$onSearchFinish(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->e1()V

    return-void
.end method

.method public static final synthetic access$updateLayoutParams(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1()V

    return-void
.end method

.method public static final synthetic access$updateLoadingVisibility(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->l1()V

    return-void
.end method

.method public static final synthetic access$updateSearchProgress(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->m1(I)V

    return-void
.end method

.method public static final b1(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSideExpand()V

    return-void
.end method

.method public static final c1(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->hwrSwitchButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    const-string v0, "hwrSwitchButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homepage_search_SmartHandwritingSearch"

    invoke-virtual {p1, p0, v0}, Lcom/onyx/galaxy/note/utils/SearchActions;->toggleHwrSearch(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->V0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->Q0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->R0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->b1(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->O0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->X0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->N0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->Y0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->Z0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->T0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->P0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->c1(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final B0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1()V

    return-void
.end method

.method public final C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->g1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    return-object p0
.end method

.method public final D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    return-object p0
.end method

.method public final E0()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->h1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    return-object p0
.end method

.method public final I0(Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p1, Lcom/onyx/galaxy/note/editor/event/SearchScopeChangedEvent;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->h1(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final J0(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getPageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->f1(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final K0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->addTitleEntities(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->addTextEntities(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->addHWREntities(Ljava/util/List;)V

    return-void
.end method

.method public final L0()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isAiSearchEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->hwrSwitchButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->j1()V

    return-void
.end method

.method public final M0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/k7m;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/k7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnClear:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnClear"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/l7m;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/l7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivSetting"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/m7m;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/m7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivLibrary:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivLibrary"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/n7m;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/n7m;-><init>()V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->closeSearchButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "closeSearchButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/o7m;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/o7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    const-string v1, "searchScopeBinding"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->addSearchScopeEvents(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    return-void
.end method

.method public final S0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/p7m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->rvSearch:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->rvSearch:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initList$2;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initList$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public final U0()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cgHistory:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$layout;->chip_search_note_layout:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cgHistory:Lcom/google/android/material/chip/ChipGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.onyx.android.sdk.theme.widgets.TintChipView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/onyx/android/sdk/theme/widgets/TintChipView;

    new-instance v3, Lcom/sunia/HTREnginev2/j7m;

    invoke-direct {v3, p0, v1}, Lcom/sunia/HTREnginev2/j7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cgHistory:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final W0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/e7m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/h7m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputLayoutName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    new-instance v1, Lcom/sunia/HTREnginev2/i7m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->j1:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/common/action/TextChangeDebounceAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v1, "textInputEditTextViewName"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/action/TextChangeDebounceAction;-><init>(Landroid/widget/TextView;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$a;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->j1:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final a1()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->U0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->ivExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivExpand"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/f7m;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->hwrSwitchButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    const-string v0, "hwrSwitchButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/g7m;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/g7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->S0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->W0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/extension/Activity;->isFront(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initView$3;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initView$3;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final d1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getExecutingAction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchProgressPercent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$4;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$6;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->loadSavedSearchScope()V

    return-void
.end method

.method public final e1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "view_galaxy_search_0002"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "view_galaxy_search_0003"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->i1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final f1(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/OpenNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p1}, Lcom/onyx/galaxy/note/category/action/OpenNoteAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$b;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$b;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final g1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->folderConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "folderConditionLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$relayout$1;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$relayout$1;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->tagConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v2, "tagConditionLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$relayout$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$relayout$2;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->search_condition_child_weight:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->folderConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWeight(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->tagConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWeight(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->scopePreviewLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "scopePreviewLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWeight(Landroid/view/View;F)V

    return-void
.end method

.method public final h1(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getExecutingAction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->x0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->setKeyword(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->search(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$d;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final i1(Ljava/lang/String;)V
    .locals 3

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final j1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->start:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v2, Lcom/onyx/galaxy/note/R$id;->end:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->isAiSearchFeatureEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 v3, 0x4

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$id;->hwr_switch_button:I

    invoke-virtual {v0, p0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->hwr_switch_button:I

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    return-void
.end method

.method public final k1()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSlideExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    if-eqz v0, :cond_2

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_28:I

    goto :goto_1

    :cond_2
    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    :goto_1
    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->llOps:Landroid/widget/LinearLayout;

    xor-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->tvHistoryTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v6, "tvHistoryTitle"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v6, v1, 0x1

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->svHistory:Landroid/widget/ScrollView;

    const-string v6, "svHistory"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnClear:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v6, "btnClear"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->vDivider:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v6, "vDivider"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v6, "tvTitle"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_d

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v6, Lcom/onyx/galaxy/note/R$id;->start:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    const/4 v6, 0x3

    if-eqz v5, :cond_9

    if-eqz v0, :cond_7

    const/16 v8, 0x8

    goto :goto_6

    :cond_7
    move v8, v2

    :goto_6
    if-eqz v1, :cond_8

    move v7, v2

    :cond_8
    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_ops:I

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setTranslationY(IF)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_ops:I

    invoke-virtual {v5, v1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_history_title:I

    invoke-virtual {v5, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->sv_history:I

    invoke-virtual {v5, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_clear:I

    invoke-virtual {v5, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_divider:I

    invoke-virtual {v5, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    invoke-virtual {v5, v1, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v5, Lcom/onyx/galaxy/note/R$id;->end:I

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    if-eqz v1, :cond_b

    sget v5, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    invoke-virtual {v1, v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    sget v4, Lcom/onyx/galaxy/note/R$id;->ll_ops:I

    if-eqz v0, :cond_a

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_108:I

    goto :goto_7

    :cond_a
    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_96:I

    :goto_7
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v4, v6, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_b
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    :goto_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->L0()V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l1()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->start:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v2, Lcom/onyx/galaxy/note/R$id;->end:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getExecutingAction()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    sget v4, Lcom/onyx/galaxy/note/R$id;->loadingLayout:I

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->loadingLayout:I

    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->loadingLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v2, :cond_2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final m1(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getCurrentNoteTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->search_progress_global:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFormatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->getSearchCountProgress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->progressText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->countText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->loadingLayout:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onActivationStateChangedEvent(Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->L0()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->rvSearch:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->g1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd3

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->setNoteViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->setSearchViewModel(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onImportDocumentUrisEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;)V
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getUriList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->F0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

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

.method public final onLoginAccountChanged(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->btnClear:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->searchScopeBinding:Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    const-string v0, "searchScopeBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope$default(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;ILjava/lang/Object;)V

    return-void
.end method

.method public final onOpenSearchResultEvent(Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->findFirstHighlightRect(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setSearchText(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setSearchRectList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->f1(Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->d1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->a1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->M0()V

    return-void
.end method

.method public final x0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->clearList()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final y0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->E0()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->G0()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->U0()V

    return-void
.end method

.method public final z0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->C0()Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->D0()Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->x0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->H0()Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->isInputting()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
