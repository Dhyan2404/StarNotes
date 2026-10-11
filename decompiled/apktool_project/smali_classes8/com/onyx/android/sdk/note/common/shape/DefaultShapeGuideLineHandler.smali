.class public final Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;",
        "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;->onDown(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;->onMove(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;->onUp(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;->render(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method

.method public updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler$DefaultImpls;->updateRenderContext(Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method
