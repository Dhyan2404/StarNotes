.class public final Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        ">;>;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1#2:199\n350#3,7:200\n350#3,7:207\n*S KotlinDebug\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n*L\n51#1:200,7\n60#1:207,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0005:\u0001?B\u000f\u0012\u0006\u00100\u001a\u00020+\u00a2\u0006\u0004\u0008=\u0010>J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000e\u001a\u00020\u0008J\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0016J(\u0010\u001e\u001a\u00020\u00082\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001c\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\nH\u0014J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00020\'2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u0010)\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010*\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00022\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002R\u0017\u00100\u001a\u00020+8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R$\u0010<\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00104\u001a\u0004\u0008:\u00106\"\u0004\u0008;\u00108\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "",
        "setPageInfo",
        "",
        "layerId",
        "selectLayer",
        "updateCurrentLayer",
        "scrollToCurrentLayer",
        "getPageInfo",
        "layerInfo",
        "",
        "getLayerName",
        "",
        "isLayersChanged",
        "isPageLayerChanged",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "viewport",
        "isViewportChanged",
        "boxInfo",
        "isCurrentBoxInfoChanged",
        "holder",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "getDragItem",
        "m",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "u",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "v",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "w",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getViewport",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setViewport",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "x",
        "getCurrentBoxInfo",
        "setCurrentBoxInfo",
        "currentBoxInfo",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "ItemViewHolder",
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
        "SMAP\nLayerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1#2:199\n350#3,7:200\n350#3,7:207\n*S KotlinDebug\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n*L\n51#1:200,7\n60#1:207,7\n*E\n"
    }
.end annotation


# instance fields
.field public final u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method


# virtual methods
.method public final getCurrentBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->x:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    return-object p1
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getLayerName(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "layerInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->default_layer_name_format:I

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isCurrentBoxInfoChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->x:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isLayersChanged(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPageLayerChanged(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isViewportChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportDrawPageLayer()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawNotePageLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawViewportLayerAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/DrawViewportLayerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$b;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$b;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final m(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    if-gez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getLayerName(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->lock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->show:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->more:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isItemSelected(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->lock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 10
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_layer_lock:I

    goto :goto_0

    .line 12
    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_layer_unlock:I

    .line 13
    :goto_0
    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->show:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 15
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_layer_show:I

    goto :goto_1

    .line 17
    :cond_2
    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_layer_hidden:I

    .line 18
    :goto_1
    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 19
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 20
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->image:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->l(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    .line 22
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 6
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
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final scrollToCurrentLayer()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->m(I)V

    return-void
.end method

.method public final selectLayer(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setCurrentBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->x:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->w:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final updateCurrentLayer()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->v:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_0

    const/4 v4, 0x1

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
    const/4 v3, -0x1

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
