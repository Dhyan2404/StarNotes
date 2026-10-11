.class public final Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010#\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u001b\u0012\u0006\u0010*\u001a\u00020#\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0005\u001a\u0004\u0008,\u0010\u0007\"\u0004\u0008-\u0010\tR\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010:\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00101\u001a\u0004\u00088\u00103\"\u0004\u00089\u00105R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\"\u0010F\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u00101\u001a\u0004\u0008D\u00103\"\u0004\u0008E\u00105R\"\u0010J\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u00101\u001a\u0004\u0008H\u00103\"\u0004\u0008I\u00105R*\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010V\u001a\u00020/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u00101\u001a\u0004\u0008T\u00103\"\u0004\u0008U\u00105R\"\u0010^\u001a\u00020W8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]\u00a8\u0006a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;",
        "",
        "Landroid/graphics/RectF;",
        "getClipRectFOrBitmapBoundingRectF",
        "a",
        "Landroid/graphics/RectF;",
        "getDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "displayRectF",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "b",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "virtualPageBoxInfo",
        "",
        "c",
        "Ljava/lang/String;",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "pageId",
        "",
        "d",
        "F",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "scale",
        "Landroid/graphics/Bitmap;",
        "e",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "f",
        "getClipRectF",
        "setClipRectF",
        "clipRectF",
        "",
        "g",
        "Z",
        "getShowExcerptIndicator",
        "()Z",
        "setShowExcerptIndicator",
        "(Z)V",
        "showExcerptIndicator",
        "h",
        "getShowTape",
        "setShowTape",
        "showTape",
        "",
        "i",
        "I",
        "getLayerId",
        "()I",
        "setLayerId",
        "(I)V",
        "layerId",
        "j",
        "getRenderPageMarin",
        "setRenderPageMarin",
        "renderPageMarin",
        "k",
        "getRenderReferenceShape",
        "setRenderReferenceShape",
        "renderReferenceShape",
        "",
        "l",
        "Ljava/util/Set;",
        "getRenderedShapeIds",
        "()Ljava/util/Set;",
        "setRenderedShapeIds",
        "(Ljava/util/Set;)V",
        "renderedShapeIds",
        "m",
        "getRenderOutOfPageShape",
        "setRenderOutOfPageShape",
        "renderOutOfPageShape",
        "Landroid/graphics/Matrix;",
        "n",
        "Landroid/graphics/Matrix;",
        "getRotationMatrix",
        "()Landroid/graphics/Matrix;",
        "setRotationMatrix",
        "(Landroid/graphics/Matrix;)V",
        "rotationMatrix",
        "<init>",
        "(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Z

.field public n:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "displayRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipRectF"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->a:Landroid/graphics/RectF;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->d:F

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->e:Landroid/graphics/Bitmap;

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->f:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->g:Z

    .line 9
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->h:Z

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->i:I

    .line 11
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->j:Z

    .line 12
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->k:Z

    .line 13
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->m:Z

    .line 14
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_1

    const-string p3, ""

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_2
    move v4, p4

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_3

    .line 16
    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;-><init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getClipRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getClipRectFOrBitmapBoundingRectF()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->e:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->i:I

    return p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderOutOfPageShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->m:Z

    return p0
.end method

.method public final getRenderPageMarin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->j:Z

    return p0
.end method

.method public final getRenderReferenceShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->k:Z

    return p0
.end method

.method public final getRenderedShapeIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->l:Ljava/util/Set;

    return-object p0
.end method

.method public final getRotationMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->d:F

    return p0
.end method

.method public final getShowExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->g:Z

    return p0
.end method

.method public final getShowTape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->h:Z

    return p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setClipRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public final setDisplayRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public final setLayerId(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->i:I

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->c:Ljava/lang/String;

    return-void
.end method

.method public final setRenderOutOfPageShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->m:Z

    return-void
.end method

.method public final setRenderPageMarin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->j:Z

    return-void
.end method

.method public final setRenderReferenceShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->k:Z

    return-void
.end method

.method public final setRenderedShapeIds(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->l:Ljava/util/Set;

    return-void
.end method

.method public final setRotationMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->d:F

    return-void
.end method

.method public final setShowExcerptIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->g:Z

    return-void
.end method

.method public final setShowTape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->h:Z

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->b:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
