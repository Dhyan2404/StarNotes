.class public final Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/utils/ImageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderArgs"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u001d\u00a2\u0006\u0004\u0008#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018R\u0017\u0010\"\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "path",
        "Landroid/graphics/Bitmap;",
        "b",
        "Landroid/graphics/Bitmap;",
        "getViewportBitmap",
        "()Landroid/graphics/Bitmap;",
        "viewportBitmap",
        "Landroid/graphics/RectF;",
        "c",
        "Landroid/graphics/RectF;",
        "getDisplayRect",
        "()Landroid/graphics/RectF;",
        "displayRect",
        "",
        "d",
        "F",
        "getScale",
        "()F",
        "scale",
        "e",
        "getRotation",
        "rotation",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "f",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "getImageSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "<init>",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V",
        "sdk-base_release"
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

.field public final b:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:F

.field public final e:F

.field public final f:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewportBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSize"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->b:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->c:Landroid/graphics/RectF;

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->d:F

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->e:F

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->f:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    .line 8
    new-instance p6, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p5, 0x0

    invoke-direct {p6, p5, p5}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method


# virtual methods
.method public final getDisplayRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getImageSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->f:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->e:F

    return p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->d:F

    return p0
.end method

.method public final getViewportBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method
