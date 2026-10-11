.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0012\u00060\u0004R\u00020\u00000\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0005J,\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014J$\u0010\u000c\u001a\u00060\u0004R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "",
        "item",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "VH",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;
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
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;",
            "I",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchTagBinding;

    move-result-object p0

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/ItemSearchTagBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemSearchTagBinding;->ivNoteTreeBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;
    .locals 6
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
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSearchTagBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
