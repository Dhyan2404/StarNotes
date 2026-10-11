.class final Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ObjectLruCache;-><init>(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        "kotlin.jvm.PlatformType",
        "MODEL",
        "",
        "RESOURCE",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
            "TMODE",
            "L;",
            "TRESOURCE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 4

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->CACHE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    invoke-static {v3}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->access$getFunctionKey$p(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getDirectory(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode()J

    move-result-wide v2

    long-to-int v0, v2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;->this$0:Lcom/onyx/android/sdk/data/utils/ObjectLruCache;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->access$getMaxCacheSize$p(Lcom/onyx/android/sdk/data/utils/ObjectLruCache;)J

    move-result-wide v2

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache$cache$2;->invoke()Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object p0

    return-object p0
.end method
