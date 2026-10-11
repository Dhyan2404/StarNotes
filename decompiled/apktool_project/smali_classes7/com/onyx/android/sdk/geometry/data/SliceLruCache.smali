.class public final Lcom/onyx/android/sdk/geometry/data/SliceLruCache;
.super Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache<",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSliceLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1313#2,2:247\n215#3,2:249\n215#3,2:251\n1855#4,2:253\n1045#4:255\n288#4,2:256\n533#4,6:258\n766#4:264\n857#4,2:265\n766#4:267\n857#4,2:268\n*S KotlinDebug\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n*L\n76#1:247,2\n101#1:249,2\n113#1:251,2\n166#1:253,2\n179#1:255\n180#1:256,2\n181#1:258,6\n199#1:264\n199#1:265,2\n200#1:267\n200#1:268,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 42\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0014J \u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J.\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020!2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0#J\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020!2\u0006\u0010$\u001a\u00020\u0002J\u0010\u0010%\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0006\u0010(\u001a\u00020\u001dJ\u0012\u0010)\u001a\u00020\u001b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010*\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004J\u001c\u0010+\u001a\u00020\n2\u0014\u0008\u0002\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0#J\u0014\u0010,\u001a\u00020-2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00020!J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0002J\u0018\u00101\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u0002H\u0014J\u0012\u00103\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/SliceLruCache;",
        "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "sizeConfig",
        "Lcom/onyx/android/sdk/geometry/data/SizeConfig;",
        "(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V",
        "getSizeConfig",
        "()Lcom/onyx/android/sdk/geometry/data/SizeConfig;",
        "setSizeConfig",
        "afterPut",
        "",
        "beforePut",
        "clearBitmap",
        "t",
        "cloneBitmapReference",
        "create",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "debugOnEntryRemoved",
        "removed",
        "debugSliceInfo",
        "sliceInfo",
        "entryRemoved",
        "evicted",
        "",
        "key",
        "",
        "oldValue",
        "newValue",
        "findAllScaleSliceList",
        "",
        "predicate",
        "Lkotlin/Function1;",
        "newInfo",
        "findDisplayCache",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "getSimpleDebugString",
        "isValid",
        "resize",
        "safeClearCacheIf",
        "saveBitmapListToCache",
        "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;",
        "sliceList",
        "saveBitmapToCache",
        "slice",
        "sizeOf",
        "value",
        "updateLruOrder",
        "Companion",
        "sdk-geometry_release"
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
        "SMAP\nSliceLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1313#2,2:247\n215#3,2:249\n215#3,2:251\n1855#4,2:253\n1045#4:255\n288#4,2:256\n533#4,6:258\n766#4:264\n857#4,2:265\n766#4:267\n857#4,2:268\n*S KotlinDebug\n*F\n+ 1 SliceLruCache.kt\ncom/onyx/android/sdk/geometry/data/SliceLruCache\n*L\n76#1:247,2\n101#1:249,2\n113#1:251,2\n166#1:253,2\n179#1:255\n180#1:256,2\n181#1:258,6\n199#1:264\n199#1:265,2\n200#1:267\n200#1:268,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static DEBUG_LOG:Z


# instance fields
.field private sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->Companion:Lcom/onyx/android/sdk/geometry/data/SliceLruCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;-><init>(Lcom/onyx/android/sdk/geometry/data/SizeConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SizeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->bitmapCacheMaxByteCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;-><init>(I)V

    .line 5
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/SizeConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    const/4 p2, 0x0

    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3, v0}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;-><init>(Lcom/onyx/android/sdk/base/data/Size;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;-><init>(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V

    return-void
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    return v0
.end method

.method public static final synthetic access$setDEBUG_LOG$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    return-void
.end method

.method private final afterPut()V
    .locals 5

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dump cache start, afterPut"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->debugSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump cache finish\n "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getSimpleDebugString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final beforePut()V
    .locals 5

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dump cache start, beforePut"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->debugSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump cache finish\n "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getSimpleDebugString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final debugOnEntryRemoved(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 5

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugOnEntryRemoved start, removed.key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->debugSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugOnEntryRemoved finish, removed.key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final debugSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 7

    sget-boolean v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->safelyByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x100000

    int-to-float v3, v3

    div-float v3, v2, v3

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getBytePerViewport()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapByteCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bitmapMB = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "MB, bitmapViewportCount = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n, isHighQuality = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n, state = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, type = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getType()Lcom/onyx/android/sdk/geometry/data/SliceInfo$Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, boundingRectF = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, key = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic safeClearCacheIf$default(Lcom/onyx/android/sdk/geometry/data/SliceLruCache;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$safeClearCacheIf$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/SliceLruCache$safeClearCacheIf$1;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->safeClearCacheIf(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final updateLruOrder(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clearBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic clearBitmap(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->clearBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-void
.end method

.method public cloneBitmapReference(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->copyBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    return-object p0
.end method

.method public bridge synthetic cloneBitmapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->cloneBitmapReference(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public create(IILandroid/graphics/Bitmap$Config;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "config"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;-><init>()V

    .line 3
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clearBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    sget-object p2, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;->create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    return-object p0
.end method

.method public bridge synthetic create(IILandroid/graphics/Bitmap$Config;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->create(IILandroid/graphics/Bitmap$Config;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    check-cast p4, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p3}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->debugOnEntryRemoved(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    if-eqz p3, :cond_0

    .line 4
    sget-object p0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->NO_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p3, p0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->removeBitmap()V

    :cond_1
    return-void
.end method

.method public final findAllScaleSliceList(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "newInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$findAllScaleSliceList$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$findAllScaleSliceList$1;-><init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->findAllScaleSliceList(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findAllScaleSliceList(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    .line 5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isCanDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public final findDisplayCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "newInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->findAllScaleSliceList(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$findDisplayCache$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$findDisplayCache$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-nez v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    move-object v5, v1

    :cond_5
    move-object v2, v5

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    :cond_6
    invoke-direct {p0, v2}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->updateLruOrder(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object v2
.end method

.method public getBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->getBitmap(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getSimpleDebugString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getBytePerViewport()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getBytePerViewport()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxViewportCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", currentViewportCount = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, viewportSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->getViewportSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, maxSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    const/high16 v3, 0x100000

    div-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MB\n, currentSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result v1

    div-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MB\n, currentCount = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSizeConfig()Lcom/onyx/android/sdk/geometry/data/SizeConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    return-object p0
.end method

.method public isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    return p0
.end method

.method public final resize(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SizeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SizeConfig;->bitmapCacheMaxByteCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public final safeClearCacheIf(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    const-string v1, "snapshot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->asSequence(Ljava/util/Map;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$safeClearCacheIf$2;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache$safeClearCacheIf$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveBitmapListToCache(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sliceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->saveBitmapToCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->getSuccessList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/SaveBitmapListResult;->getFailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final saveBitmapToCache(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "slice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->beforePut()V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->debugSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "slice not valid, save fail!"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->IN_CACHE:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->updateState(Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copy()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->afterPut()V

    const/4 p0, 0x1

    return p0
.end method

.method public final setSizeConfig(Lcom/onyx/android/sdk/geometry/data/SizeConfig;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SizeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeConfig:Lcom/onyx/android/sdk/geometry/data/SizeConfig;

    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceLruCache;->sizeOf(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->safelyByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method
