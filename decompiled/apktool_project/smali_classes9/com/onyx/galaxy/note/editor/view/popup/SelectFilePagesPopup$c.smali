.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->F()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->fileName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->getPageListAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->getPageListAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;->getTotalPage()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;->setPageCount(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;->a(Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;)V

    return-void
.end method
