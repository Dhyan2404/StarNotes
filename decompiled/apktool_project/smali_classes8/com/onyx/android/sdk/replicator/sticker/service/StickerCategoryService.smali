.class public interface abstract Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\'J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0003H\'J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u000fH\'J\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0012H\'\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;",
        "",
        "add",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;",
        "body",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;",
        "delete",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;",
        "id",
        "",
        "load",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;",
        "move",
        "Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;",
        "update",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;",
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


# virtual methods
.method public abstract add(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stickers/categories/"
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "stickers/categories/{id}"
    .end annotation
.end method

.method public abstract load()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "stickers/categories/"
    .end annotation
.end method

.method public abstract move(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stickers/categories/move"
    .end annotation
.end method

.method public abstract update(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "stickers/categories/"
    .end annotation
.end method
