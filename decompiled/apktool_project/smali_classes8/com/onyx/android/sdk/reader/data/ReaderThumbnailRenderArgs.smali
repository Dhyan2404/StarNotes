.class public final Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008+\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008E\u0010FJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\nH\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0004H\u00c6\u0003J[\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0019H\u00d6\u0001J\u0013\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010\u0011\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u001f\u001a\u0004\u00081\u0010!\"\u0004\u00082\u0010#R\"\u0010\u0013\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010+\u001a\u0004\u00084\u0010-\"\u0004\u00085\u0010/R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R$\u0010\u0015\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\"\u0010\u0016\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010%\u001a\u0004\u0008C\u0010\'\"\u0004\u0008D\u0010)\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;",
        "",
        "",
        "component1",
        "",
        "component2",
        "Landroid/graphics/RectF;",
        "component3",
        "component4",
        "component5",
        "Landroid/graphics/Bitmap;",
        "component6",
        "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "component7",
        "component8",
        "path",
        "scale",
        "displayRectF",
        "position",
        "pageRect",
        "bitmap",
        "renderBackgroundArgs",
        "rotation",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "b",
        "F",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "c",
        "Landroid/graphics/RectF;",
        "getDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "d",
        "getPosition",
        "setPosition",
        "e",
        "getPageRect",
        "setPageRect",
        "f",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "g",
        "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "getRenderBackgroundArgs",
        "()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "setRenderBackgroundArgs",
        "(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V",
        "h",
        "getRotation",
        "setRotation",
        "<init>",
        "(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)V",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRect"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    .line 8
    iput-object p7, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    .line 9
    iput p8, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v11, v0

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    move-object v3, p0

    move-object/from16 v9, p6

    .line 12
    invoke-direct/range {v3 .. v11}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;-><init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;FILjava/lang/Object;)Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->copy(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    return p0
.end method

.method public final component3()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component6()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component7()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-object p0
.end method

.method public final component8()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    return p0
.end method

.method public final copy(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRect"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    move-object v1, v0

    move v3, p2

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;-><init>(Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    iget v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    iget p1, p1, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPageRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderBackgroundArgs()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPageRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    return-void
.end method

.method public final setRenderBackgroundArgs(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderThumbnailRenderArgs(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", displayRectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderBackgroundArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->h:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
