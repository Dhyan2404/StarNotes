.class public final Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "importSelectedContext",
        "Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;",
        "i",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELAY_SHOW_SUCCESS_WHEN_OPEN_DOCUMENT:J = 0x1f4L


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->Companion:Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importSelectedContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    new-instance p2, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->i:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->e(Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->btnFinish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnFinish"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/fji;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/fji;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->tvTotalCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->import_success_file_count:I

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getCompleteTaskCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->llAllNote:Lcom/onyx/galaxy/note/category/view/LabelLayout;

    sget v3, Lcom/onyx/galaxy/note/R$string;->all_note:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/view/LabelLayout;->setLabels(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->llFolders:Lcom/onyx/galaxy/note/category/view/LabelLayout;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getSelectedFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/view/LabelLayout;->setLabels(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->llTags:Lcom/onyx/galaxy/note/category/view/LabelLayout;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getSelectedTagNameList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/view/LabelLayout;->setLabels(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->llTags:Lcom/onyx/galaxy/note/category/view/LabelLayout;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getSelectedTagNameList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    xor-int/2addr v0, v3

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;->llFolders:Lcom/onyx/galaxy/note/category/view/LabelLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->h:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->getSelectedFolderName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImportSuccessBinding;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffc8

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
