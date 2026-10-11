.class public final Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;
.super Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocTocAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,293:1\n1#2:294\n1747#3,3:295\n372#4,7:298\n*S KotlinDebug\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n*L\n239#1:295,3\n270#1:298,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\r\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0014\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001ZB?\u0012\u0006\u0010<\u001a\u000209\u0012\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0=\u0012\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00020C\u0012\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020>0G\u00a2\u0006\u0004\u0008X\u0010YJ \u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\u000e\u001a\u00020\t2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u001e\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001c\u0010\u0012\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0002H\u0002J\u000e\u0010\u0016\u001a\u00020\u0007*\u0004\u0018\u00010\u0002H\u0002J,\u0010\u0019\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000f2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0014J$\u0010\u001f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u000fH\u0014J\u0016\u0010!\u001a\u00020\u00072\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0016J\u0016\u0010\"\u001a\u00020\u00072\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0016J\u001e\u0010$\u001a\u00020\t2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010#\u001a\u00020\u0007H\u0016J*\u0010)\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016J*\u0010*\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016J\u0010\u0010+\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\u000e\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u0007J\u000e\u0010/\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0007J\u0006\u00100\u001a\u00020\u0007J\u0014\u00101\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bJ\u001c\u00102\u001a\u00020\t2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007J\u0006\u00104\u001a\u00020\u000fJ\u0012\u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b05J\u0006\u00107\u001a\u00020\u0007J\u0006\u00108\u001a\u00020\tR\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R \u0010B\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001a\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u001a\u0010J\u001a\u0008\u0012\u0004\u0012\u00020>0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR&\u0010L\u001a\u0014\u0012\u0004\u0012\u00020>\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010AR\u0016\u0010,\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010NR\"\u0010W\u001a\u00020>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006["
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;",
        "Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;",
        "binding",
        "model",
        "",
        "fullscreen",
        "",
        "H",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "node",
        "select",
        "B",
        "",
        "C",
        "holder",
        "I",
        "itemBinding",
        "tocModel",
        "E",
        "D",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "tree",
        "isExpandTreeNode",
        "isTreeItemExpanded",
        "expanded",
        "setTreeItemExpand",
        "animate",
        "notify",
        "",
        "parentPayload",
        "collapse",
        "expand",
        "removeAt",
        "selectable",
        "setSelectable",
        "enable",
        "enableSelectionMode",
        "isSelectionMode",
        "isItemSelected",
        "selectItem",
        "selectAll",
        "getSelectedCount",
        "",
        "getSelectedItems",
        "isAllSelected",
        "clearSelected",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "t",
        "Ljava/util/Map;",
        "pageDataMap",
        "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;",
        "u",
        "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;",
        "onDragListener",
        "",
        "v",
        "Ljava/util/Set;",
        "titleList",
        "w",
        "selectionMap",
        "x",
        "Z",
        "y",
        "selectionMode",
        "z",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "keyword",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;Ljava/util/Set;)V",
        "TocItemViewHolder",
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
        "SMAP\nDocTocAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,293:1\n1#2:294\n1747#3,3:295\n372#4,7:298\n*S KotlinDebug\n*F\n+ 1 DocTocAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter\n*L\n239#1:295,3\n270#1:298,7\n*E\n"
    }
.end annotation


# instance fields
.field public final s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;Ljava/util/Set;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;",
            "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageDataMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->t:Ljava/util/Map;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->u:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->v:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->z:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->G(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/base/data/Tree;Landroid/view/View;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "getContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->v:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/DocTocActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/base/data/Tree;Ljava/util/Set;Z)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public static final G(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getSelectionMap$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/base/data/Tree;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->F(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/base/data/Tree;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/onyx/android/sdk/base/data/Tree;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_2

    move v2, v3

    :cond_3
    :goto_0
    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->B(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/base/data/Tree;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;Z)I"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    if-eqz p2, :cond_0

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    goto :goto_0

    :cond_0
    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_10:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    mul-int/2addr p1, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public final D(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getExpandState()Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getExpandState()Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final E(Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->t:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2, p0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageByOrientation(Landroid/graphics/RectF;FF)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->image:Landroid/widget/ImageView;

    const-string v0, "image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p0, v0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->image:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final H(Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Z)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_72:I

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {p3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p3

    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v2, "contentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "moreSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p3, v1, p3, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;IIII)V

    iget-object p3, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->dividerView:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->E(Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    return-void
.end method

.method public final I(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "getBinding(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->isSelectionMode()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final clearSelected()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public collapse(IZZLjava/lang/Object;)I
    .locals 7
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$collapse$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$collapse$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;)V

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->collapseInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method public final enableSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public expand(IZZLjava/lang/Object;)I
    .locals 7
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$expand$1;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$expand$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;)V

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->expandInternal$note_overseasRelease(IZZZLjava/lang/Object;Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->z:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final getSelectedItems()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final isAllSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpandTreeNode(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "tree"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isItemSelected(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTreeItemExpanded(Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->D(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;ILcom/onyx/android/sdk/base/data/Tree;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;ILcom/onyx/android/sdk/base/data/Tree;)V
    .locals 9
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;",
            "I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "getBinding(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;

    .line 4
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    const-string v2, "getRoot(...)"

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->scroll_bar_padding:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_48:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v2, Lcom/sunia/HTREnginev2/g9f;

    invoke-direct {v2, p0, p3}, Lcom/sunia/HTREnginev2/g9f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->imageContainer:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    .line 10
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 11
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    invoke-virtual {p0, p3, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->C(Lcom/onyx/android/sdk/base/data/Tree;Z)I

    move-result v1

    .line 12
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_86:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 13
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->ivIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v4, "ivIndicator"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$onBindViewHolder$2;

    invoke-direct {v4, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$onBindViewHolder$2;-><init>(I)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 14
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->ivIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->D(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 15
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->dividerView:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v3, "dividerView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->dividerView:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4, v4, v2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;IIII)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->dividerView:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v4, v4, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setMargins(Landroid/view/View;IIII)V

    .line 18
    :goto_2
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->ivIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Tree;->hasChildren()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 19
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->imageContainer:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 20
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;->title:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/SpanUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SpanUtils;

    .line 21
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->z:Ljava/lang/String;

    .line 23
    sget v5, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-static {v5}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 24
    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/base/utils/SpanUtils;->highLightKeyword$default(Lcom/onyx/android/sdk/base/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->I(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    .line 26
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    invoke-virtual {p0, v0, p2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->H(Lcom/onyx/galaxy/note/databinding/ItemDocTocBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Z)V

    .line 27
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->u:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->s:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p2, p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$TocItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V

    return-object p2
.end method

.method public removeAt(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/view/BaseNodeAdapter;->removeAt(I)V

    return-void
.end method

.method public final selectAll(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$selectAll$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter$selectAll$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;Z)V

    new-instance p0, Lcom/sunia/HTREnginev2/f9f;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/f9f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final selectItem(Lcom/onyx/android/sdk/base/data/Tree;Z)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->w:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Tree;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p0, v2, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->B(Lcom/onyx/android/sdk/base/data/Tree;Z)V

    :cond_5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    if-le v1, v3, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_3
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->z:Ljava/lang/String;

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;->x:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTreeItemExpand(Lcom/onyx/android/sdk/base/data/Tree;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "tree"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setExpandState(Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method
