.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/ImageHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ImageHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "onActivate",
        "",
        "updateTouchMode",
        "touchMode",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public onActivate()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ImageShapeHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/ImageShapeHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    return-void
.end method

.method public updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->STYLUS_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method
