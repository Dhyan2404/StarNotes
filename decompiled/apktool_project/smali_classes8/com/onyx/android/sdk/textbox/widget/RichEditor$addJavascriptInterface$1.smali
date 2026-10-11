.class public final Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/widget/RichEditor;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1",
        "",
        "onEditorSizeChanged",
        "",
        "data",
        "",
        "onInitFinish",
        "success",
        "",
        "onLoadFontResult",
        "code",
        "",
        "onReCallback",
        "content",
        "onReState",
        "onRequestFontFamily",
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


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContainer()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {v3}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getOrientation$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorState()Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RichEditor"

    invoke-virtual {v1, v3, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->onEditorSizeChanged(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitFinish(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->access$getEditorInitListener$p(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;->onInitFinish(Z)V

    :cond_0
    return-void
.end method

.method public final onLoadFontResult(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFontResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RichEditor"

    invoke-virtual {v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onReCallback(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->callback(Ljava/lang/String;)V

    return-void
.end method

.method public final onReState(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->stateCheck(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestFontFamily(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestFontFamily: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "RichEditor"

    invoke-virtual {v0, v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/widget/RichEditor$addJavascriptInterface$1;->a:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/EditorFontLoadEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/event/EditorFontLoadEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
