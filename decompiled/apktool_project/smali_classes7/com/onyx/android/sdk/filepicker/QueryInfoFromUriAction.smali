.class public final Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u001a\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R(\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "documentBean",
        "",
        "n",
        "l",
        "m",
        "",
        "Lkotlin/Pair;",
        "Landroid/net/Uri;",
        "",
        "e",
        "Ljava/util/List;",
        "uris",
        "",
        "f",
        "getResult",
        "()Ljava/util/List;",
        "result",
        "<init>",
        "(Ljava/util/List;)V",
        "sdk-imagepicker_overseasRelease"
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
            "Lkotlin/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
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
            "Lkotlin/Pair<",
            "+",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$queryInfo(Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->n(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$a;-><init>(Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$b;-><init>(Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction$c;-><init>(Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getResult()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->f:Ljava/util/List;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getExtension()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/UriUtils;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setMimeType(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setSize(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getExtension(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "application/octet-stream"

    :cond_0
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->setMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getPath()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->m(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;->l(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    :goto_0
    return-void
.end method
