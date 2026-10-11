.class public Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocExcerptListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,501:1\n350#2,7:502\n1855#2,2:509\n256#3,2:511\n372#4,7:513\n*S KotlinDebug\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n*L\n206#1:502,7\n226#1:509,2\n310#1:511,2\n374#1:513,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010Q\u001a\u00020M\u0012\u0006\u0010V\u001a\u00020&\u00a2\u0006\u0004\u0008}\u0010~J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J \u0010\u0019\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0010\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020#H\u0016J\u000e\u0010(\u001a\u00020\t2\u0006\u0010\'\u001a\u00020&J\u0014\u0010+\u001a\u00020\t2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020)J\u001c\u0010/\u001a\u00020\t2\u0006\u0010-\u001a\u00020,2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020.0)J\u000e\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020\u0002J\u0006\u00102\u001a\u00020\tJ\u0006\u00103\u001a\u00020&J\u0006\u00104\u001a\u00020\tJ\u0014\u00106\u001a\u00020\t2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002050)J\u000e\u00108\u001a\u00020\t2\u0006\u00107\u001a\u00020\u0007J\u000e\u00109\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010:\u001a\u00020\tJ(\u0010=\u001a\u00020\t2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010<\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u0007H\u0014J\u0018\u0010E\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0018\u0010F\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0018\u0010G\u001a\u00020&2\u0006\u0010D\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0007H\u0014J\u0010\u0010H\u001a\u00020\t2\u0006\u0010$\u001a\u00020#H\u0016J\u000e\u0010K\u001a\u00020\t2\u0006\u0010J\u001a\u00020IJ\u0006\u0010L\u001a\u00020\tR\u0017\u0010Q\u001a\u00020M8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010N\u001a\u0004\u0008O\u0010PR\u0017\u0010V\u001a\u00020&8\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\"\u0010[\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020X0W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR(\u0010\\\u001a\u0014\u0012\u0004\u0012\u00020,\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0)0W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010ZR\"\u0010^\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u0002050W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010ZR\u0016\u0010`\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010\u0012R\u0016\u0010b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010\u0012R\u0016\u0010d\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010SR\u001b\u0010h\u001a\u00020e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010f\u001a\u0004\u0008Y\u0010gR\u0018\u0010k\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010m\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010nR\u0014\u0010q\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008p\u0010\u0012R\u0016\u0010s\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010SR\"\u0010y\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u0014\u0010|\u001a\u00020z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010{\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;",
        "Landroid/view/View;",
        "view",
        "",
        "pos",
        "",
        "R",
        "Q",
        "quitEditMode",
        "binding",
        "P",
        "Landroid/widget/TextView;",
        "quoteCount",
        "item",
        "I",
        "Landroid/widget/ImageView;",
        "imageView",
        "model",
        "L",
        "textView",
        "K",
        "D",
        "Landroid/widget/EditText;",
        "edittext",
        "A",
        "z",
        "editText",
        "O",
        "fromPos",
        "toPos",
        "onItemMoved",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToRecyclerView",
        "",
        "show",
        "setShowQuoteCount",
        "",
        "list",
        "setDataList",
        "",
        "excerptId",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "setExcerptCollection",
        "excerptInfoBean",
        "updateExcerpt",
        "resetItemsState",
        "isItemsDirty",
        "makeItemsDirty",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "setQuoteNote",
        "index",
        "selectIndex",
        "enterEditMode",
        "quitEditAndSave",
        "holder",
        "position",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "v",
        "onItemClick",
        "onItemChildClick",
        "onItemChildLongClick",
        "onDetachedFromRecyclerView",
        "Landroid/graphics/Rect;",
        "areaRect",
        "setListAreaRect",
        "commitTitleEdit",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "B",
        "Z",
        "getFullscreen",
        "()Z",
        "fullscreen",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;",
        "C",
        "Ljava/util/Map;",
        "excerptDataMap",
        "excerptCollectionMap",
        "E",
        "excerptQuoteNoteMap",
        "F",
        "currentIndex",
        "G",
        "editingIndex",
        "H",
        "showQuoteCount",
        "Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;",
        "windowInputManager",
        "J",
        "Landroid/widget/EditText;",
        "currentEditText",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "currentModel",
        "Landroid/graphics/Rect;",
        "listAreaRect",
        "M",
        "dragDirs",
        "N",
        "itemsDirty",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "keyword",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "itemTouchHelper",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V",
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
        "SMAP\nDocExcerptListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,501:1\n350#2,7:502\n1855#2,2:509\n256#3,2:511\n372#4,7:513\n*S KotlinDebug\n*F\n+ 1 DocExcerptListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter\n*L\n206#1:502,7\n226#1:509,2\n310#1:511,2\n374#1:513,7\n*E\n"
    }
.end annotation


# instance fields
.field public final A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Z

.field public C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F:I

.field public G:I

.field public H:Z

.field public final I:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public J:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public K:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final M:I

.field public N:Z

