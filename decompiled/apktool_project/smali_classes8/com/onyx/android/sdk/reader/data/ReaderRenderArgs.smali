.class public final Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008*\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\r\u00a2\u0006\u0004\u0008S\u0010TJ\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\tH\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\tH\u00c6\u0003J\t\u0010\u000e\u001a\u00020\rH\u00c6\u0003JO\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\rH\u00c6\u0001J\t\u0010\u0017\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0018H\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u00022\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001d\u001a\u0004\u0008!\u0010\u001f\"\u0004\u0008\"\u0010#R\"\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010\u0012\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u001d\u001a\u0004\u00081\u0010\u001f\"\u0004\u00082\u0010#R\"\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010+\u001a\u0004\u00084\u0010-\"\u0004\u00085\u0010/R\"\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R$\u0010B\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR(\u0010K\u001a\u0008\u0012\u0004\u0012\u00020D0C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\"\u0010R\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010Q\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "",
        "",
        "isNeedRender",
        "",
        "component1",
        "component2",
        "",
        "component3",
        "Landroid/graphics/RectF;",
        "component4",
        "component5",
        "component6",
        "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "component7",
        "virtualPageId",
        "path",
        "scale",
        "displayRectF",
        "position",
        "pageRect",
        "renderBackgroundArgs",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Ljava/lang/String;",
        "getVirtualPageId",
        "()Ljava/lang/String;",
        "b",
        "getPath",
        "setPath",
        "(Ljava/lang/String;)V",
        "c",
        "F",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "d",
        "Landroid/graphics/RectF;",
        "getDisplayRectF",
        "()Landroid/graphics/RectF;",
        "setDisplayRectF",
        "(Landroid/graphics/RectF;)V",
        "e",
        "getPosition",
        "setPosition",
        "f",
        "getPageRect",
        "setPageRect",
        "g",
        "Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "getRenderBackgroundArgs",
        "()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;",
        "setRenderBackgroundArgs",
        "(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V",
        "h",
        "Ljava/lang/Float;",
        "getMaxScale",
        "()Ljava/lang/Float;",
        "setMaxScale",
        "(Ljava/lang/Float;)V",
        "maxScale",
        "",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "i",
        "Ljava/util/List;",
        "getSliceInfoList",
        "()Ljava/util/List;",
        "setSliceInfoList",
        "(Ljava/util/List;)V",
        "sliceInfoList",
        "j",
        "Z",
        "getEnableDiskCache",
        "()Z",
        "setEnableDiskCache",
        "(Z)V",
        "enableDiskCache",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V",
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

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:F

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRectF"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRect"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderBackgroundArgs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    .line 9
    iput-object p7, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const-string v0, ""

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 11
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 12
    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 13
    new-instance p7, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    const/4 p8, 0x0

    const/4 p9, 0x3

    const/4 v0, 0x0

    invoke-direct {p7, p8, v0, p9, v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;-><init>(ILandroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->copy(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    return p0
.end method

.method public final component4()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component7()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "virtualPageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "displayRectF"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "position"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageRect"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderBackgroundArgs"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V

    return-object p0
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
    instance-of v1, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    iget v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    iget-object p1, p1, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDisplayRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getEnableDiskCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->j:Z

    return p0
.end method

.method public final getMaxScale()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->h:Ljava/lang/Float;

    return-object p0
.end method

.method public final getPageRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderBackgroundArgs()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    return p0
.end method

.method public final getSliceInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isNeedRender()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->i:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setDisplayRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setEnableDiskCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->j:Z

    return-void
.end method

.method public final setMaxScale(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->h:Ljava/lang/Float;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    return-void
.end method

.method public final setRenderBackgroundArgs(Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    return-void
.end method

.method public final setSliceInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->i:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderRenderArgs(virtualPageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", displayRectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderBackgroundArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->g:Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
