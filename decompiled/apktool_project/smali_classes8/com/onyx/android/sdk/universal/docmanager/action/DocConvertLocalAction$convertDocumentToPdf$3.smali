.class final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;
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
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
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

.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$outputPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
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
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "$path"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->isFileEncrypted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFilePassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$outputPath:Ljava/lang/String;

    const-string v3, "$outputPath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p1, v1, v0, v2}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->this$0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->access$decryptPDF(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    .line 11
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->$convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;->invoke(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
