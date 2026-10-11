.class public final Lcom/onyx/android/sdk/geometry/data/BoxExtraInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "copyOrNull",
        "Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;",
        "sdk-geometry_release"
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
.method public static final copyOrNull(Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;)Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
