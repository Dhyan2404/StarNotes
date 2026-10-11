.class public Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter<",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0014\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "()V",
        "createItemModel",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "index",
        "",
        "setPageData",
        "",
        "virtualPageList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;->createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-result-object p0

    return-object p0
.end method

.method public final setPageData(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "virtualPageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
