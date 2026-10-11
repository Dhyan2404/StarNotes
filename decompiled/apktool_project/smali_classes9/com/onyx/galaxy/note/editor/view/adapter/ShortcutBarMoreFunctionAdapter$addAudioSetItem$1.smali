.class public final Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->o()V
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
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortcutBarMoreFunctionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,209:1\n277#2,2:210\n277#2,2:212\n256#2,2:214\n*S KotlinDebug\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1\n*L\n189#1:210,2\n190#1:212,2\n192#1:214,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
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
        "SMAP\nShortcutBarMoreFunctionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,209:1\n277#2,2:210\n277#2,2:212\n256#2,2:214\n*S KotlinDebug\n*F\n+ 1 ShortcutBarMoreFunctionAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1\n*L\n189#1:210,2\n190#1:212,2\n192#1:214,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;
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

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->isPreviewAudioSet()Z

    move-result p2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    .line 4
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;->ivIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;->ivIconPreview:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivIconPreview"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;->ivIconNewTip:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "ivIconNewTip"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->getHasNewRecordTip()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 10
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionAudioSetBinding;)V

    return-object p0
.end method
