.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J3\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\"\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
        "",
        "Landroid/graphics/Bitmap;",
        "component1",
        "Landroid/graphics/RectF;",
        "component2",
        "component3",
        "",
        "component4",
        "bitmap",
        "scaleBoundingRect",
        "originBoundingRectF",
        "actualScale",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "b",
        "Landroid/graphics/RectF;",
        "getScaleBoundingRect",
        "()Landroid/graphics/RectF;",
        "setScaleBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "c",
        "getOriginBoundingRectF",
        "setOriginBoundingRectF",
        "d",
        "F",
        "getActualScale",
        "()F",
        "setActualScale",
        "(F)V",
        "e",
        "getViewBitmapScale",
        "setViewBitmapScale",
        "viewBitmapScale",
        "<init>",
        "(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scaleBoundingRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originBoundingRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->e:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 9
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/high16 p4, 0x3f800000    # 1.0f

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->copy(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component2()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component3()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    return p0
.end method

.method public final copy(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "scaleBoundingRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originBoundingRectF"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    iget p1, p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getActualScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    return p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getOriginBoundingRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getScaleBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getViewBitmapScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->e:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setActualScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOriginBoundingRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    return-void
.end method

.method public final setScaleBoundingRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setViewBitmapScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->e:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderBoundingRectResult(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleBoundingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originBoundingRectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
