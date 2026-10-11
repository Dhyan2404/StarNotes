.class public final Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/exception/ContentException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dJ\u0018\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\nJ\u0010\u0010!\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0006\u0010$\u001a\u00020\u001aJ\u0010\u0010%\u001a\u0004\u0018\u00010\n2\u0006\u0010&\u001a\u00020\'J\u0010\u0010(\u001a\u00020)2\u0008\u0010&\u001a\u0004\u0018\u00010\'J\u000e\u0010*\u001a\u00020)2\u0006\u0010&\u001a\u00020\'J\u000e\u0010+\u001a\u00020)2\u0006\u0010&\u001a\u00020\'J\u0010\u0010,\u001a\u00020)2\u0008\u0010&\u001a\u0004\u0018\u00010\'J\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;",
        "",
        "()V",
        "CLOUD_INTERNAL_SERVER_ERROR",
        "",
        "CLOUD_NO_FOUND",
        "CLOUD_SPACE_NOT_ENOUGH",
        "CLOUD_TOKEN_EXCEPTION",
        "FILE_CHECK_EXCEPTION",
        "FILE_CHECK_MESSAGE",
        "",
        "FILE_NOT_EXIST_MESSAGE",
        "FILE_PATH_EXCEPTION",
        "FILE_PATH_EXCEPTION_MESSAGE",
        "IO_EXCEPTION",
        "NETWORK_EXCEPTION",
        "NETWORK_EXCEPTION_MESSAGE",
        "NETWORK_SOCKET_TIMEOUT",
        "SOCKET_TIMEOUT_EXCEPTION_MESSAGE",
        "TOKEN_EXCEPTION",
        "TOKEN_EXCEPTION_MESSAGE",
        "UNKNOWN_EXCEPTION",
        "UNKNOWN_EXCEPTION_MESSAGE",
        "URL_INVALID_EXCEPTION",
        "URL_INVALID_EXCEPTION_MESSAGE",
        "createException",
        "Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exceptionFromCode",
        "code",
        "errorMessage",
        "exceptionFromResultCode",
        "resultCode",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "filePathInvalidException",
        "getMessage",
        "throwable",
        "",
        "isCloudException",
        "",
        "isCloudSpaceNotEnough",
        "isCloudTokenException",
        "isNetworkException",
        "timeoutException",
        "tokenException",
        "unKnowException",
        "urlInvalidException",
        "sdk-data_release"
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createException(Ljava/lang/Exception;)Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/exception/ContentException;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public final exceptionFromResultCode(Lcom/onyx/android/sdk/data/common/data/ResultCode;)Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ResultCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->unKnowException()Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Network is exception."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final filePathInvalidException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    const-string v1, "File path is invalid."

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "throwable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/onyx/android/sdk/data/common/exception/ContentException;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isCloudException(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p0, p1, Lcom/onyx/android/sdk/data/common/exception/ContentException$CloudException;

    return p0
.end method

.method public final isCloudSpaceNotEnough(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->isCloudException(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/data/common/exception/ContentException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException;->isCloudSpaceNotEnough()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCloudTokenException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->isCloudException(Ljava/lang/Throwable;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/data/common/exception/ContentException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException;->isCloudTokenException()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;->isTokenInvalid(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isNetworkException(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p0, p1, Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;

    return p0
.end method

.method public final timeoutException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x6

    const-string v1, "socket time out exception"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final tokenException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    const-string v1, "Token exception."

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final unKnowException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0xffff

    const-string v1, "Unknown exception."

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method

.method public final urlInvalidException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Url is invalid."

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    return-object p0
.end method
