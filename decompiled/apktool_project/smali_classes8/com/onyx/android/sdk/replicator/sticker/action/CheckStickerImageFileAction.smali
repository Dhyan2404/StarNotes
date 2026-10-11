.class public final Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/util/List<",
        "+",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Landroid/net/Uri;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "m",
        "e",
        "Ljava/util/List;",
        "uris",
        "<init>",
        "(Ljava/util/List;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkImageCount(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->l()V

    return-void
.end method

.method public static final synthetic access$checkImageFormat(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->m()V

    return-void
.end method

.method public static final synthetic access$getUris$p(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->e:Ljava/util/List;

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
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$b;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction$c;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Reach File Count Limit"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final m()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isImageFile(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Format Not Supported"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method
