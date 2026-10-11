.class final Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->m(Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
        "reader",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic $virtualPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;->$virtualPageList:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;->$path:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/reader/Reader;)Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;->$path:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->setExportPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->getTotalPage()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator;->positionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;->$virtualPageList:Ljava/util/List;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    if-nez v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->getContentPageIdMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/reader/Reader;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$generateExportResult$1;->invoke(Lcom/onyx/android/sdk/reader/Reader;)Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    move-result-object p0

    return-object p0
.end method
