.class public final Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompatRenderNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,82:1\n47#2,8:83\n*S KotlinDebug\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n*L\n74#1:83,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0006\u0010\u0012\u001a\u00020\u0004R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R$\u0010*\u001a\u00020$2\u0006\u0010%\u001a\u00020$8V@RX\u0096\u000e\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R$\u0010-\u001a\u00020$2\u0006\u0010%\u001a\u00020$8V@RX\u0096\u000e\u00a2\u0006\u000c\n\u0004\u0008+\u0010\'\u001a\u0004\u0008,\u0010)R*\u00106\u001a\u00020.2\u0006\u0010/\u001a\u00020.8V@VX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010:\u001a\u00020.8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00101\u001a\u0004\u00088\u00103\"\u0004\u00089\u00105R\"\u0010>\u001a\u00020.8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u00101\u001a\u0004\u0008<\u00103\"\u0004\u0008=\u00105R\u0014\u0010@\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u0017\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;",
        "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "Landroid/util/Size;",
        "size",
        "",
        "discardDisplayList",
        "",
        "hasDisplayList",
        "Landroid/graphics/Canvas;",
        "beginRecording",
        "endRecording",
        "Landroid/graphics/Rect;",
        "rect",
        "setPosition",
        "clip",
        "setClipToBounds",
        "canvas",
        "drawInto",
        "destroy",
        "",
        "a",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "id",
        "Landroid/graphics/Picture;",
        "b",
        "Landroid/graphics/Picture;",
        "getPicture",
        "()Landroid/graphics/Picture;",
        "setPicture",
        "(Landroid/graphics/Picture;)V",
        "picture",
        "c",
        "Landroid/graphics/Rect;",
        "nodeRect",
        "",
        "<set-?>",
        "d",
        "I",
        "getWidth",
        "()I",
        "width",
        "e",
        "getHeight",
        "height",
        "",
        "value",
        "f",
        "F",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "alpha",
        "g",
        "getTranslationX",
        "setTranslationX",
        "translationX",
        "h",
        "getTranslationY",
        "setTranslationY",
        "translationY",
        "getUniqueId",
        "uniqueId",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompatRenderNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,82:1\n47#2,8:83\n*S KotlinDebug\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n*L\n74#1:83,8\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/Picture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->a:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->f:F

    return-void
.end method


# virtual methods
.method public beginRecording()Landroid/graphics/Canvas;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->discardDisplayList()V

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    const-string v0, "let(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->discardDisplayList()V

    return-void
.end method

.method public discardDisplayList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    return-void
.end method

.method public drawInto(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->getTranslationY()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public endRecording()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getPicture()Landroid/graphics/Picture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    return-object p0
.end method

.method public getTranslationX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->g:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->h:F

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public hasDisplayList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->f:F

    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 0

    return-void
.end method

.method public final setPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1    # Landroid/graphics/Picture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->b:Landroid/graphics/Picture;

    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->g:F

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->h:F

    return-void
.end method

.method public size()Landroid/util/Size;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method
