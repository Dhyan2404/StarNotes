.class public final Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->g()Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;",
        "isCancelled",
        "",
        "onProgressUpdate",
        "",
        "info",
        "Lcom/onyx/android/sdk/reader/api/ProgressInfo;",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;->a:Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;->a:Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result p0

    return p0
.end method

.method public onProgressUpdate(Lcom/onyx/android/sdk/reader/api/ProgressInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest$createProgressCallback$1;->a:Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->getCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->getSoFarBytes()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ProgressInfo;->getTotalBytes()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>(II)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
