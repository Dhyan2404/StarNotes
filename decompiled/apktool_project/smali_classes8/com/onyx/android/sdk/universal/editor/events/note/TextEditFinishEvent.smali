.class public final Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008&\u0010\'J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0006H\u00c6\u0003J3\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\"\u0010\u000c\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u001f\u001a\u0004\u0008#\u0010!\"\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "component1",
        "Landroid/graphics/RectF;",
        "component2",
        "",
        "component3",
        "component4",
        "shape",
        "renderRect",
        "renderShapes",
        "saveShape",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "b",
        "Landroid/graphics/RectF;",
        "getRenderRect",
        "()Landroid/graphics/RectF;",
        "setRenderRect",
        "(Landroid/graphics/RectF;)V",
        "c",
        "Z",
        "getRenderShapes",
        "()Z",
        "d",
        "getSaveShape",
        "setSaveShape",
        "(Z)V",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V",
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
.field public final a:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->copy(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final component2()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getRenderRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRenderShapes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    return p0
.end method

.method public final getSaveShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    return p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setRenderRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSaveShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextEditFinishEvent(shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderShapes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", saveShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
