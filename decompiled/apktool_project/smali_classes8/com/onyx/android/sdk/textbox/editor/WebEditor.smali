.class public final Lcom/onyx/android/sdk/textbox/editor/WebEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/textbox/editor/IEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/editor/WebEditor$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010W\u001a\u00020R\u00a2\u0006\u0004\u0008a\u0010bJ\u001e\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\r\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0008\u0010\u001f\u001a\u00020\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0019H\u0016J\u0008\u0010!\u001a\u00020\u0019H\u0016J\u0008\u0010\"\u001a\u00020\u0019H\u0016J\u0008\u0010#\u001a\u00020\u0019H\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0016J\u0008\u0010%\u001a\u00020\u0019H\u0016J\u0012\u0010(\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\'\u001a\u00020&H\u0016J\u0008\u0010)\u001a\u00020\u0006H\u0016J\u0018\u0010-\u001a\u00020\u00032\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010+\u001a\u00020*2\u0006\u0010.\u001a\u00020\u0012H\u0016J\u001e\u00102\u001a\u00020\u00062\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u00101\u001a\u000200H\u0016J\u0018\u00105\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0003H\u0016J\u0008\u00106\u001a\u00020\u0006H\u0016J(\u00105\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u00032\u0010\u0008\u0002\u00109\u001a\n\u0012\u0004\u0012\u000208\u0018\u000107J\u0008\u0010:\u001a\u00020\u0006H\u0016J\u000e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00030;H\u0016J\u0008\u0010=\u001a\u00020\u0006H\u0016J\u0018\u0010@\u001a\u00020\u00062\u0006\u0010>\u001a\u0002082\u0006\u0010?\u001a\u000208H\u0016J\u0010\u0010A\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010B\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010C\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0003H\u0016J\u0010\u0010E\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u0019H\u0016J\u0010\u0010G\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u0012H\u0016J\u0010\u0010I\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u0019H\u0016J\u0010\u0010K\u001a\u00020\u00062\u0006\u0010J\u001a\u000208H\u0016J\u0010\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u000208H\u0016J \u0010O\u001a\u00020\u00062\u0006\u0010>\u001a\u0002082\u0006\u0010?\u001a\u0002082\u0006\u0010N\u001a\u000208H\u0016J\u0008\u0010P\u001a\u00020\u0006H\u0016J\u0008\u0010Q\u001a\u00020\u0006H\u0016R\u0017\u0010W\u001a\u00020R8\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0014\u0010]\u001a\u00020X8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\\\u0010ZR\u0014\u0010`\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_\u00a8\u0006c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/editor/WebEditor;",
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "subject",
        "editForAll",
        "",
        "i",
        "k",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor;",
        "getEditorView",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "holder",
        "setEventBusHolder",
        "Landroid/graphics/RectF;",
        "rectF",
        "setLimitRect",
        "getLimitRect",
        "",
        "cursorColor",
        "setCaretColor",
        "orientation",
        "setTextOrientation",
        "supportMultiTextOrientation",
        "supportRenderCache",
        "",
        "scaleX",
        "scaleY",
        "setScale",
        "rotate",
        "setRotate",
        "getRotate",
        "getEditorMinWidth",
        "getEditorMinHeight",
        "getEditorViewWidth",
        "getEditorViewHeight",
        "getEditorContentWidth",
        "getEditorContentHeight",
        "Landroid/content/Context;",
        "context",
        "getCursorPosition",
        "onStartMoving",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "sizeInfo",
        "contentWidth",
        "adjustEditorWidth",
        "contentHeight",
        "adjustEditorHeight",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "args",
        "startEdit",
        "enable",
        "readOnly",
        "enableEdit",
        "finishEdit",
        "Landroid/webkit/ValueCallback;",
        "",
        "callback",
        "showEditorView",
        "Lio/reactivex/rxjava3/core/Observable;",
        "finishEditObservable",
        "destroy",
        "fontFamily",
        "fontPath",
        "reloadFont",
        "setBold",
        "setItalic",
        "setUnderline",
        "fontSize",
        "setFontSize",
        "fontColor",
        "setFontColor",
        "spacingMulti",
        "setLineSpacing",
        "content",
        "insertText",
        "alignType",
        "setTextAlign",
        "fontType",
        "setFontFace",
        "convert2Traditional",
        "convert2Simplified",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "e",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBox",
        "",
        "f",
        "J",
        "VISUAL_REQUEST_ID",
        "g",
        "SHOW_KEYBOARD_DELAY_TIME",
        "h",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor;",
        "richEditor",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:J

.field public final g:J

