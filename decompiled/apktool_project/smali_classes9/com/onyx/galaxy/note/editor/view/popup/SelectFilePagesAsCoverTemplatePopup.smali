.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;
.super Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectFilePagesAsCoverTemplatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesAsCoverTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,3:41\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesAsCoverTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup\n*L\n27#1:40\n27#1:41,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;",
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;",
        "",
        "import",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getDocManagerBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "docManagerBundle",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "Z",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "fileEntry",
        "Landroid/content/Context;",
        "context",
        "",
        "maxCount",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V",
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
        "SMAP\nSelectFilePagesAsCoverTemplatePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesAsCoverTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,3:41\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesAsCoverTemplatePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup\n*L\n27#1:40\n27#1:41,3\n*E\n"
    }
.end annotation


# instance fields
.field public final Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V

    return-void
.end method


# virtual methods
.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public import()V
    .locals 8

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
    new-instance v2, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;->Z:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFilePassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;->release()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
