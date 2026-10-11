.class public final Lcom/onyx/android/sdk/textbox/editor/NativeEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/textbox/editor/IEditor;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,482:1\n337#2:483\n*S KotlinDebug\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n*L\n253#1:483\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010h\u001a\u00020c\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016JP\u0010\"\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0011H\u0016J\u0008\u0010$\u001a\u00020#H\u0016J\u0012\u0010\'\u001a\u00020\u00072\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(H\u0016J\u0008\u0010+\u001a\u00020(H\u0016J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0011H\u0016J\u0018\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.H\u0016J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u00020.H\u0016J\u0008\u00104\u001a\u00020.H\u0016J\u0008\u00105\u001a\u00020.H\u0016J\u0008\u00106\u001a\u00020.H\u0016J\u0008\u00107\u001a\u00020.H\u0016J\u0008\u00108\u001a\u00020.H\u0016J\u0008\u00109\u001a\u00020.H\u0016J\u0008\u0010:\u001a\u00020.H\u0016J\u0010\u0010;\u001a\u00020(2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010<\u001a\u00020\u0007H\u0016J\u0018\u0010@\u001a\u00020\r2\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0011H\u0016J\u0018\u0010B\u001a\u00020\r2\u0006\u0010>\u001a\u00020=2\u0006\u0010A\u001a\u00020\u0011H\u0016J\u001e\u0010E\u001a\u00020\u00072\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\r0C2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010H\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rH\u0016J\u0008\u0010I\u001a\u00020\u0007H\u0016J\u0008\u0010J\u001a\u00020\u0007H\u0016J\u0008\u0010L\u001a\u00020KH\u0016J\u0008\u0010M\u001a\u00020\u0007H\u0016J\u0018\u0010Q\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020NH\u0016J\u0010\u0010R\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010S\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\rH\u0016J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020.H\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u0011H\u0016J\u0010\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020.H\u0016J\u0010\u0010\\\u001a\u00020\u00072\u0006\u0010[\u001a\u00020NH\u0016J\u0010\u0010^\u001a\u00020\u00072\u0006\u0010]\u001a\u00020NH\u0016J \u0010`\u001a\u00020\u00072\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020N2\u0006\u0010_\u001a\u00020NH\u0016J\u0008\u0010a\u001a\u00020\u0007H\u0016J\u0008\u0010b\u001a\u00020\u0007H\u0016R\u0017\u0010h\u001a\u00020c8\u0006\u00a2\u0006\u000c\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010gR\u0014\u0010j\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010iR\u0014\u0010l\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010kR\u0018\u0010o\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0016\u0010r\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0014\u0010u\u001a\u00020s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010tR\u0014\u0010x\u001a\u00020v8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010wR\u0014\u0010{\u001a\u00020y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010zR\u0016\u0010}\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010|\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/editor/NativeEditor;",
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onegravity/rteditor/RTManager;",
        "j",
        "",
        "g",
        "n",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "args",
        "o",
        "",
        "editable",
        "m",
        "f",
        "",
        "action",
        "k",
        "Landroid/view/MotionEvent;",
        "l",
        "event",
        "onEditorTouchEvent",
        "Landroid/view/View;",
        "v",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onLayoutChange",
        "Lcom/onegravity/rteditor/RTEditText;",
        "getEditorView",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "holder",
        "setEventBusHolder",
        "Landroid/graphics/RectF;",
        "rectF",
        "setLimitRect",
        "getLimitRect",
        "cursorColor",
        "setCaretColor",
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
        "getCursorPosition",
        "onStartMoving",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "sizeInfo",
        "contentWidth",
        "adjustEditorWidth",
        "contentHeight",
        "adjustEditorHeight",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "subject",
        "startEdit",
        "enable",
        "readOnly",
        "enableEdit",
        "showEditorView",
        "finishEdit",
        "Lcom/onyx/android/sdk/textbox/data/EditorContent;",
        "loadFinalContent",
        "destroy",
        "",
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
        "Lcom/onegravity/rteditor/RTManager;",
        "rtManager",
        "Lcom/onegravity/rteditor/RTEditText;",
        "rtEditor",
        "h",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "i",
        "Landroid/graphics/RectF;",
        "limitRect",
        "Landroidx/core/view/GestureDetectorCompat;",
        "Landroidx/core/view/GestureDetectorCompat;",
        "gestureDetector",
        "Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;",
        "Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;",
        "gestureListener",
        "Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;",
        "Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;",
        "lengthFilter",
        "I",
        "lastMotionAction",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,482:1\n337#2:483\n*S KotlinDebug\n*F\n+ 1 NativeEditor.kt\ncom/onyx/android/sdk/textbox/editor/NativeEditor\n*L\n253#1:483\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onegravity/rteditor/RTManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onegravity/rteditor/RTEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->i:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->m:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->initEditor(Landroid/content/Context;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v3, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;

    invoke-direct {v3, p1, v1}, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onegravity/rteditor/RTEditText;)V

    iput-object v3, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->l:Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    new-instance v3, Lcom/onyx/android/sdk/textbox/filter/LineBreakFilter;

    invoke-direct {v3}, Lcom/onyx/android/sdk/textbox/filter/LineBreakFilter;-><init>()V

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->j(Landroid/content/Context;)Lcom/onegravity/rteditor/RTManager;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    invoke-virtual {v2, v1, v0}, Lcom/onegravity/rteditor/RTManager;->registerEditor(Lcom/onegravity/rteditor/RTEditText;Z)V

    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->k:Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;

    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->j:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->i(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEventBusHolder$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->h:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method

.method public static final synthetic access$getRtEditor$p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)Lcom/onegravity/rteditor/RTEditText;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    return-object p0
.end method

