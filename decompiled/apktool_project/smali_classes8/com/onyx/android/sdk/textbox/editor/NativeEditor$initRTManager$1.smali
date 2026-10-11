.class public final Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;
.super Lcom/onegravity/rteditor/RTManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->j(Landroid/content/Context;)Lcom/onegravity/rteditor/RTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016JF\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1",
        "Lcom/onegravity/rteditor/RTManager;",
        "onSelectionChanged",
        "",
        "editor",
        "Lcom/onegravity/rteditor/RTEditText;",
        "start",
        "",
        "end",
        "onTextChanged",
        "before",
        "Landroid/text/Spannable;",
        "after",
        "selStartBefore",
        "selEndBefore",
        "selStartAfter",
        "selEndAfter",
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
.field public final synthetic m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/RTApi;Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/RTManager;-><init>(Lcom/onegravity/rteditor/api/RTApi;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(Lcom/onegravity/rteditor/RTEditText;II)V
    .locals 0
    .param p1    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getStyleInfo(Lcom/onegravity/rteditor/RTEditText;II)Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->access$getEventBusHolder$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p2, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Lcom/onegravity/rteditor/RTEditText;Landroid/text/Spannable;Landroid/text/Spannable;IIII)V
    .locals 0
    .param p1    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super/range {p0 .. p7}, Lcom/onegravity/rteditor/RTManager;->onTextChanged(Lcom/onegravity/rteditor/RTEditText;Landroid/text/Spannable;Landroid/text/Spannable;IIII)V

    new-instance p1, Lcom/onyx/android/sdk/textbox/data/EditorContent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/data/EditorContent;-><init>()V

    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->access$getRtEditor$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object p2

    sget-object p3, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-virtual {p2, p3}, Lcom/onegravity/rteditor/RTEditText;->getTextWithComposing(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getTextWithComposing(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setRichText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->access$getRtEditor$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object p2

    sget-object p4, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    invoke-virtual {p2, p4}, Lcom/onegravity/rteditor/RTEditText;->getTextWithComposing(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setPlainText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->access$getEventBusHolder$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;

    invoke-direct {p3, p1}, Lcom/onyx/android/sdk/textbox/event/EditorContentChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;->m:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->access$resizeTextBoxView(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    return-void
.end method
