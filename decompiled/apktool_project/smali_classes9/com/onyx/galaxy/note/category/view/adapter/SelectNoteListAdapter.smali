.class public final Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$GridNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$GridNotePortraitItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$LinearNoteLandItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$LinearNotePortraitItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n1603#2,9:268\n1855#2:277\n1856#2:279\n1612#2:280\n1549#2:281\n1620#2,3:282\n1#3:278\n277#4,2:285\n*S KotlinDebug\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n*L\n214#1:268,9\n214#1:277\n214#1:279\n214#1:280\n216#1:281\n216#1:282,3\n214#1:278\n237#1:285,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0005,-./0B\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0006\u0010\u0008\u001a\u00020\u0007J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\"\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0002J\u001e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0002RB\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001d0\u001c8\u0006@GX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010&R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "onViewRecycled",
        "",
        "toggleDisplayType",
        "o",
        "Landroid/view/View;",
        "itemView",
        "position",
        "item",
        "s",
        "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
        "llTags",
        "",
        "",
        "tagIdList",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "t",
        "noteModelBean",
        "u",
        "displayType",
        "setDisplayType",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "value",
        "Ljava/util/Map;",
        "getTagByIdMap",
        "()Ljava/util/Map;",
        "setTagByIdMap",
        "(Ljava/util/Map;)V",
        "tagByIdMap",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "quickAdapterHelper",
        "v",
        "I",
        "<init>",
        "()V",
        "Companion",
        "GridNoteLandItemViewHolder",
        "GridNotePortraitItemViewHolder",
        "LinearNoteLandItemViewHolder",
        "LinearNotePortraitItemViewHolder",
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
        "SMAP\nSelectNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n1603#2,9:268\n1855#2:277\n1856#2:279\n1612#2:280\n1549#2:281\n1620#2,3:282\n1#3:278\n277#4,2:285\n*S KotlinDebug\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n*L\n214#1:268,9\n214#1:277\n214#1:279\n214#1:280\n216#1:281\n216#1:282,3\n214#1:278\n237#1:285,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_GRID_DISPLAY:I = 0x1

.field public static final TYPE_GRID_NOTE_LAND:I = 0x2

.field public static final TYPE_GRID_NOTE_PORTRAIT:I = 0x1

.field public static final TYPE_LINEAR_NOTE_LAND:I = 0x5

.field public static final TYPE_LINEAR_NOTE_PORTRAIT:I = 0x4

.field public static final TYPE_LIST_DISPLAY:I = 0x2


# instance fields
.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/chad/library/adapter4/QuickAdapterHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->t:Ljava/util/Map;

    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->o()V

    return-void
.end method

.method public static final synthetic access$bindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->s(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->p(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->r(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;ILjava/util/List;)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    :goto_0
    return p2
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 1

    const-string v0, "$llTags"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$nameColorPairList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;->initTags(Ljava/util/List;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final getTagByIdMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->t:Ljava/util/Map;

    return-object p0
.end method

.method public final o()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$2;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$3;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$3;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$4;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$addItemTypes$4;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    new-instance v0, Lcom/sunia/HTREnginev2/kfm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kfm;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final q(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->t:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    new-instance p2, Lcom/sunia/HTREnginev2/jfm;

    invoke-direct {p2, p1, p0}, Lcom/sunia/HTREnginev2/jfm;-><init>(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    sget p2, Lcom/onyx/galaxy/note/R$id;->ll_tags:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->q(Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->u(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDisplayType(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setTagByIdMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->t:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_3()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toggleDisplayType()I
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->setDisplayType(I)V

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;->v:I

    return p0
.end method

.method public final u(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method
