.class public final Lcom/onyx/android/sdk/data/common/download/extension/DownloadTaskKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "addBasicAuthentication",
        "Lcom/liulishuo/okdownload/DownloadTask$Builder;",
        "username",
        "",
        "password",
        "getStatus",
        "Lcom/liulishuo/okdownload/StatusUtil$Status;",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "sdk-data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addBasicAuthentication(Lcom/liulishuo/okdownload/DownloadTask$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;
    .locals 3
    .param p0    # Lcom/liulishuo/okdownload/DownloadTask$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lokhttp3/Credentials;->basic$default(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "authorization"

    invoke-virtual {p0, p2, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object p0
.end method

.method public static final getStatus(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/StatusUtil$Status;
    .locals 1
    .param p0    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/liulishuo/okdownload/StatusUtil;->getStatus(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/StatusUtil$Status;

    move-result-object p0

    const-string v0, "getStatus(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
