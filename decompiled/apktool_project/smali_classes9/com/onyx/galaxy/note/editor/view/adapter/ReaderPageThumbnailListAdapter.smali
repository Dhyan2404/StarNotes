.class public Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter<",
        "Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;",
        "Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "index",
        "createItemModel",
        "",
        "B",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "path",
        "<init>",
        "()V",
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
.field public B:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;

    new-instance v9, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->B:Ljava/lang/String;

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_PAGE_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p1, v9}, Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    return-object v0
.end method

.method public bridge synthetic createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->createItemModel(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->B:Ljava/lang/String;

    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->B:Ljava/lang/String;

    return-void
.end method
