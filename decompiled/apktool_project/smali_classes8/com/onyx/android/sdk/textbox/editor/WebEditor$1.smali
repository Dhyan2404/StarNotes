.class public final Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/editor/WebEditor;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/android/sdk/textbox/editor/WebEditor$1",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;",
        "onTextChange",
        "",
        "text",
        "",
        "onTextSizeChange",
        "layoutInfo",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
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
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->trimNewlineSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorContent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/data/EditorContent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setRichText(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/HtmlUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->getHtmlTextContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setPlainText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextSizeChange(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/textbox/event/EditorLayoutChangeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/event/EditorLayoutChangeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
