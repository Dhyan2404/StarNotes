.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000c\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u000c\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "m",
        "e",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "getModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "model",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-void
.end method

.method public static final synthetic access$downloadFont(Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyFontDownloaded(Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getModel()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getRandomCacheFile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setForceReDownload(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setFileMd5(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTargetPath(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method
