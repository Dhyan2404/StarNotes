.class public final Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->lambda$getEncoder$0([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->lambda$getDecoder$1(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDecoder$1(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getEncoder$0([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;-><init>(Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;)V

    return-object v0
.end method

.method public getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;-><init>(Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;)V

    return-object v0
.end method