.field public final h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    const-wide/16 v0, 0x3e7

    iput-wide v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->f:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->g:J

    new-instance v0, Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setBackgroundColor(I)V

    new-instance p1, Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$1;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setOnTextChangeListener(Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnTextChangeListener;)V

    new-instance p1, Lcom/sunia/HTREnginev2/e6o;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/e6o;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->l(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    return-object p0
.end method

.method public static final synthetic access$getVISUAL_REQUEST_ID$p(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->f:J

    return-wide v0
.end method

.method public static final synthetic access$requestVisualState(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->i(Lio/reactivex/rxjava3/subjects/PublishSubject;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->j(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    return-void
.end method

.method public static synthetic c(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->g(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->f(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic enableEdit$default(Lcom/onyx/android/sdk/textbox/editor/WebEditor;ZZLandroid/webkit/ValueCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->enableEdit(ZZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance p1, Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->postEvent(Ljava/lang/Object;)V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final g(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p1, ""

    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static final j(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->k()V

    return-void
.end method

.method public static final l(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Ljava/lang/String;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->showForcedInputKeyboard(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public adjustEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->adjustEditorHeight(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z

    move-result p0

    return p0
.end method

.method public adjustEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->adjustEditorWidth(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z

    move-result p0

    return p0
.end method

.method public convert2Simplified()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convert2Simplified()V

    return-void
.end method

.method public convert2Traditional()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->convert2Traditional()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/WebViewKt;->safelyDestroy(Landroid/webkit/WebView;)V

    return-void
.end method

.method public enableEdit(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->enableEdit(ZZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final enableEdit(ZZLandroid/webkit/ValueCallback;)V
    .locals 2
    .param p3    # Landroid/webkit/ValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/textbox/data/EditorState;->EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    xor-int/lit8 p1, p2, 0x1

    new-instance p2, Lcom/sunia/HTREnginev2/c6o;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/c6o;-><init>(Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setInputEnabled(ZLandroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 5
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 6
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->reset()V

    .line 7
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setSizeChangeCallbackEnable(Z)V

    .line 8
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->clearFocusEditor()V

    .line 9
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->clear()V

    .line 10
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->clearHtml()V

    .line 11
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setInputEnabled(ZLandroid/webkit/ValueCallback;)V

    .line 12
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance p2, Lcom/sunia/HTREnginev2/d6o;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/d6o;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    iget-wide v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->g:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public finishEdit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->enableEdit(ZZ)V

    return-void
.end method

.method public finishEditObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/EditorState;->RENDER:Lcom/onyx/android/sdk/textbox/data/EditorState;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->clearEditState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/editor/WebEditor$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$a;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCursorPosition(Landroid/content/Context;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getCursor()Lcom/onyx/android/sdk/textbox/data/EditorCursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/EditorCursor;->getBoundingRect(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEditorContentHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContentHeight()F

    move-result p0

    return p0
.end method

.method public getEditorContentWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorContentWidth()F

    move-result p0

    return p0
.end method

.method public getEditorMinHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorMinHeight()F

    move-result p0

    return p0
.end method

.method public getEditorMinWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getEditorMinWidth()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getEditorView()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->getEditorView()Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p0

    return-object p0
.end method

.method public getEditorView()Lcom/onyx/android/sdk/textbox/widget/RichEditor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    return-object p0
.end method

.method public getEditorViewHeight()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleY()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getEditorViewWidth()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getRotate()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->Companion:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;->getORIENTATION_VERTICAL_ANGLE()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
.end method

.method public final i(Lio/reactivex/rxjava3/subjects/PublishSubject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-wide v1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->f:J

    new-instance v3, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$requestVisualState$1;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;ZLio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->insertText(Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance v1, Lcom/sunia/HTREnginev2/g6o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g6o;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->focusEditor(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public loadFinalContent()Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->loadFinalContent(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Lcom/onyx/android/sdk/textbox/data/EditorContent;

    move-result-object p0

    return-object p0
.end method

.method public onEditorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->onEditorTouchEvent(Lcom/onyx/android/sdk/textbox/editor/IEditor;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onStartMoving()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->destroyActionMode()V

    return-void
.end method

.method public reloadFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->reloadFont(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setBold(Z)V

    return-void
.end method

.method public setCaretColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setCaretColor(I)V

    return-void
.end method

.method public setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V

    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setTextColor(IZ)V

    return-void
.end method

.method public setFontFace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setCustomFontFamilyWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setFontSize(FZ)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setItalic(Z)V

    return-void
.end method

.method public setLimitRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setLimitRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getLineHeight(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setLineHeight(F)V

    return-void
.end method

.method public setRotate(F)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->Companion:Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;->getORIENTATION_VERTICAL_ANGLE()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setScale(FFLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "alignType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->fromValue(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextAlignType;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/textbox/editor/WebEditor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setAlignCenter()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setAlignRight()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setAlignLeft()V

    :goto_0
    return-void
.end method

.method public setTextOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setEditorOrientation(I)V

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setUnderline(Z)V

    return-void
.end method

.method public showEditorView()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v1, Lcom/sunia/HTREnginev2/f6o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f6o;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V

    iget-wide v2, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startEdit(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/subjects/PublishSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "subject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance v1, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/WebEditor$startEdit$1;-><init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setEditorInitListener(Lcom/onyx/android/sdk/textbox/widget/RichEditor$OnEditorInitListener;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->setMode(Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->h:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->init(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method

.method public supportMultiTextOrientation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRenderCache()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
