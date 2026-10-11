.class public final Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;
.super Lcom/onyx/android/sdk/data/common/data/ResponeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "()V",
        "isDataFormatOk",
        "",
        "sdk-replicator_overseasRelease"
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
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataFormatOk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method
