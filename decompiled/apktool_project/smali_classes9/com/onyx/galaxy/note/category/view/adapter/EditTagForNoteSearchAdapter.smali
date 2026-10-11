.class public final Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001bB\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ$\u0010\n\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J&\u0010\u000f\u001a\u00020\u000e2\n\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0003R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;",
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
        "m",
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "r",
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "editTagForNoteContext",
        "Lkotlin/Function0;",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "onUpdateSelectId",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function0;)V",
        "VH",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final r:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
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
            "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editTagForNoteContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpdateSelectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->r:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->s:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V

    return-void
.end method


# virtual methods
.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->r:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->s:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;ILcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;ILcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;->ivNoteTreeBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->r:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;->cbSel:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 8
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/sunia/HTREnginev2/bmf;

    invoke-direct {p2, p0, p3}, Lcom/sunia/HTREnginev2/bmf;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;
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
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteSearchBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
