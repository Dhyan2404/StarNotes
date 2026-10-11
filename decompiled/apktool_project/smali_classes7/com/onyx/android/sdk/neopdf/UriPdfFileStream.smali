.class public Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;
.super Lcom/onyx/android/sdk/neopdf/PdfFileStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfFileStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n526#3:80\n511#3,6:81\n2333#4,14:87\n*S KotlinDebug\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n*L\n49#1:80\n49#1:81,6\n50#1:87,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001\u0013\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0006\u0010\t\u001a\u00020\u0008J\n\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;",
        "Lcom/onyx/android/sdk/neopdf/PdfFileStream;",
        "",
        "length",
        "position",
        "",
        "buffer",
        "read",
        "",
        "close",
        "Ljava/io/InputStream;",
        "a",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Landroid/net/Uri;",
        "b",
        "Landroid/net/Uri;",
        "uri",
        "com/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1",
        "c",
        "Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;",
        "inputStreamLru",
        "<init>",
        "(Landroid/content/Context;Landroid/net/Uri;)V",
        "sdk-neopdf_release"
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
        "SMAP\nPdfFileStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n526#3:80\n511#3,6:81\n2333#4,14:87\n*S KotlinDebug\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n*L\n49#1:80\n49#1:81,6\n50#1:87,14\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/neopdf/PdfFileStream;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->b:Landroid/net/Uri;

    new-instance p1, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    invoke-direct {p1}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    return-void
.end method

.method public static final synthetic access$open(Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->a()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->b:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close pdf streams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public length()J
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$length$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$length$2;-><init>(Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(J[B)J
    .locals 10
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    return-wide v0

    :cond_0
    array-length v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "<get-value>(...)"

    if-eqz v6, :cond_5

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-gtz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-interface {v5, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_9

    move-object v3, v6

    move-object v5, v8

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    :goto_3
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    goto :goto_4

    :cond_b
    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :cond_c
    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {v4, p3}, Ljava/io/InputStream;->read([B)I

    move-result p3

    int-to-long v0, p3

    :cond_d
    if-eqz v4, :cond_e

    iget-object p3, p0, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->c:Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;->close()V

    throw p1
.end method
