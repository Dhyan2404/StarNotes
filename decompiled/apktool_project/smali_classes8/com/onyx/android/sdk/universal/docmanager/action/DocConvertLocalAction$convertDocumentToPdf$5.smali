.class final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->r(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
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
.field final synthetic $convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

.field final synthetic $fileBaseName:Ljava/lang/String;

.field final synthetic $outputDir:Ljava/io/File;

.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputDir:Ljava/io/File;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$fileBaseName:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iput-object p6, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
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
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputPath:Ljava/lang/String;

    const-string v1, "$outputPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputDir:Ljava/io/File;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$fileBaseName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    new-instance p1, Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$outputPath:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getAbsolutePath(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$path:Ljava/lang/String;

    const-string v2, "$path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-static {v0, v1, p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->access$convertToPDF(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
