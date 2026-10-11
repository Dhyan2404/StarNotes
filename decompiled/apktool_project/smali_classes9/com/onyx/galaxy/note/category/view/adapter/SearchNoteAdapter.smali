.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$DividerVH;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$TitleVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,567:1\n1#2:568\n766#3:569\n857#3,2:570\n1549#3:572\n1620#3,3:573\n378#3,7:576\n350#3,7:584\n1002#3,2:591\n1002#3,2:593\n766#3:596\n857#3,2:597\n350#3,7:600\n1002#3,2:607\n1002#3,2:609\n766#3:612\n857#3,2:613\n766#3:615\n857#3,2:616\n378#3,7:618\n350#3,7:625\n378#3,7:632\n215#4:583\n216#4:595\n215#4:599\n216#4:611\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n*L\n398#1:569\n398#1:570,2\n409#1:572\n409#1:573,3\n422#1:576,7\n440#1:584,7\n445#1:591,2\n448#1:593,2\n456#1:596\n456#1:597,2\n476#1:600,7\n481#1:607,2\n484#1:609,2\n492#1:612\n492#1:613,2\n511#1:615\n511#1:616,2\n517#1:618,7\n540#1:625,7\n544#1:632,7\n435#1:583\n435#1:595\n472#1:599\n472#1:611\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 92\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00079:;<=>?B\u0007\u00a2\u0006\u0004\u00087\u00108J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0002J\u0008\u0010\u0014\u001a\u00020\u0003H\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010\"\u001a\u00020\u0003H\u0002J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\'H\u0016J\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020)2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010+\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010,\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010-\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015R\"\u00103\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u00105\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "",
        "v",
        "u",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "noteSearchBean",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "o",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;",
        "holder",
        "",
        "title",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "model",
        "A",
        "w",
        "s",
        "",
        "resultList",
        "D",
        "C",
        "",
        "type",
        "y",
        "newEntity",
        "x",
        "sectionTitleType",
        "q",
        "z",
        "p",
        "B",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onDetachedFromRecyclerView",
        "onAttachedToRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onViewRecycled",
        "",
        "toTitleEntities",
        "addTitleEntities",
        "addTextEntities",
        "addHWREntities",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "keyword",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;",
        "editorBundleCache",
        "<init>",
        "()V",
        "Companion",
        "DividerVH",
        "SearchNoteEntity",
        "SectionHWRVH",
        "SectionTextVH",
        "SectionTitleVH",
        "TitleVH",
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
        "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,567:1\n1#2:568\n766#3:569\n857#3,2:570\n1549#3:572\n1620#3,3:573\n378#3,7:576\n350#3,7:584\n1002#3,2:591\n1002#3,2:593\n766#3:596\n857#3,2:597\n350#3,7:600\n1002#3,2:607\n1002#3,2:609\n766#3:612\n857#3,2:613\n766#3:615\n857#3,2:616\n378#3,7:618\n350#3,7:625\n378#3,7:632\n215#4:583\n216#4:595\n215#4:599\n216#4:611\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n*L\n398#1:569\n398#1:570,2\n409#1:572\n409#1:573,3\n422#1:576,7\n440#1:584,7\n445#1:591,2\n448#1:593,2\n456#1:596\n456#1:597,2\n476#1:600,7\n481#1:607,2\n484#1:609,2\n492#1:612\n492#1:613,2\n511#1:615\n511#1:616,2\n517#1:618,7\n540#1:625,7\n544#1:632,7\n435#1:583\n435#1:595\n472#1:599\n472#1:611\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ITEM_DIVIDER:I = 0x1

.field public static final ITEM_SECTION_HANDWRITE:I = 0x3

.field public static final ITEM_SECTION_TEXT:I = 0x4

.field public static final ITEM_SECTION_TITLE:I = 0x2

.field public static final ITEM_TITLE:I


# instance fields
.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->v()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->u()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t()V

    new-instance v0, Lcom/sunia/HTREnginev2/z6m;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z6m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public static final synthetic access$getEditorBundleCache$p(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    return-object p0
.end method

.method public static final synthetic access$getSearchType(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->o(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$highLightKeyword(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadNoteCover(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->A(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static synthetic m(ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->n(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final n(ILjava/util/List;)I
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 6

    new-instance p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v0, "getRoot(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$a;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$a;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;)V

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final B()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->getRecyclerViewSafely(Lcom/chad/library/adapter4/BaseQuickAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$resizeEditorCacheSize$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final C(Ljava/util/List;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v1, 0x3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x17c

    const/4 v11, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final D(Ljava/util/List;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v1, 0x4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1bc

    const/4 v11, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final addHWREntities(Ljava/util/List;)V
    .locals 10
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

    const-string v0, "resultList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$1;

    sget-object v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$2;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->C(Ljava/util/List;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->y(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v9

    if-ne v9, v2, :cond_2

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v7

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    :goto_4
    if-gez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    :goto_5
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_6

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    const-string v0, "pay_load_key_update_hwr_list"

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_8

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$2;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$2;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->x(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final addTextEntities(Ljava/util/List;)V
    .locals 10
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

    const-string v0, "resultList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$1;

    sget-object v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$2;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->D(Ljava/util/List;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->y(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v9

    if-ne v9, v2, :cond_2

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v7

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    :goto_4
    if-gez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    :goto_5
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getTextList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v8, :cond_6

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    const-string v0, "pay_load_key_update_text_list"

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getTextList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getTextList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_8

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$2;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$2;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->x(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final addTitleEntities(Ljava/util/List;)V
    .locals 4
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

    const-string v0, "resultList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->toTitleEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    add-int/2addr v0, v2

    sget-object v1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTitleEntities$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$addTitleEntities$1;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addAll(ILjava/util/Collection;)V

    return-void
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->TEXT:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->HANDWRITING:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    :goto_0
    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->B()V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

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

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getUniqueIdTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final p(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_search_type_title:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$string;->note_search_type_text:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$string;->handwriting:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$string;->note_search_type_title:I

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    return-object p0
.end method

.method public final q(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getSectionTitleType()I

    move-result v2

    if-ne v2, p1, :cond_0

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
    return v1
.end method

.method public final r(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/SpanUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SpanUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t:Ljava/lang/String;

    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/utils/SpanUtils;->highLightKeyword$default(Lcom/onyx/android/sdk/base/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final s()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initDividerVH$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initDividerVH$1;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t:Ljava/lang/String;

    return-void
.end method

.method public final t()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final toTitleEntities(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "resultList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$string;->note_search_type_title:I

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/16 v13, 0xfa

    const/4 v14, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    new-instance v15, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fc

    const/4 v3, 0x0

    move-object v4, v15

    move-object/from16 p0, v1

    move-object v1, v15

    move-object v15, v3

    invoke-direct/range {v4 .. v15}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_2

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public final u()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final v()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final w()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initTitleVH$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initTitleVH$1;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final x(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->q(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->z(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final y(I)V
    .locals 14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getSectionTitleType()I

    move-result v7

    if-ne v7, p1, :cond_2

    move v5, v6

    :cond_2
    if-eqz v5, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getSectionTitleType()I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, v3, :cond_7

    move v2, v6

    goto :goto_2

    :cond_7
    move v2, v5

    :goto_2
    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    :goto_3
    if-gez v0, :cond_9

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    :goto_4
    move v0, v5

    new-instance v13, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xfa

    const/4 v12, 0x0

    move-object v1, v13

    move v10, p1

    invoke-direct/range {v1 .. v12}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;-><init>(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0, v13}, Lcom/chad/library/adapter4/BaseQuickAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final z(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
