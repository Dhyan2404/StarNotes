.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomShortcutBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,239:1\n277#2,2:240\n277#2,2:242\n*S KotlinDebug\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1\n*L\n109#1:240,2\n114#1:242,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00040\u0001J&\u0010\n\u001a\u00020\t2\n\u0010\u0005\u001a\u00060\u0003R\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u0010\u001a\u00060\u0003R\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u001e\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0004\u0012\u00020\u00060\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBind",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreate",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "shortcutType",
        "Lkotlin/Pair;",
        "",
        "a",
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
        "SMAP\nCustomShortcutBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,239:1\n277#2,2:240\n277#2,2:242\n*S KotlinDebug\n*F\n+ 1 CustomShortcutBarAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1\n*L\n109#1:240,2\n114#1:242,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getEncryptionData(Z)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getShortcutModeData(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;ILcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;ILcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_9

    .line 2
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->supportShortcutType(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_01:I

    :goto_0
    if-nez v0, :cond_2

    .line 5
    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    :goto_1
    if-nez v0, :cond_3

    .line 6
    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_04:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/onyx/android/sdk/skin/R$color;->theme_divider_color_01:I

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object p1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    .line 8
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object p3

    .line 9
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;

    move-result-object p0

    .line 10
    iget-object v5, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->menuIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageTintList(I)V

    .line 11
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 12
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintView;->setBackgroundColor(I)V

    .line 13
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->icDragTag:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "icDragTag"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x4

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v5

    .line 14
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->menuIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 16
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v5

    :goto_4
    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 18
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 19
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->icEye:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "icEye"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getRemovable()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    move v2, v5

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v3, v5

    .line 20
    :goto_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_9
    :goto_7
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;
    .locals 1
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

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addShortcutItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;)V

    return-object p3
.end method
