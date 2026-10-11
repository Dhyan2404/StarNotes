.class public final Lcom/onyx/android/sdk/reader/api/PageTextInfoStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "isOCRFinish",
        "",
        "Lcom/onyx/android/sdk/reader/api/PageTextInfoState;",
        "sdk-readercore_overseasRelease"
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
.method public static final isOCRFinish(Lcom/onyx/android/sdk/reader/api/PageTextInfoState;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/api/PageTextInfoState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/reader/api/PageTextInfoState;->OCR:Lcom/onyx/android/sdk/reader/api/PageTextInfoState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/reader/api/PageTextInfoState;->OCR_NOTHING:Lcom/onyx/android/sdk/reader/api/PageTextInfoState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
