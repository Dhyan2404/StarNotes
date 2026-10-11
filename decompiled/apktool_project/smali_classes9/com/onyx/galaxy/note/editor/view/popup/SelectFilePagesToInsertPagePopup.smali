.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectFilePagesToInsertPagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n*L\n31#1:53\n31#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BE\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;",
        "",
        "import",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "Z",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "fileEntry",
        "",
        "k0",
        "I",
        "insertPageIndex",
        "Lkotlin/Function0;",
        "q0",
        "Lkotlin/jvm/functions/Function0;",
        "importCallback",
        "docManagerBundle",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;)V",
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
        "SMAP\nSelectFilePagesToInsertPagePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1549#2:53\n1620#2,3:54\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesToInsertPagePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup\n*L\n31#1:53\n31#1:54,3\n*E\n"
    }
.end annotation


# instance fields
.field public final Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k0:I

.field public q0:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "docManagerBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileEntry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    .line 5
    iput p5, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->k0:I

    .line 6
    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->q0:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 1
    invoke-direct/range {v2 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public import()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->getPageListAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;->getArgs()Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->k0:I

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;-><init>()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplateUri(Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplatePageIndexList(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setInsertAt(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFilePassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setPassword(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->getPageListAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setSelectAllPage(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPdfPagesEvent;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertPdfPagesEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportPagesEvent;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportPagesEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesToInsertPagePopup;->q0:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
