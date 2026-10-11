.class public final Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u001e\u0010\u0013\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

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

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;ILcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;
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
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;->a(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;->ivIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemShortcutBarMoreFunctionNormalBinding;)V

    return-object p0
.end method
