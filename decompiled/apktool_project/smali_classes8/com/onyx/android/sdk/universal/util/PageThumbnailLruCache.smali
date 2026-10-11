.class public final Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;
.super Lcom/onyx/android/sdk/data/utils/ObjectLruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache<",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;",
        "Lcom/onyx/android/sdk/data/utils/ObjectLruCache;",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Landroid/graphics/Bitmap;",
        "()V",
        "decode",
        "Lio/reactivex/rxjava3/core/Observable;",
        "model",
        "read",
        "file",
        "Ljava/io/File;",
        "write",
        "",
        "resource",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;->INSTANCE:Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "page_thumbnail"

    const-wide/32 v1, 0x40000000

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "model"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "editor bundle is required"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/LoadPageThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;->decode(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

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
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;->read(Ljava/io/File;)Landroid/graphics/Bitmap;

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

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;->write(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
