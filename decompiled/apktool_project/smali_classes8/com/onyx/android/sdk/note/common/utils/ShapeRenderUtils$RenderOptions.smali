.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderOptions"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;",
        "",
        "",
        "component1",
        "",
        "component2",
        "showExcerptIndicator",
        "extraScale",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Z",
        "getShowExcerptIndicator",
        "()Z",
        "setShowExcerptIndicator",
        "(Z)V",
        "b",
        "F",
        "getExtraScale",
        "()F",
        "setExtraScale",
        "(F)V",
        "<init>",
        "(ZF)V",
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
.field public a:Z

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    iput p2, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    return-void
.end method

.method public synthetic constructor <init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ZFILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->copy(ZF)Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    return p0
.end method

.method public final copy(ZF)Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZF)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    iget p1, p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExtraScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    return p0
.end method

.method public final getShowExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setExtraScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    return-void
.end method

.method public final setShowExcerptIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderOptions(showExcerptIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extraScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
