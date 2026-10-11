.class public final Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;
.super Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction<",
        "Ljava/util/Map<",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "+",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyUriToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,66:1\n79#2,5:67\n113#2,7:72\n92#3,4:79\n526#4:83\n511#4,6:84\n*S KotlinDebug\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n*L\n29#1:67,5\n29#1:72,7\n34#1:79,4\n41#1:83\n41#1:84,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0006\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001B\u0015\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001c\u0010\u0006\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0005H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u001c\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "Ljava/io/File;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "entry",
        "",
        "l",
        "file",
        "o",
        "",
        "path",
        "m",
        "",
        "e",
        "Ljava/util/List;",
        "fileList",
        "",
        "f",
        "Ljava/util/Map;",
        "entryToFileMap",
        "<init>",
        "(Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCopyUriToFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,66:1\n79#2,5:67\n113#2,7:72\n92#3,4:79\n526#4:83\n511#4,6:84\n*S KotlinDebug\n*F\n+ 1 CopyUriToFileAction.kt\ncom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction\n*L\n29#1:67,5\n29#1:72,7\n34#1:79,4\n41#1:83\n41#1:84,6\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->e:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->f:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$copyUriToFile(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->l(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEntryToFileMap$p(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->f:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$repeatFileCheck(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;Ljava/io/File;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->o(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->m(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOnMultiThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$a;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$b;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v1}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    sget-object v4, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v5, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->importCacheDir()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getExtensionName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$copyUriToFile$1$1;

    invoke-direct {v6, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction$copyUriToFile$1$1;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;)V

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/UriUtils;->copyToFileWithCheck(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/io/File;

    move-result-object v3

    :cond_0
    new-instance v4, Lkotlin/time/TimedValue;

    invoke-static {v1, v2}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v1

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v2, v5}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " copyUriToFile "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v4}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->m(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->f:Ljava/util/Map;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Ljava/io/File;)Ljava/io/File;
    .locals 10

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "."

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/CopyUriToFileAction;->o(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
