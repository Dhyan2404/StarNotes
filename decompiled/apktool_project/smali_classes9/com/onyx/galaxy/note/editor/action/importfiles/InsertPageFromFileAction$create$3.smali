.class public final Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->f:Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->getResultList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;

    const/4 v1, 0x0

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->f:Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;->access$getInsertPageIndex$p(Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;)I

    move-result v5

    new-instance v6, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->f:Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3$1;-><init>(Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->clearSelect()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/importfiles/InsertPageFromFileAction$create$3;->a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    return-void
.end method
