.class public final Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0017\u0010\t\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "execute",
        "a",
        "",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "path",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "b",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "maxPageSize",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "c",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPageInfo",
        "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "setReaderPageInfo",
        "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V",
        "readerPageInfo",
        "<init>",
        "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxPageSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->b:Lcom/onyx/android/sdk/base/data/Size;

    new-instance p1, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->setPath(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->b:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/Size;->ratioPageSize(Lcom/onyx/android/sdk/base/data/Size;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a()V

    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-object p0
.end method

.method public final setReaderPageInfo(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;->c:Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    return-void
.end method
