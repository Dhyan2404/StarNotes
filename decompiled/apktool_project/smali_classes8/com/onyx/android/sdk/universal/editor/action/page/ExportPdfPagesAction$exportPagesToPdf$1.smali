.class final Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExportPdfPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1855#2,2:97\n1#3:99\n*S KotlinDebug\n*F\n+ 1 ExportPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1\n*L\n76#1:97,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExportPdfPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExportPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1855#2,2:97\n1#3:99\n*S KotlinDebug\n*F\n+ 1 ExportPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1\n*L\n76#1:97,2\n*E\n"
    }
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

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->$virtualPageList:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->$path:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/reader/Reader;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->invoke(Lcom/onyx/android/sdk/reader/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/reader/Reader;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->$virtualPageList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v5, v2, v4, v6, v3}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->getUseOriginFileName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    .line 12
    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-static {v5}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->access$getExportPdfDir$p(Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v5, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setOutputPath(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->setPages([I)V

    .line 16
    new-instance v0, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->$path:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v0, v1, v5, p1}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V

    .line 17
    new-instance v1, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$exportPagesToPdf$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V

    .line 18
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 19
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getOutputPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-lez p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    move-object v3, p0

    :cond_3
    return-object v3
.end method
