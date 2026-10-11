.class public interface abstract Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTransformListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;",
        "",
        "onTransformFinish",
        "",
        "type",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "onTransformStart",
        "sdk-textbox_overseasRelease"
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
.method public abstract onTransformFinish(Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onTransformStart(Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
