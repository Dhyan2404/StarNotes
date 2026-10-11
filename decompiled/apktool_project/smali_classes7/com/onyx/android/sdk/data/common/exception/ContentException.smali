.class public Lcom/onyx/android/sdk/data/common/exception/ContentException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/exception/ContentException$CloudException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileAskForReplaceException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCheckException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopyException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCopySpaceNotEnoughException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileCreateException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileDeleteException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$FileNotExistException;,
        Lcom/onyx/android/sdk/data/common/exception/ContentException$NetworkException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 \u001b2\u00060\u0001j\u0002`\u0002:\u000b\u001a\u001b\u001c\u001d\u001e\u001f !\"#$B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u001b\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u0011\u0008\u0016\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\u0018\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014R\u0011\u0010\u0019\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "theCode",
        "",
        "theMessage",
        "",
        "(ILjava/lang/String;)V",
        "message",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "(Ljava/lang/Throwable;)V",
        "code",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "isCloudNotFound",
        "",
        "()Z",
        "isCloudServerError",
        "isCloudSpaceNotEnough",
        "isCloudTokenException",
        "isEmailAddressError",
        "isTimeoutException",
        "CloudException",
        "Companion",
        "FileAskForReplaceException",
        "FileCheckException",
        "FileCopyException",
        "FileCopySpaceNotEnoughException",
        "FileCreateException",
        "FileDeleteException",
        "FileException",
        "FileNotExistException",
        "NetworkException",
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


# static fields
.field public static final CLOUD_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final CLOUD_NO_FOUND:I = 0x194

.field public static final CLOUD_SPACE_NOT_ENOUGH:I = 0x1c8

.field public static final CLOUD_TOKEN_EXCEPTION:I = 0x191

.field public static final Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_CHECK_EXCEPTION:I = 0x7

.field public static final FILE_CHECK_MESSAGE:Ljava/lang/String; = "File check fail."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_NOT_EXIST_MESSAGE:Ljava/lang/String; = "File is not exist."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_PATH_EXCEPTION:I = 0x2

.field public static final FILE_PATH_EXCEPTION_MESSAGE:Ljava/lang/String; = "File path is invalid."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IO_EXCEPTION:I = 0x5

.field public static final NETWORK_EXCEPTION:I = 0x3

.field public static final NETWORK_EXCEPTION_MESSAGE:Ljava/lang/String; = "Network is exception."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_SOCKET_TIMEOUT:I = 0x6

.field public static final SOCKET_TIMEOUT_EXCEPTION_MESSAGE:Ljava/lang/String; = "socket time out exception"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKEN_EXCEPTION:I = 0x4

.field public static final TOKEN_EXCEPTION_MESSAGE:Ljava/lang/String; = "Token exception."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNKNOWN_EXCEPTION:I = 0xffff

.field public static final UNKNOWN_EXCEPTION_MESSAGE:Ljava/lang/String; = "Unknown exception."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL_INVALID_EXCEPTION:I = 0x1

.field public static final URL_INVALID_EXCEPTION_MESSAGE:Ljava/lang/String; = "Url is invalid."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    return p0
.end method

.method public final isCloudNotFound()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const/16 v0, 0x194

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCloudServerError()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCloudSpaceNotEnough()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const v0, 0x2810758

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCloudTokenException()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const/16 v0, 0x191

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmailAddressError()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const v0, 0x28105e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTimeoutException()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->code:I

    return-void
.end method