.field public O:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final P:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v1, "editorBundle"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->C:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->D:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->E:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->F:I

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$windowInputManager$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$windowInputManager$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->I:Lkotlin/Lazy;

    const/16 v0, 0xf

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->M:I

    const-string v1, ""

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->O:Ljava/lang/String;

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$itemTouchHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$itemTouchHelper$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;I)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->P:Landroidx/recyclerview/widget/ItemTouchHelper;

    sget v1, Lcom/onyx/galaxy/note/R$id;->more_settings:I

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/i7f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/i7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    sget v1, Lcom/onyx/galaxy/note/R$id;->zoom_view:I

    new-instance v4, Lcom/sunia/HTREnginev2/j7f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/j7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/view/View;Z)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditMode()V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->O(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    :goto_1
    return-void
.end method

.method public static final F(Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Landroid/view/View;)V
    .locals 0

    const-string p1, "$editText"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p4, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditMode()V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/g7f;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/g7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final H(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final J(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Landroid/view/View;)V
    .locals 3

    const-string v0, "$collectionList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$initQuoteCountView$1$noteModelList$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$initQuoteCountView$1$noteModelList$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v1, v2, p1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showDynamicPositionPopView(Landroid/view/View;)V

    return-void
.end method

.method public static final M(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "$recyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->P:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final N(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V
    .locals 0

    const-string p1, "$holder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static final synthetic access$getExcerptQuoteNoteMap$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->E:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->y(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->M(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->x(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->N(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->J(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->H(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->E(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic v(Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->F(Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->centerSettingButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    if-eqz v0, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->Q(Landroid/view/View;I)V

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->R(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setNote(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setCommentUpdateByUser(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptEvent;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditMode()V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/h7f;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/h7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final C()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->I:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    return-object p0
.end method

.method public final D(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 5

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEditContainer:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->ivClear:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-ne v1, p2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->countText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-ne v1, p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-static {v0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->z(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;)V

    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v0, "titleEdit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v3, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->excerpt_desc_input_limit_count:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/sunia/HTREnginev2/k7f;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/k7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->ivClear:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/l7f;

    invoke-direct {v1, p2}, Lcom/sunia/HTREnginev2/l7f;-><init>(Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/m7f;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/m7f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEditContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final I(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->D:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->H:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->quoted_count_format:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sunia/HTREnginev2/n7f;

    invoke-direct {v0, p2, p0}, Lcom/sunia/HTREnginev2/n7f;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final K(Landroid/widget/TextView;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 10

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getNote()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    sget p3, Lcom/onyx/galaxy/note/R$string;->no_comments:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    invoke-static {p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/SpanUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SpanUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getNote()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->O:Ljava/lang/String;

    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-static {p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/base/utils/SpanUtils;->highLightKeyword$default(Lcom/onyx/android/sdk/base/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-eq p0, p2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final L(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->isScrollBarDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_logo:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->C:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getImgId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v2, Lcom/onyx/galaxy/note/editor/data/ExcerptDataModel;

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getImgId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final O(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->J:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->K:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->L:Landroid/graphics/Rect;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final P(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;)V
    .locals 3

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->exceptContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->title:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "title"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$setFullscreenLayout$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$setFullscreenLayout$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->imageContainer:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v0, "imageContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$setFullscreenLayout$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$setFullscreenLayout$2;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->exceptContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->selector_doc_overview_fullscreen:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public final Q(Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Z)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$showActionPopup$1$1;

    invoke-direct {v0, p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$showActionPopup$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;I)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public final R(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadExcerptBitmapAction;->setExcerptId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$a;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$a;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final commitTitleEdit()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->J:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->K:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->K:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    :cond_0
    return-void
.end method

.method public final enterEditMode(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->C()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->enterAdjustResizeSoftInput()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    return p0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->O:Ljava/lang/String;

    return-object p0
.end method

.method public final isItemsDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->N:Z

    return p0
.end method

.method public final makeItemsDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->N:Z

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->P:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Lcom/sunia/HTREnginev2/e7f;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/e7f;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {v3, p3}, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2

    sget v4, Lcom/onyx/galaxy/note/R$drawable;->bg_stroke_primary:I

    goto :goto_1

    :cond_2
    sget v4, Lcom/onyx/galaxy/note/R$drawable;->selector_doc_overview_item_bg:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->F:I

    if-ne v4, p2, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->centerSettingButtonWrapper:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->B:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isItemSelected(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->centerSettingButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/f7f;

    invoke-direct {v3, p1}, Lcom/sunia/HTREnginev2/f7f;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->tvNotePageIndex:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->tvNotePageIndex:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvNotePageIndex"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    .line 16
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->quoteCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "quoteCount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->I(Landroid/widget/TextView;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    .line 18
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->title:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->K(Landroid/widget/TextView;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    .line 19
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "getBinding(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {p0, v0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->D(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;ILcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    .line 20
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->P(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;)V

    .line 21
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->image:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "image"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->L(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;",
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
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditAndSave()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->P:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemChildClick(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onItemChildClick(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditAndSave()V

    return-void
.end method

.method public onItemChildLongClick(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditAndSave()V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onItemChildLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onItemClick(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditAndSave()V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->N:Z

    return-void
.end method

.method public final quitEditAndSave()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->A(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->quitEditMode()V

    return-void
.end method

.method public final quitEditMode()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->G:I

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->C()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->backToPreviousSoftInput()V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final resetItemsState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->N:Z

    return-void
.end method

.method public final selectIndex(I)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->F:I

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->F:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final setExcerptCollection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "excerptId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->D:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->O:Ljava/lang/String;

    return-void
.end method

.method public final setListAreaRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "areaRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->L:Landroid/graphics/Rect;

    return-void
.end method

.method public final setQuoteNote(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->E:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setShowQuoteCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->H:Z

    return-void
.end method

.method public final updateExcerpt(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "excerptInfoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->set(ILjava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->notifyItemChangedSafety(Lcom/chad/library/adapter4/BaseQuickAdapter;I)V

    :cond_2
    return-void
.end method

.method public final z(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;)V
    .locals 1

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$bindCharLengthListener$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter$bindCharLengthListener$1;-><init>(Lcom/onyx/galaxy/note/databinding/ItemDocExcerptBinding;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
