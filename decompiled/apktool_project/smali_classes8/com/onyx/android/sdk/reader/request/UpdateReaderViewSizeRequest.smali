.class public final Lcom/onyx/android/sdk/reader/request/UpdateReaderViewSizeRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/UpdateReaderViewSizeRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "readerBundle",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V",
        "size",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "setSize",
        "(Lcom/onyx/android/sdk/base/data/Size;)V",
        "execute",
        "",
        "bundle",
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
.field public size:Lcom/onyx/android/sdk/base/data/Size;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/UpdateReaderViewSizeRequest;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->updateViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method

.method public final getSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/UpdateReaderViewSizeRequest;->size:Lcom/onyx/android/sdk/base/data/Size;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "size"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/UpdateReaderViewSizeRequest;->size:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method