.method public static final synthetic access$resizeTextBoxView(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->n()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->r(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->h(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->q(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    return-void
.end method

.method public static final h(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;ILandroid/view/KeyEvent;)Z
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

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->h:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final i(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->onEditorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final p(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->n()V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->n()V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->showForcedInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->o(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

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

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    int-to-float p2, p2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateHeight(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x1

    return p0
.end method

.method public adjustEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sizeInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public convert2Simplified()V
    .locals 0

    return-void
.end method

.method public convert2Traditional()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/RTManager;->unregisterEditor(Lcom/onegravity/rteditor/RTEditText;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/RTManager;->onDestroy(Z)V

    return-void
.end method

.method public enableEdit(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f()V

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->m(Z)V

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->k:Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    if-eqz p2, :cond_4

    sget-object p1, Lcom/onyx/android/sdk/textbox/data/EditorState;->READ_ONLY:Lcom/onyx/android/sdk/textbox/data/EditorState;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/onyx/android/sdk/textbox/data/EditorState;->EDITING:Lcom/onyx/android/sdk/textbox/data/EditorState;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->m:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->m:I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->l()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public finishEdit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->enableEdit(ZZ)V

    return-void
.end method

.method public finishEditObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
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

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->finishEditObservable(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/ssj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ssj;-><init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/tsj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tsj;-><init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getCursorPosition(Landroid/content/Context;)Landroid/graphics/RectF;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Lcom/onegravity/rteditor/utils/Selection;

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-direct {p1, v0}, Lcom/onegravity/rteditor/utils/Selection;-><init>(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-eq p1, v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;FF)V

    return-object p1
.end method

.method public getEditorContentHeight()F
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-static {v1, v0, v3}, Lcom/sunia/HTREnginev2/psj;->a(Landroid/text/Layout;IZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getEditorContentWidth()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getEditorMinHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getEditorMinWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getEditorView()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->getEditorView()Lcom/onegravity/rteditor/RTEditText;

    move-result-object p0

    return-object p0
.end method

.method public getEditorView()Lcom/onegravity/rteditor/RTEditText;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    return-object p0
.end method

.method public getEditorViewHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getEditorViewWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getRotate()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0
.end method

.method public final getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    :cond_0
    if-ge v1, v0, :cond_1

    move v1, v0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    :goto_0
    return-void
.end method

.method public final j(Landroid/content/Context;)Lcom/onegravity/rteditor/RTManager;
    .locals 3

    new-instance v0, Lcom/onegravity/rteditor/api/RTApi;

    new-instance v1, Lcom/onegravity/rteditor/api/DefaultProxyImpl;

    invoke-direct {v1}, Lcom/onegravity/rteditor/api/DefaultProxyImpl;-><init>()V

    new-instance v2, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;

    invoke-direct {v2, p1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/onegravity/rteditor/api/RTApi;-><init>(Landroid/content/Context;Lcom/onegravity/rteditor/api/RTProxy;Lcom/onegravity/rteditor/api/RTMediaFactory;)V

    new-instance p1, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor$initRTManager$1;-><init>(Lcom/onegravity/rteditor/api/RTApi;Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    return-object p1
.end method

.method public final k(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final l()Landroid/view/MotionEvent;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const-string v0, "obtain(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public loadFinalContent()Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/EditorContent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/data/EditorContent;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v2, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-virtual {v1, v2}, Lcom/onegravity/rteditor/RTEditText;->getText(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setRichText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v1, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    invoke-virtual {p0, v1}, Lcom/onegravity/rteditor/RTEditText;->getText(Lcom/onegravity/rteditor/api/format/RTFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/textbox/data/EditorContent;->setPlainText(Ljava/lang/String;)V

    return-object v0
.end method

.method public final m(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/qsj;->a(Lcom/onegravity/rteditor/RTEditText;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editor layout is null, content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content size, w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v4, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->setWidth(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderSize(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->setHeight(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getMode()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->resizeEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getAlignType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->setTextAlign(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->isBold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->setBold(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->isItalic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->setItalic(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->isUnderline()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->setUnderline(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getStyleInfo(Lcom/onegravity/rteditor/RTEditText;II)Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->h:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/textbox/event/SelectionChangeEvent;-><init>(Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEditorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->m:I

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->j:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isCancelAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->k:Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->onUp(Landroid/view/MotionEvent;)V

    :cond_1
    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p2, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onLayoutChange: old w="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", new w="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", old h="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", new h="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p6, 0x0

    new-array p6, p6, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, p6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne p8, p4, :cond_0

    if-eq p9, p5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->n()V

    :cond_1
    return-void
.end method

.method public onStartMoving()V
    .locals 0

    return-void
.end method

.method public reloadFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fontFamily"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fontPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->BOLD:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->BOLD:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "BOLD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCaretColor(I)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/textbox/R$dimen;->default_cursor_width:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lcom/onyx/android/sdk/textbox/R$integer;->editor_cursor_min_width_px:I

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    float-to-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEventBusHolder(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->h:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-void
.end method

.method public setFontColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTCOLOR:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "FONTCOLOR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setFontFace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    invoke-static {p1}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p3, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find typeface with path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "default"

    invoke-static {p1}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object p2, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    const-string p3, "TYPEFACE"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object p2, Lcom/onegravity/rteditor/effects/Effects;->TYPEFACE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-virtual {p0, p2, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "FONTSIZE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->FONTSIZE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ITALIC:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ITALIC:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "ITALIC"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :goto_0
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

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v0, Lcom/sunia/HTREnginev2/vsj;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vsj;-><init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRotate(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setScale(FF)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "alignType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->toAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    const-string v1, "ALIGNMENT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->toTextAlignment(Landroid/text/Layout$Alignment;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTextAlignment(I)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->ALIGNMENT:Lcom/onegravity/rteditor/effects/AlignmentEffect;

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    return-void
.end method

.method public setTextOrientation(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->setTextOrientation(Lcom/onyx/android/sdk/textbox/editor/IEditor;I)V

    return-void
.end method

.method public setUnderline(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->f:Lcom/onegravity/rteditor/RTManager;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->UNDERLINE:Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onegravity/rteditor/RTManager;->onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v0, Lcom/onegravity/rteditor/effects/Effects;->UNDERLINE:Lcom/onegravity/rteditor/effects/Effect;

    const-string v1, "UNDERLINE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->applyEffectForAll(Lcom/onegravity/rteditor/RTEditText;Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public showEditorView()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/rsj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rsj;-><init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startEdit(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 5
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

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->l:Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getPlainTextLen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->setOriginContentLen(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/TextAlignType;->Companion:Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getAlignType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/textbox/data/TextAlignType$Companion;->toTextAlignment(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getFontSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getLineHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/onegravity/rteditor/RTEditText;->setRichTextEditing(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->g:Lcom/onegravity/rteditor/RTEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/usj;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/usj;-><init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->getEditForAll()Z

    move-result p2

    invoke-virtual {p0, v2, p2}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->enableEdit(ZZ)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public supportMultiTextOrientation()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->supportMultiTextOrientation(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Z

    move-result p0

    return p0
.end method

.method public supportRenderCache()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor$DefaultImpls;->supportRenderCache(Lcom/onyx/android/sdk/textbox/editor/IEditor;)Z

    move-result p0

    return p0
.end method
