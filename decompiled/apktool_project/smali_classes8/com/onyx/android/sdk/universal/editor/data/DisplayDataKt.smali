.class public final Lcom/onyx/android/sdk/universal/editor/data/DisplayDataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "createRenderNode",
        "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "id",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createRenderNode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getUseNativeRenderNode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/node/NativeRenderNode;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/node/NativeRenderNode;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
