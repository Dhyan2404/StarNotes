.class public final Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;
.super Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction<",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008#\u0010$J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0017R\u0016\u0010\u001e\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0017R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/net/Uri;",
        "uri",
        "",
        "n",
        "m",
        "l",
        "sticker",
        "p",
        "r",
        "",
        "q",
        "Lcom/blankj/utilcode/util/ImageUtils$ImageType;",
        "o",
        "",
        "e",
        "Ljava/util/List;",
        "uris",
        "f",
        "Ljava/lang/String;",
        "categoryId",
        "g",
        "tempName",
        "h",
        "tempPath",
        "i",
        "cachePath",
        "",
        "j",
        "I",
        "maxImageSize",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;)V",
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

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->e:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->f:Ljava/lang/String;

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->g:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->i:Ljava/lang/String;

    const/16 p1, 0x5dc

    .line 8
    iput p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->j:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$addStickerToCloud(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->l()Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$compressPngFile(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->m()V

    return-void
.end method

.method public static final synthetic access$copyToTempPath(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->n(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$getUris$p(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$moveToCachePath(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->p(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveStickerToDatabase(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->r(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

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
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$a;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$b;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$c;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$d;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$e;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction$f;-><init>(Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;->addSticker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getNonNullData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    return-object p0
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    iget v2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->scaleImageFileWithMaxSizeLimit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lonyx/org/apache/commons/io/FileUtils;->delete(Ljava/io/File;)Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public final n(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->o(Landroid/net/Uri;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->g:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;->getLocalCacheDir()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->g:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(base, *subpaths)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)J

    return-void
.end method

.method public final o(Landroid/net/Uri;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/UriUtils;->getExtensionName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isJPG(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    :goto_0
    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 2

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->getSavedFile(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->i:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->loadDefaultCategory()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;->getStickerProvider()Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/AddStickerAction;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->addSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V

    return-object p1
.end method
