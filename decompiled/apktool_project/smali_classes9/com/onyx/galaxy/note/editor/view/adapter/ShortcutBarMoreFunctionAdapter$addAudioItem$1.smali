.class public final Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortcutBarMoreFunctionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,209:1\n277#2,2:210\n277#2,2:212\n277#2,2:214\n277#2,2:216\n*S KotlinDebug\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1\n*L\n135#1:210,2\n136#1:212,2\n158#1:214,2\n159#1:216,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
        "payloads",
        "",
        "",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortcutBarMoreFunctionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,209:1\n277#2,2:210\n277#2,2:212\n277#2,2:214\n277#2,2:216\n*S KotlinDebug\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1\n*L\n135#1:210,2\n136#1:212,2\n158#1:214,2\n159#1:216,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->groupPlay:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupPlay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->isRecording()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->groupRecord:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->isRecording()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 7
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p2, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->tvTitleRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->getRecordDuration()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->ivIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getIconRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 10
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/util/List;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
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
            "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;",
            "I",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void

    .line 13
    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    instance-of p3, p2, Ljava/util/Map;

    if-eqz p3, :cond_3

    .line 15
    check-cast p2, Ljava/util/Map;

    const-string p3, "pay_load_update_record_dur"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->getRecordDuration()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->groupPlay:Landroidx/constraintlayout/widget/Group;

    const-string p4, "groupPlay"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-virtual {p4}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->isRecording()Z

    move-result p4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    move p4, v1

    .line 18
    :goto_0
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->groupRecord:Landroidx/constraintlayout/widget/Group;

    const-string p4, "groupRecord"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->isRecording()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 20
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->tvTitleRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioBinding;)V

    return-object p0
.end method
