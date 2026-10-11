.class public final Lcom/onyx/android/sdk/data/common/exception/ContentException$CloudException;
.super Lcom/onyx/android/sdk/data/common/exception/ContentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/common/exception/ContentException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/ContentException$CloudException;",
        "Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "resultCode",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V",
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
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ResultCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromResultCode(Lcom/onyx/android/sdk/data/common/data/ResultCode;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/exception/ContentException;-><init>(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0xffff

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/ContentException;->setCode(I)V

    return-void
.end method
