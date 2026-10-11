.class public final Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectMultiTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 6 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,144:1\n256#2,2:145\n1855#3:147\n1855#3,2:148\n1856#3:150\n1549#3:151\n1620#3,3:152\n1549#3:155\n1620#3,2:156\n766#3:158\n857#3,2:159\n1622#3:161\n2634#3:162\n1549#3:164\n1620#3,3:165\n1855#3,2:171\n1#4:163\n19#5,3:168\n22#5,4:173\n97#6:177\n*S KotlinDebug\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n*L\n61#1:145,2\n99#1:147\n100#1:148,2\n99#1:150\n105#1:151\n105#1:152,3\n106#1:155\n106#1:156,2\n106#1:158\n106#1:159,2\n106#1:161\n108#1:162\n123#1:164\n123#1:165,3\n136#1:171,2\n108#1:163\n136#1:168,3\n136#1:173,4\n35#1:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 02\u001c\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u00000\u0001:\u000201B1\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001f\u0012\u0006\u0010(\u001a\u00020%\u0012\u0012\u0008\u0002\u0010-\u001a\u000c\u0012\u0004\u0012\u00020\u00100)j\u0002`*\u00a2\u0006\u0004\u0008.\u0010/J$\u0010\u000c\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u001a\u0010\u0014\u001a\u00020\u00102\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0012J\u0006\u0010\u0015\u001a\u00020\u0010J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0012J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0016J\u0006\u0010\u001c\u001a\u00020\u0018J\u001a\u0010\u001e\u001a\u00020\u00102\u0010\u0010\u001d\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001e\u0010-\u001a\u000c\u0012\u0004\u0012\u00020\u00100)j\u0002`*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "",
        "selectNodes",
        "onlyExpandSelection",
        "submitTreeNodes",
        "",
        "getAllTagIds",
        "",
        "isAllSelected",
        "uniqueId",
        "handleSelect",
        "isNothingSelected",
        "node",
        "p",
        "",
        "r",
        "Ljava/util/List;",
        "getSelectedTagIds",
        "()Ljava/util/List;",
        "selectedTagIds",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "s",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "manageTagContext",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "t",
        "Lkotlin/jvm/functions/Function0;",
        "selectionChangedCallback",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;)V",
        "Companion",
        "ViewHolder",
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
        "SMAP\nSelectMultiTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 6 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,144:1\n256#2,2:145\n1855#3:147\n1855#3,2:148\n1856#3:150\n1549#3:151\n1620#3,3:152\n1549#3:155\n1620#3,2:156\n766#3:158\n857#3,2:159\n1622#3:161\n2634#3:162\n1549#3:164\n1620#3,3:165\n1855#3,2:171\n1#4:163\n19#5,3:168\n22#5,4:173\n97#6:177\n*S KotlinDebug\n*F\n+ 1 SelectMultiTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter\n*L\n61#1:145,2\n99#1:147\n100#1:148,2\n99#1:150\n105#1:151\n105#1:152,3\n106#1:155\n106#1:156,2\n106#1:158\n106#1:159,2\n106#1:161\n108#1:162\n123#1:164\n123#1:165,3\n136#1:171,2\n108#1:163\n136#1:168,3\n136#1:173,4\n35#1:177\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider<",
            "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$Companion;

    const-string v0, ""

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->u:Ljava/lang/String;

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$special$$inlined$delegate$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$special$$inlined$delegate$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->v:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/common/data/ManageTagContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedTagIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manageTagContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangedCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->s:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    .line 6
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->t:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$1;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getUNCLASSIFIED_TAG_ID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUNCLASSIFIED_TAG_NAME$delegate$cp()Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->v:Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    return-object v0
.end method

.method public static synthetic l(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->o(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->p(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final o(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$id"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addIfNotContains(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAllTagIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->s:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    const-string v0, "DFS"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSelectedTagIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    return-object p0
.end method

.method public final handleSelect(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$handleSelect$$inlined$notifyItemChangedSafely$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$handleSelect$$inlined$notifyItemChangedSafely$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->indexesOf(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    :try_start_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "BaseQuickAdapter is detached"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final isAllSelected()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->getAllTagIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    sget-object v1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->u:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNothingSelected()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;ILcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 11
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;",
            "I",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->tagNameText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->tagIconMask:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->expandCollapseButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v4, "expandCollapseButton"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 6
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_down:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    :goto_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->expandCollapseButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 13
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 14
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->tree_node_item_indent:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 15
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v5

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    .line 16
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->tagIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "tagIcon"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$onBindViewHolder$1;

    invoke-direct {v3, v5}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$onBindViewHolder$1;-><init>(I)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->tagIconMask:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "tagIconMask"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$onBindViewHolder$2;

    invoke-direct {v3, v5}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$onBindViewHolder$2;-><init>(I)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutMargin(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 18
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object v1

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->expandCollapseButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/sunia/HTREnginev2/cfm;

    invoke-direct {v8, p0, p3}, Lcom/sunia/HTREnginev2/cfm;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object p1

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p1, "selectButton"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/dfm;

    invoke-direct {v6, v2, p0, v0, p2}, Lcom/sunia/HTREnginev2/dfm;-><init>(ZLcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Ljava/lang/String;I)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;
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

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$ViewHolder;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;Lcom/onyx/galaxy/note/databinding/ItemSelectMultiTagBinding;)V

    return-object p2
.end method

.method public final onlyExpandSelection(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "selectNodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getPathNoteTreeNodes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->collapse()V

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v3, Lkotlin/Pair;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getPathNoteTreeNodes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->expand()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->submitTreeNodes()V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->toggleExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->submitTreeNodes()V

    return-void
.end method

.method public final submitTreeNodes()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->s:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$submitTreeNodes$visibleNodes$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter$submitTreeNodes$visibleNodes$1;

    const/4 v3, 0x0

    const-string v4, "DFS"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
