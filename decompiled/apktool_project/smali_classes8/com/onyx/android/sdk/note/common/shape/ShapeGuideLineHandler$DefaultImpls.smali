.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onDown(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchPointInPage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onMove(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "touchPointInPage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static onUp(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchPointInPage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static render(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static updateRenderContext(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
