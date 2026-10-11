.class public final Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/editor/IEditor;
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
.method public static finishEditObservable(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static loadFinalContent(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/textbox/data/EditorContent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/data/EditorContent;-><init>()V

    return-object p0
.end method

.method public static onEditorTouchEvent(Lcom/onyx/android/sdk/textbox/editor/IEditor;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static setTextOrientation(Lcom/onyx/android/sdk/textbox/editor/IEditor;I)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static supportMultiTextOrientation(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static supportRenderCache(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/textbox/editor/IEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
