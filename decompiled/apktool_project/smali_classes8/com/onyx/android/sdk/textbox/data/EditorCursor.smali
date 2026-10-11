.class public final Lcom/onyx/android/sdk/textbox/data/EditorCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008!\u0010\"J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u000c\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0018\u001a\u0004\u0008\u001c\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001aR\u0017\u0010\u000e\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0018\u001a\u0004\u0008 \u0010\u001a\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/EditorCursor;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "x",
        "y",
        "width",
        "height",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "F",
        "getX",
        "()F",
        "b",
        "getY",
        "c",
        "getWidth",
        "d",
        "getHeight",
        "<init>",
        "(FFFF)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    iput p2, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    iput p3, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    iput p4, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/textbox/data/EditorCursor;FFFFILjava/lang/Object;)Lcom/onyx/android/sdk/textbox/data/EditorCursor;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->copy(FFFF)Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    return p0
.end method

.method public final copy(FFFF)Lcom/onyx/android/sdk/textbox/data/EditorCursor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/textbox/data/EditorCursor;-><init>(FFFF)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    iget v3, p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    iget v3, p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    iget v3, p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    iget p1, p1, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBoundingRect(Landroid/content/Context;)Landroid/graphics/RectF;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    invoke-virtual {v0, p1, v2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    invoke-virtual {v0, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result v3

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->revertRenderSize(Landroid/content/Context;F)F

    move-result p0

    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr v3, v1

    add-float/2addr p0, v2

    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EditorCursor(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
