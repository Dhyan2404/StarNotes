.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$a;,
        Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaperAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n1855#2,2:157\n1864#2,3:163\n256#3,2:159\n256#3,2:161\n*S KotlinDebug\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n*L\n43#1:157,2\n112#1:163,3\n63#1:159,2\n99#1:161,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002%&B\u0011\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008$\u0010\"J\u0008\u0010\u0005\u001a\u00020\u0004H\u0007J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0014J0\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008H\u0014J\"\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0006H\u0014J\u001a\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002R$\u0010#\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;",
        "",
        "notifySelectChange",
        "",
        "position",
        "",
        "list",
        "getItemViewType",
        "holder",
        "item",
        "",
        "payloads",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "r",
        "q",
        "p",
        "",
        "n",
        "o",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "t",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "getTemplateViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "setTemplateViewModel",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
        "templateViewModel",
        "<init>",
        "a",
        "TemplateHolder",
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
        "SMAP\nPaperAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n1855#2,2:157\n1864#2,3:163\n256#3,2:159\n256#3,2:161\n*S KotlinDebug\n*F\n+ 1 PaperAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter\n*L\n43#1:157,2\n112#1:163,3\n63#1:159,2\n99#1:161,2\n*E\n"
    }
.end annotation


# instance fields
.field public t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-void
.end method


# virtual methods
.method public getItemViewType(ILjava/util/List;)I
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)I"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result p0

    return p0
.end method

.method public final getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final notifySelectChange()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final o(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->setThumbTag(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;ILcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;ILcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;ILcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitleResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getLocalTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    .line 11
    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getIvSelected()Landroid/widget/ImageView;

    move-result-object p2

    .line 14
    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 15
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getThumbTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 17
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    .line 18
    :cond_3
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->setThumbTag(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;ILcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
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
            "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;",
            "I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "payloads"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p4, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "select"

    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->q(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    :cond_2
    const-string v0, "change_select_colors"

    .line 7
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->p(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;
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

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;->isPortrait(I)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 4
    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_template_normal_vertical:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 6
    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_template_normal_horizontal:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 7
    :goto_0
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final p(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getFillColor()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getStrokeColor()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setStrokeColor(I)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getColorTransformMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setColorTransformMode(I)V

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public final q(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getIvSelected()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    :cond_1
    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setTemplateArgs(Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;)V

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter$TemplateHolder;->getTemplateThumbnailView()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->loadPaperTemplateThumbnail(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public final setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-void
.end method
