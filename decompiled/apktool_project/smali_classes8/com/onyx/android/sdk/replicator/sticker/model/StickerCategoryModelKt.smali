.class public final Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "createCategoryAll",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "parentId",
        "",
        "createCategoryRecent",
        "sdk-replicator_overseasRelease"
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
.method public static final createCategoryAll(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parentId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setType(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/replicator/R$string;->sticker_category_all:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setParentUniqueId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final createCategoryRecent()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setType(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/replicator/R$string;->sticker_category_recent:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->setName(Ljava/lang/String;)V

    return-object v0
.end method
