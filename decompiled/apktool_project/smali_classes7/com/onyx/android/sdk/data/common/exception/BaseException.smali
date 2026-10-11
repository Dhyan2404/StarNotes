.class public abstract Lcom/onyx/android/sdk/data/common/exception/BaseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/BaseException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorCode",
        "Lcom/onyx/android/sdk/data/common/data/ErrorCode;",
        "(Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V",
        "getErrorCode",
        "()Lcom/onyx/android/sdk/data/common/data/ErrorCode;",
        "setErrorCode",
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


# instance fields
.field private errorCode:Lcom/onyx/android/sdk/data/common/data/ErrorCode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/BaseException;->errorCode:Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    return-void
.end method


# virtual methods
.method public final getErrorCode()Lcom/onyx/android/sdk/data/common/data/ErrorCode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/exception/BaseException;->errorCode:Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    return-object p0
.end method

.method public final setErrorCode(Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/exception/BaseException;->errorCode:Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    return-void
.end method
