.class public interface abstract Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/view/SplitScreenListener;",
        "",
        "exitSplitScreen",
        "",
        "goneView",
        "Landroid/view/View;",
        "getSplitScreenSize",
        "Landroid/graphics/RectF;",
        "position",
        "Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;",
        "isEnabledSplitScreen",
        "",
        "splitScreen",
        "editorView",
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


# virtual methods
.method public abstract exitSplitScreen(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getSplitScreenSize(Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isEnabledSplitScreen()Z
.end method

.method public abstract splitScreen(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
