.class public final Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterDummyItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterFooterItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteAllItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteDustBinItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderRootItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteNoTagItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteUnClassfiedItemViewHolder;,
        Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterSearchItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,792:1\n350#2,7:793\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n*L\n780#1:793,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 *2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\r*+,-./0123456B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001f\u00a2\u0006\u0004\u0008(\u0010)J\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0008\u0010\u000b\u001a\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0002J\u0008\u0010\u000f\u001a\u00020\u0003H\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0002J\u0008\u0010\u0014\u001a\u00020\u0003H\u0002J\u0008\u0010\u0015\u001a\u00020\u0003H\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0002J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010 R\u0018\u0010#\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\"R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010$R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010&\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "",
        "cancelLoadUserAvatar",
        "",
        "unreadCount",
        "updateUnreadCount",
        "",
        "uniqueId",
        "updateSelectId",
        "q",
        "A",
        "o",
        "n",
        "x",
        "y",
        "t",
        "u",
        "v",
        "s",
        "w",
        "r",
        "z",
        "p",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;",
        "folderShadowView",
        "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;",
        "Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;",
        "tagShadowView",
        "Ljava/lang/String;",
        "selectId",
        "I",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;)V",
        "Companion",
        "FilterDummyItemViewHolder",
        "FilterFooterItemViewHolder",
        "FilterHeaderItemViewHolder",
        "FilterNoteAllItemViewHolder",
        "FilterNoteDustBinItemViewHolder",
        "FilterNoteFolderItemViewHolder",
        "FilterNoteFolderRootItemViewHolder",
        "FilterNoteNoTagItemViewHolder",
        "FilterNoteTagItemViewHolder",
        "FilterNoteTagRootItemViewHolder",
        "FilterNoteUnClassfiedItemViewHolder",
        "FilterSearchItemViewHolder",
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
        "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,792:1\n350#2,7:793\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter\n*L\n780#1:793,7\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "FilterAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final t:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:I

.field public y:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderShadowView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagShadowView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->u:Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->v:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->x:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->q()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;ILjava/util/List;)I
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

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
    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$mapItemType$1$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/util/List;I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFolderShadowView$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->u:Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;

    return-object p0
.end method

.method public static final synthetic access$getSelectId$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTagShadowView$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->v:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    return-object p0
.end method

.method public static final synthetic access$getUnreadCount$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->x:I

    return p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public static final synthetic access$setDisposable$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->y:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->B(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;ILjava/util/List;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/alg;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/alg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final cancelLoadUserAvatar()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->y:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addDummyItem$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addDummyItem$1;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final o()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addFooterItem$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addFooterItem$1;-><init>()V

    const/16 v1, 0x61

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final p()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/16 v1, 0x62

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final q()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->v()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->u()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->t()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->y()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->x()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->A()V

    return-void
.end method

.method public final r()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteAllItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteAllItem$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final s()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteDustBin$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteDustBin$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final t()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final u()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolderRoot$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolderRoot$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final updateSelectId(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->w:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateUnreadCount(I)V
    .locals 4

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->x:I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v2

    const/16 v3, 0x62

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteSetNoTag$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteSetNoTag$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final w()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteSetUnClassfied$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteSetUnClassfied$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final x()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagItem$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final y()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final z()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addSearchItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addSearchItem$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method
