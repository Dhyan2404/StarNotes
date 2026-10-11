.class public abstract Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        "RESOURCE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,112:1\n41#2,5:113\n*S KotlinDebug\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n*L\n51#1:113,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001b\u001a\u00020\u001cJ\u001b\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010\u001f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u0004\u0018\u00010\u00052\u0006\u0010\"\u001a\u00020\u0005J!\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u000e\u0010&\u001a\u00020\'2\u0006\u0010\"\u001a\u00020\u0005J\u0015\u0010(\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H&\u00a2\u0006\u0002\u0010+J\u0016\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001e2\u0006\u0010)\u001a\u00020*H\u0004J\u001f\u0010-\u001a\u0006\u0012\u0002\u0008\u00030\u001e2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010.\u001a\u00028\u0001\u00a2\u0006\u0002\u0010$J\u001b\u0010/\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010.\u001a\u00028\u0001\u00a2\u0006\u0002\u00100J\u001d\u00101\u001a\u00020\'2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H&\u00a2\u0006\u0002\u00102J#\u00103\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001e2\u0006\u0010.\u001a\u00028\u00012\u0006\u0010)\u001a\u00020*H\u0004\u00a2\u0006\u0002\u00104R#\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;",
        "MODEL",
        "",
        "RESOURCE",
        "functionKey",
        "",
        "maxCacheSize",
        "",
        "(Ljava/lang/String;J)V",
        "cache",
        "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        "kotlin.jvm.PlatformType",
        "getCache",
        "()Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        "cache$delegate",
        "Lkotlin/Lazy;",
        "safeKeyGenerator",
        "Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;",
        "getSafeKeyGenerator",
        "()Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;",
        "setSafeKeyGenerator",
        "(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "getScheduler",
        "()Lio/reactivex/rxjava3/core/Scheduler;",
        "scheduler$delegate",
        "close",
        "",
        "decode",
        "Lio/reactivex/rxjava3/core/Observable;",
        "model",
        "(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;",
        "getCacheFile",
        "key",
        "getOrCreate",
        "(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;",
        "getSafeKey",
        "hasCache",
        "",
        "read",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)Ljava/lang/Object;",
        "readObservable",
        "saveOrUpdate",
        "resource",
        "saveOrUpdateAsync",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "write",
        "(Ljava/lang/Object;Ljava/io/File;)Z",
        "writeObservable",
        "(Ljava/lang/Object;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nObjectLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,112:1\n41#2,5:113\n*S KotlinDebug\n*F\n+ 1 ObjectLruCache.kt\ncom/onyx/android/sdk/data/utils/ObjectLruCache\n*L\n51#1:113,5\n*E\n"
    }
.end annotation


# instance fields
.field private final cache$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final functionKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxCacheSize:J

.field private safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scheduler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "functionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->functionKey:Ljava/lang/String;

    iput-wide p2, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->maxCacheSize:J

    new-instance p1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$scheduler$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$scheduler$2;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->scheduler$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->cache$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCache(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFunctionKey$p(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->functionKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMaxCacheSize$p(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->maxCacheSize:J

    return-wide v0
.end method

.method public static final synthetic access$getSafeKey(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->cache$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    return-object p0
.end method

.method private final getSafeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method private final getScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->scheduler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$close$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$close$1;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runWithRx(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public abstract decode(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMODE",
            "L;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TRESOURCE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getCacheFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->hasCache(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getOrCreate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TMODE",
            "L;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TRESOURCE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getCacheFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v3, "just(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$1;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$1;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$2;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$3;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$4;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$getOrCreate$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSafeKeyGenerator()Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    return-object p0
.end method

.method public final hasCache(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getCache()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getSafeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    :catchall_0
    :cond_0
    return v0
.end method

.method public abstract read(Ljava/io/File;)Ljava/lang/Object;
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TRESOURCE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final readObservable(Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TRESOURCE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$readObservable$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$readObservable$1;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final saveOrUpdate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TRESOURCE;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getRandomCacheFile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$1;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$saveOrUpdate$2;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final saveOrUpdateAsync(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TRESOURCE;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->saveOrUpdate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final setSafeKeyGenerator(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    return-void
.end method

.method public abstract write(Ljava/lang/Object;Ljava/io/File;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESOURCE;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation
.end method

.method public final writeObservable(Ljava/lang/Object;Ljava/io/File;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESOURCE;",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$writeObservable$1;-><init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;Ljava/lang/Object;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
