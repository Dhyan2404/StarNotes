.class public final Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0006J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;",
        "",
        "()V",
        "addSticker",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;",
        "file",
        "",
        "name",
        "category",
        "addStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;",
        "parentId",
        "deleteSticker",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;",
        "id",
        "deleteStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;",
        "loadSticker",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;",
        "loadStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;",
        "moveStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;",
        "sticker",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "newCategoryId",
        "updateStickerCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "category"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->createFileBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->createTextBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/data/utils/RetrofitUtils;->createTextBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p0

    sget-object p3, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    move-result-object p3

    invoke-interface {p3, p1, p2, p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;->add(Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;

    return-object p0
.end method

.method public final addStickerCategory(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;->add(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;

    return-object p0
.end method

.method public final deleteSticker(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;->delete(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;

    return-object p0
.end method

.method public final deleteStickerCategory(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;->delete(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;

    return-object p0
.end method

.method public final loadSticker()Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;->load()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;

    return-object p0
.end method

.method public final loadStickerCategory()Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;->load()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;

    return-object p0
.end method

.method public final moveStickerCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sticker"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newCategoryId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;->move(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;

    return-object p0
.end method

.method public final updateStickerCategory(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerApiManager;->getStickerCategoryApi()Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;->update(Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;

    return-object p0
.end method
