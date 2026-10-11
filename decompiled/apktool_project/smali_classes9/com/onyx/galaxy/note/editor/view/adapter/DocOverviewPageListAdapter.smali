.class public Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$a;,
        Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter<",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocOverviewPageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n1855#2,2:444\n1045#2:446\n1855#2,2:448\n350#2,7:450\n350#2,7:457\n766#2:464\n857#2,2:465\n1855#2,2:467\n766#2:469\n857#2,2:470\n1549#2:472\n1620#2,3:473\n1#3:447\n*S KotlinDebug\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n*L\n173#1:444,2\n213#1:446\n233#1:448,2\n240#1:450,7\n242#1:457,7\n255#1:464\n255#1:465,2\n390#1:467,2\n406#1:469\n406#1:470,2\n407#1:472\n407#1:473,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0001:\u0001mB!\u0012\u0006\u0010K\u001a\u00020F\u0012\u0006\u0010P\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010X\u001a\u00020Q\u00a2\u0006\u0004\u0008k\u0010lJ*\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0002J\"\u0010\u000e\u001a\u00020\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0017\u001a\u00020\nH\u0014J\u0018\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0013H\u0016J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001d\u001a\u00020\u0013J\u0014\u0010\u001f\u001a\u00020\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0006J\u0016\u0010\"\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0013J(\u0010\'\u001a\u00020\n2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0012\u0008\u0002\u0010&\u001a\u000c\u0012\u0004\u0012\u00020\n0$j\u0002`%J\u001c\u0010+\u001a\u00020\n2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0\u00062\u0006\u0010*\u001a\u00020\u0013J\u0014\u0010.\u001a\u00020\n2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0\u0006J\u0014\u0010/\u001a\u00020\n2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006J\u000e\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020\u0013J\u0006\u00102\u001a\u00020\nJ\u0006\u00103\u001a\u00020\u0013J,\u00105\u001a\u00020\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u00104\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u00107\u001a\u00020\u00152\u0006\u00106\u001a\u00020\u0002H\u0016J\u0010\u00109\u001a\u00020\n2\u0006\u0010\u000c\u001a\u000208H\u0016J:\u00105\u001a\u00020\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u00104\u001a\u00020\u00132\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020:0\u0006H\u0014J*\u0010A\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00052\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020\u0013H\u0014J\u0014\u0010C\u001a\u00020\n2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0006J\u0014\u0010E\u001a\u00020\n2\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0006R\u0017\u0010K\u001a\u00020F8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR\u0017\u0010P\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\"\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u001e0Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010_\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010^R\u0014\u0010g\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008f\u0010^R\u0014\u0010j\u001a\u00020h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010i\u00a8\u0006n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ItemViewHolder;",
        "",
        "originList",
        "list",
        "p",
        "",
        "q",
        "holder",
        "item",
        "s",
        "binding",
        "r",
        "",
        "pageId",
        "",
        "n",
        "",
        "o",
        "onSelectedChanged",
        "fromPos",
        "toPos",
        "onItemMoved",
        "attach",
        "attachItemTouchHelper",
        "getItemTouchActionState",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "setBookmarkList",
        "pageDataModel",
        "pageIndex",
        "toggleBookmark",
        "newItems",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "onNext",
        "submitInObservable",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "virtualPageList",
        "currentIndex",
        "setPageData",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "searchBeanList",
        "addPageSearchData",
        "scalePageDisplayRectF",
        "index",
        "setCurrentPageIndex",
        "resetCurrentPageIndex",
        "getCurrentPageIndex",
        "position",
        "onBindViewHolder",
        "t",
        "isItemSelected",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onViewRecycled",
        "",
        "payloads",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "positionList",
        "toggleItemsSelectedState",
        "pageIds",
        "selectStateByPageIds",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "A",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "B",
        "Z",
        "getFullscreen",
        "()Z",
        "fullscreen",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "C",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "getThumbnailSizeType",
        "()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "setThumbnailSizeType",
        "(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V",
        "thumbnailSizeType",
        "",
        "D",
        "Ljava/util/Map;",
        "bookmarkMap",
        "E",
        "I",
        "currentPageIndex",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "F",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "disposables",
        "G",
        "itemTouchActionState",
        "H",
        "dragDirs",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "itemTouchHelper",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V",
        "a",
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
        "SMAP\nDocOverviewPageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n1855#2,2:444\n1045#2:446\n1855#2,2:448\n350#2,7:450\n350#2,7:457\n766#2:464\n857#2,2:465\n1855#2,2:467\n766#2:469\n857#2,2:470\n1549#2:472\n1620#2,3:473\n1#3:447\n*S KotlinDebug\n*F\n+ 1 DocOverviewPageListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter\n*L\n173#1:444,2\n213#1:446\n233#1:448,2\n240#1:450,7\n242#1:457,7\n255#1:464\n255#1:465,2\n390#1:467,2\n406#1:469\n406#1:470,2\n407#1:472\n407#1:473,3\n*E\n"
    }
