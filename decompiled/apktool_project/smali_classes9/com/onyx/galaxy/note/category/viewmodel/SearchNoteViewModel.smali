.class public final Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 L2\u00020\u0001:\u0001LB\u0007\u00a2\u0006\u0004\u0008J\u0010KJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u0016\u0010\u0012\u001a\u00020\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u000cJ\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0016J\u0006\u0010\u001a\u001a\u00020\u000cJ\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007J\u001e\u0010&\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u000e\u0008\u0002\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0#J\u000e\u0010\'\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0007R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020,0+8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R#\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u0010010+8\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010.\u001a\u0004\u00083\u00100R%\u0010\u0019\u001a\u0010\u0012\u000c\u0012\n 5*\u0004\u0018\u00010\u00160\u00160+8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010.\u001a\u0004\u0008\u0019\u00100R%\u00109\u001a\u0010\u0012\u000c\u0012\n 5*\u0004\u0018\u00010\u00160\u00160+8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010.\u001a\u0004\u00088\u00100R%\u0010=\u001a\u0010\u0012\u000c\u0012\n 5*\u0004\u0018\u00010:0:0+8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010.\u001a\u0004\u0008<\u00100R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010H\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/galaxy/note/category/action/SearchNoteAction;",
        "action",
        "",
        "A",
        "w",
        "Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;",
        "binding",
        "y",
        "z",
        "v",
        "",
        "t",
        "u",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "list",
        "r",
        "clear",
        "keyword",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "search",
        "clearList",
        "isInputting",
        "getCurrentNoteTitle",
        "getSearchCountProgress",
        "saveSearchScope",
        "loadSavedSearchScope",
        "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "createManageFolderContext",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "createManageTagContext",
        "updateSearchScope",
        "Lio/reactivex/rxjava3/functions/Consumer;",
        "Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;",
        "onNext",
        "checkAndUpdateSearchScope",
        "addSearchScopeEvents",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;",
        "event",
        "onUpdateSearchProgressEvent",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "",
        "j",
        "getListData",
        "listData",
        "kotlin.jvm.PlatformType",
        "k",
        "l",
        "getExecutingAction",
        "executingAction",
        "",
        "m",
        "getSearchProgressPercent",
        "searchProgressPercent",
        "Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "n",
        "Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "getSearchScope",
        "()Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "setSearchScope",
        "(Lcom/onyx/galaxy/note/category/data/SearchScope;)V",
        "searchScope",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "o",
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "searchProgressResult",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/galaxy/note/category/data/SearchScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-void
.end method

.method public static final synthetic access$appendSearchData(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->r(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getSearchProgressResult$p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-object p0
.end method

.method public static final synthetic access$updateSearchProgress(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->A(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V

    return-void
.end method

.method public static synthetic checkAndUpdateSearchScope$default(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/sunia/HTREnginev2/x7m;

    invoke-direct {p2}, Lcom/sunia/HTREnginev2/x7m;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->l(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->q(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->x(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->s(Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->m(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sunia/HTREnginev2/y7m;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/y7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->y(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sunia/HTREnginev2/r7m;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/r7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->z(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sunia/HTREnginev2/s7m;

    invoke-direct {p2, p0, p1}, Lcom/sunia/HTREnginev2/s7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->v(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final x(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 1

    const-string v0, "$editorBundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->destroy()V

    iget-object p0, p1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/galaxy/note/category/action/SearchNoteAction;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setCurrentSearchName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setSearchProgress(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getSearchedCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setSearchedCount(I)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/SearchNoteAction;->getResult()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchProgress(F)V

    return-void
.end method

.method public final addSearchScopeEvents(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 13
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->folderConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "folderConditionLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/u7m;

    invoke-direct {v4, p0, p1}, Lcom/sunia/HTREnginev2/u7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v7, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->tagConditionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "tagConditionLayout"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/sunia/HTREnginev2/v7m;

    invoke-direct {v10, p0, p1}, Lcom/sunia/HTREnginev2/v7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->scopePreviewLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "scopePreviewLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/w7m;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/w7m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->checkAndUpdateSearchScope$default(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;ILjava/lang/Object;)V

    return-void
.end method

.method public final checkAndUpdateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;-><init>(Lcom/onyx/galaxy/note/category/data/SearchScope;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$a;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$a;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    return-void
.end method

.method public final clearList()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final createManageFolderContext()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllFolder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setSelectAll(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getFolderIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setSelectedFolderIds(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getFolderNames()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setSelectedFolderNames(Ljava/util/List;)V

    return-object v0
.end method

.method public final createManageTagContext()Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllTag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setSelectAll(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getTagIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setSelectedTagIds(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getTagNames()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setSelectedTagNames(Ljava/util/List;)V

    return-object v0
.end method

.method public final getCurrentNoteTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getCurrentSearchName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->shortenFromCenter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getExecutingAction()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSearchCountProgress()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getSearchedCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchCount()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchProgressPercent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSearchScope()Lcom/onyx/galaxy/note/category/data/SearchScope;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    return-object p0
.end method

.method public final isInputting()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isInputting()Z
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadSavedSearchScope()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserSearchScopeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/SearchScope;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    return-void
.end method

.method public final onUpdateSearchProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getTotalProgress()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getDeltaProgress()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->updateSearchProgress(FF)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getSearchProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->getIntPercent(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->mergeByPage(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveSearchScope()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserSearchScopeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final search(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->Companion:Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle$Companion;->createInstance()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->w()V

    sget-object v1, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/SearchActions;->getCorrespondingSearchTypes(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;

    invoke-virtual {v3, v2, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;->createSearchArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getFtsIndexArgs()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;->setUnloadPage(Z)V

    invoke-virtual {v1, v0, v2}, Lcom/onyx/galaxy/note/utils/SearchActions;->activateSearchEngine(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$b;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$c;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$c;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$d;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;

    invoke-direct {v2, v0, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$e;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$f;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->buffer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$g;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/t7m;

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/t7m;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$h;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setSearchScope(Lcom/onyx/galaxy/note/category/data/SearchScope;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/SearchScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->search_condition_all_folder:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getFolderNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->search_condition_no_folder:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->adaptive_comma:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getSelectAllTag()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->search_condition_all_tag:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->n:Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/SearchScope;->getTagNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->search_condition_no_tag:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->adaptive_comma:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSearchScope(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->folderConditionText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->tagConditionText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final v(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 11

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->createManageFolderContext()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->createManageTagContext()Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sget-object v2, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->Companion:Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;

    sget-object v4, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v5

    const-string v6, "getRoot(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V

    iget-object v4, p1, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->scopePreviewLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string p0, "scopePreviewLayout"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    const/4 v6, 0x0

    neg-int v7, v1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow$Companion;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final w()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->o:Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->createManageFolderContext()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/SelectMultiNoteFolderAction;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/action/SelectMultiNoteFolderAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V

    sget-object v3, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v4

    const-string v5, "getRoot(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$i;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$i;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;

    invoke-direct {v3, p0, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$j;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z(Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->createManageTagContext()Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/SelectMultiNoteTagAction;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/action/SelectMultiNoteTagAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V

    sget-object v3, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v4

    const-string v5, "getRoot(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$k;->e:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$k;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$l;

    invoke-direct {v3, p0, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$l;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
