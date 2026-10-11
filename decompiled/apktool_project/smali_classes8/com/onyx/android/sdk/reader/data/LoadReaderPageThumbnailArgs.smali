.class public final Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "path",
        "",
        "b",
        "I",
        "getPageIndex",
        "()I",
        "pageIndex",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "c",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "Landroid/graphics/RectF;",
        "d",
        "Landroid/graphics/RectF;",
        "getOriginRectF",
        "()Landroid/graphics/RectF;",
        "originRectF",
        "",
        "e",
        "Z",
        "getClearBitmap",
        "()Z",
        "setClearBitmap",
        "(Z)V",
        "clearBitmap",
        "<init>",
        "(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;Z)V",
        "sdk-reader_overseasRelease"
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

.field public final b:I

.field public final c:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->b:I

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->c:Lcom/onyx/android/sdk/base/data/Size;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->d:Landroid/graphics/RectF;

    .line 6
    iput-boolean p5, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public final getClearBitmap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->e:Z

    return p0
.end method

.method public final getOriginRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->b:I

    return p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->c:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final setClearBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;->e:Z

    return-void
.end method
