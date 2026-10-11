.class public final Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;
.super Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/Reader$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderContentDiskCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,285:1\n76#2,2:286\n*S KotlinDebug\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n*L\n215#1:286,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0016\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00102\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;",
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;",
        "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
        "Landroid/graphics/Bitmap;",
        "",
        "positionString",
        "",
        "rotation",
        "getDiskCacheKey",
        "resource",
        "Ljava/io/File;",
        "file",
        "",
        "write",
        "read",
        "args",
        "Lio/reactivex/rxjava3/core/Observable;",
        "decode",
        "Landroid/graphics/RectF;",
        "displayRect",
        "cacheKey",
        "queryCacheBitmap",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "a",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "reader",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/Reader;)V",
        "Companion",
        "sdk-reader_overseasRelease"
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
        "SMAP\nReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,285:1\n76#2,2:286\n*S KotlinDebug\n*F\n+ 1 Reader.kt\ncom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache\n*L\n215#1:286,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIN_DISK_CACHE_RENDER_TIME:J = 0x12cL


# instance fields
.field public final a:Lcom/onyx/android/sdk/reader/Reader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->Companion:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/Reader;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/Reader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_content"

    const-wide v1, 0xc0000000L

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->a:Lcom/onyx/android/sdk/reader/Reader;

    new-instance p1, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->setSafeKeyGenerator(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V

    return-void
.end method

.method public static final synthetic access$getReader$p(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;)Lcom/onyx/android/sdk/reader/Reader;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->a:Lcom/onyx/android/sdk/reader/Reader;

    return-object p0
.end method


# virtual methods
.method public decode(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/DrawArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;-><init>(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;Lcom/onyx/android/sdk/reader/api/DrawArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$b;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$b;-><init>(Lcom/onyx/android/sdk/reader/api/DrawArgs;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->decode(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getDiskCacheKey(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "positionString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->a:Lcom/onyx/android/sdk/reader/Reader;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/Reader;->getDocumentPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final queryCacheBitmap(Landroid/graphics/RectF;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "displayRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->hasCache(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getCacheFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->read(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    int-to-float v0, p2

    int-to-float v2, p1

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->isApproximatelyEqual(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p2, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p1, :cond_5

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createScaledBitmap(this, width, height, filter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-object p0
.end method

.method public read(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "decodeFile(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic read(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->read(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "file"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, p2, v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Ljava/io/File;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->write(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
