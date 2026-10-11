.class final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->u(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
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
.field final synthetic $fileBaseName:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resultEvent:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$fileBaseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$resultEvent:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$fileBaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$resultEvent:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;->setPath(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$resultEvent:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$fileBaseName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 8
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getAbsolutePath(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$resultEvent:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-static {p1, v1, v0, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$convertToPDF(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5$a;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$convertDocumentToPdf$5;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
