.class public final Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;
.super Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$loadAllStickerCategory(Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;->l()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadAllCategory()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
