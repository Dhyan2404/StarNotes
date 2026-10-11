.class public final Lcom/onyx/android/sdk/data/common/exception/FileDownloadException;
.super Lcom/onyx/android/sdk/data/common/exception/BaseException;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/exception/FileDownloadException;",
        "Lcom/onyx/android/sdk/data/common/exception/BaseException;",
        "()V",
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
.method public constructor <init>()V
    .locals 7

    new-instance v6, Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    const-string v1, "102"

    const/4 v2, 0x0

    sget v3, Lcom/onyx/android/sdk/data/R$string;->file_download_error:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v6}, Lcom/onyx/android/sdk/data/common/exception/BaseException;-><init>(Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V

    return-void
.end method
