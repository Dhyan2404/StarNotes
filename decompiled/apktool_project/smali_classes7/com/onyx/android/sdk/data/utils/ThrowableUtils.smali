.class public final Lcom/onyx/android/sdk/data/utils/ThrowableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\n\u0010\u0008\u001a\u00020\u0004*\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/ThrowableUtils;",
        "",
        "()V",
        "handleIOException",
        "Lcom/onyx/android/sdk/data/common/data/ErrorCode;",
        "throwable",
        "Ljava/io/IOException;",
        "unknownError",
        "getErrorCode",
        "",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/utils/ThrowableUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ThrowableUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final handleIOException(Ljava/io/IOException;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/common/error/BaseError;->INSTANCE:Lcom/onyx/android/sdk/base/common/error/BaseError;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/common/error/BaseError;->isNoSpace(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "101"

    if-eqz v2, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    sget p1, Lcom/onyx/android/sdk/data/R$string;->space_not_enough_error:I

    invoke-direct {p0, v3, v0, p1}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/common/error/BaseError;->isFileTooLarge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    sget p1, Lcom/onyx/android/sdk/data/R$string;->file_too_large_space_not_enough_error:I

    invoke-direct {p0, v3, v0, p1}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/io/IOException;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->handleIOException(Ljava/io/IOException;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->unknownError()Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final unknownError()Lcom/onyx/android/sdk/data/common/data/ErrorCode;
    .locals 6

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    const-string v1, "1"

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/data/R$string;->unknown_error_contact_help:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method


# virtual methods
.method public final getErrorCode(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;
    .locals 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    check-cast p1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    const-string v2, "100"

    const-string v3, "Abort"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/onyx/android/sdk/data/common/exception/BaseException;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/onyx/android/sdk/data/common/exception/BaseException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/BaseException;->getErrorCode()Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/io/IOException;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->handleIOException(Ljava/io/IOException;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->unknownError()Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object p0

    :goto_0
    return-object p0
.end method
