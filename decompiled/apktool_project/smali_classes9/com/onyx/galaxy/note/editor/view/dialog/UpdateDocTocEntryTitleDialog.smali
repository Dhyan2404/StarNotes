.class public final Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;
.super Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\r\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;",
        "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;",
        "",
        "l",
        "i",
        "j",
        "",
        "eventId",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "tocEntry",
        "Ljava/lang/String;",
        "formFlag",
        "Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;",
        "n",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;)V",
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
.field public final j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tocEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    .line 6
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->n:Lkotlin/Lazy;

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->setContentView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l()V

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/exn;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/exn;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/fxn;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/fxn;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lcom/sunia/HTREnginev2/gxn;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/gxn;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-string p1, "click_galaxy_outline_0010"

    .line 13
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "view_galaxy_outline_edit_0003"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_outline_edit_0003"

    .line 14
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "view_galaxy_outline_edit_0001"

    .line 15
    :goto_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$dismissSafe(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getTocEntry$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    return-object p0
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->g(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->h(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->f(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m:Ljava/lang/String;

    const-string v0, "click_galaxy_outline_0010"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "click_galaxy_outline_edit_0006"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_outline_edit_0003"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "click_galaxy_outline_edit_0004"

    goto :goto_0

    :cond_1
    const-string p1, "click_galaxy_outline_edit_0001"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j()V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m:Ljava/lang/String;

    const-string v0, "click_galaxy_outline_0010"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "click_galaxy_outline_edit_0007"

    goto :goto_0

    :cond_0
    const-string v0, "click_galaxy_outline_edit_0003"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "click_galaxy_outline_edit_0005"

    goto :goto_0

    :cond_1
    const-string p1, "click_galaxy_outline_edit_0002"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->i()V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Landroid/content/DialogInterface;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string p1, "titleEdit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboard$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v1, "titleEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->checkInputEmpty$default(Landroid/widget/TextView;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;->checkInputPageNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    move v2, v3

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageIndex(I)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIdFromIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;

    invoke-direct {v1, p0, v2}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$dismissSafe$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$dismissSafe$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    return-object p0
.end method

.method public final l()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v1, "titleEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->toc_entry_title_max_char_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->addCharTextChangedListener$default(Landroid/widget/TextView;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/IntExtKt;->pageCountHint(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