.end annotation


# instance fields
.field public final A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Z

.field public C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:I

.field public final F:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:I

.field public final H:I

.field public final I:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailSizeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 5
    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->B:Z

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    .line 8
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->F:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/16 p1, 0xf

    .line 9
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->H:I

    .line 10
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;

    invoke-direct {p3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;I)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->I:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V

    return-void
.end method

.method public static final synthetic access$resetSelectItems(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->q(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setItemTouchActionState$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->G:I

    return-void
.end method

.method public static synthetic submitInObservable$default(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$submitInObservable$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$submitInObservable$1;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->submitInObservable(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: submitInObservable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addPageSearchData(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "searchBeanList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->scalePageDisplayRectF(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->p(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$addPageSearchData$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$addPageSearchData$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->submitInObservable$default(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final attachItemTouchHelper(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->I:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->I:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public final getCurrentPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    return p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->B:Z

    return p0
.end method

.method public final getItemTouchActionState()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->G:I

    return p0
.end method

.method public final getThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-object p0
.end method

.method public isItemSelected(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$isItemSelected$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$isItemSelected$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isItemSelected(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->isItemSelected(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z

    move-result p0

    return p0
.end method

.method public final n(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->o(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_bookmark_selected:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_bookmark_unselect:I

    :goto_0
    return p0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->card:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;->showBorder(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->title:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->bookmark:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->n(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->isItemSelected(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->s(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->card:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_3

    const/16 v0, 0x50

    .line 13
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->isScrollBarDragging()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    sget p3, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_logo:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p2

    .line 20
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 21
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->override(II)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v1, p3, v3, v2, v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->toObjectCacheKey$default(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 28
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->override(II)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->toObjectCacheKey()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p2

    .line 32
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 33
    :goto_1
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "getBinding(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->r(Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pay_load_key_swipe"

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->isItemSelected(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public onItemMoved(II)V
    .locals 0

    return-void
.end method

.method public onSelectedChanged()V
    .locals 0

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final p(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez v1, :cond_3

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->merge(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final q(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$resetSelectItems$newSelectItems$1$1;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$resetSelectItems$newSelectItems$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->notifyItemsChanged(Ljava/util/List;)V

    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;)V
    .locals 0

    return-void
.end method

.method public final resetCurrentPageIndex()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    return-void
.end method

.method public final s(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$integer;->twice:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v1, v4

    if-eq v4, v3, :cond_3

    if-ne v4, v2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$integer;->twice:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    :goto_1
    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    const-string v6, "image"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->image:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v4, "getRoot(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isLandscape(Landroid/graphics/RectF;)Z

    move-result p2

    const-string v0, "imageContainer"

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v3, :cond_6

    if-ne p0, v2, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_264:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_2

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_142:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    :goto_2
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocOverviewPageBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    :goto_3
    return-void
.end method

.method public final scalePageDisplayRectF(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->note_item_overview_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->note_item_overview_width:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageByOrientation(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final selectStateByPageIds(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->toggleItemsSelectedState(Ljava/util/List;)V

    return-void
.end method

.method public final setBookmarkList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setBookmarkList$map$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setBookmarkList$map$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2, v0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setBookmarkList$indexes$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setBookmarkList$indexes$1;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->indexesOf(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setCurrentPageIndex(I)V
    .locals 7

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v4

    if-ne v0, v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_2
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->E:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v1

    if-ne v4, v1, :cond_3

    move v1, v6

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_4

    move v5, v0

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setCurrentPageIndex$1;

    invoke-direct {p1, v5}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$setCurrentPageIndex$1;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->requireRecyclerViewSafety(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final setPageData(Ljava/util/List;I)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "virtualPageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->scalePageDisplayRectF(Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->createSubmitListObservable(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$b;

    invoke-direct {v1, p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$b;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$c;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$c;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->F:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final setThumbnailSizeType(Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->C:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    return-void
.end method

.method public final submitInObservable(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->F:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->createSubmitListObservable(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$d;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$d;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->F:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final toggleBookmark(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;I)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageDataModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setPageUniqueId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->D:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-object v1
.end method

.method public final toggleItemsSelectedState(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toggle(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "pay_load_key_swipe"

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :goto_1
    return-void
.end method
