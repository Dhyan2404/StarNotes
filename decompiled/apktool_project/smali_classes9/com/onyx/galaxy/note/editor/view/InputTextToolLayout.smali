.class public final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 d2\u00020\u0001:\u0001dB\u001d\u0008\u0016\u0012\u0006\u0010]\u001a\u00020\\\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010^\u00a2\u0006\u0004\u0008`\u0010aB\'\u0008\u0017\u0012\u0006\u0010]\u001a\u00020\\\u0012\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010^\u0012\u0008\u0008\u0002\u0010b\u001a\u00020\u0013\u00a2\u0006\u0004\u0008`\u0010cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J3\u0010\'\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042!\u0010&\u001a\u001d\u0012\u0013\u0012\u00110\"\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00020!H\u0002J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0002J\u0008\u0010-\u001a\u00020\nH\u0002J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0008\u00100\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0013H\u0002J \u00107\u001a\u00020\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0013H\u0002J\u0008\u00108\u001a\u00020\nH\u0002J\u0010\u00109\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002J \u0010;\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010=\u001a\u00020<2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0002J\u000e\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0AH\u0002J\u000e\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DJ\u000e\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020GJ\u0006\u0010J\u001a\u00020GJ\u0006\u0010K\u001a\u00020\u0002J\u0006\u0010L\u001a\u00020\u0002J\u0010\u0010N\u001a\u00020\u00022\u0006\u0010?\u001a\u00020MH\u0007R\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010W\u001a\u00020G8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010[\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010\u001d\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "t",
        "Landroid/view/View;",
        "view",
        "w",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "currentFont",
        "A",
        "",
        "fontFace",
        "v",
        "setEditorFontInfo",
        "N",
        "M",
        "l",
        "r",
        "o",
        "",
        "step",
        "n",
        "size",
        "y",
        "p",
        "C",
        "D",
        "E",
        "H",
        "I",
        "G",
        "alignType",
        "F",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "selected",
        "block",
        "B",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "textStyle",
        "Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;",
        "styleInfo",
        "P",
        "getTextStyleFontFace",
        "J",
        "L",
        "u",
        "color",
        "m",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;",
        "colorLayout",
        "originColor",
        "colorIndex",
        "x",
        "s",
        "O",
        "currentType",
        "K",
        "Landroid/widget/ListPopupWindow;",
        "q",
        "",
        "event",
        "z",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;",
        "getTextInputConfig",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditorBundle",
        "Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;",
        "helper",
        "setTextInputHelper",
        "getTextInputHelper",
        "active",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;",
        "onUpdateTextInputMenuEvent",
        "Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;",
        "e",
        "Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;",
        "binding",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;",
        "inputHelper",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "i",
        "selectColor",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_SIZE_CHANGE_STEP:I = 0x1


# instance fields
.field public e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

.field public f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

.field public h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->Companion:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    const/high16 p1, -0x1000000

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    .line 4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    const/high16 p1, -0x1000000

    .line 8
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->t()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->r(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$changeColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->m(I)V

    return-void
.end method

.method public static final synthetic access$formatTextSpacing(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getInputHelper$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    return-object p0
.end method

.method public static final synthetic access$getSelectColor$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    return p0
.end method

.method public static final synthetic access$getTextInputConfig(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTextStyle$p(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public static final synthetic access$getTextStyleFontFace(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextStyleFontFace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFontFaceChanged(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$pickColor(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->x(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V

    return-void
.end method

.method public static final synthetic access$postAndSaveTextSize(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->y(I)V

    return-void
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$showTextFontListPopup(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->A(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public static final synthetic access$updateTextSpacingView(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->O(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->o(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->w(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->H(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->l(Landroid/view/View;)V

    return-void
.end method

.method private final getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTextInputConfigOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method

.method private final getTextStyleFontFace()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$getTextStyleFontFace$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$getTextStyleFontFace$1;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$getTextStyleFontFace$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$getTextStyleFontFace$2;

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->takeIf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->G(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->E(Landroid/view/View;)V

    return-void
.end method

.method private final setEditorFontInfo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontInfoAction;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontInfoAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$b;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 10

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->createDefault()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p1

    :cond_0
    move-object v3, p1

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const-string v7, "binding"

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_1
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->tvFontName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v9, "tvFontName"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_2

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$showTextFontListPopup$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$showTextFontListPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->setItemSelectedListener(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->setMaxFontPopupHeight()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez p0, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v8, p0

    :goto_1
    iget-object p0, v8, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->tvFontName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/TextFontListPopup;->show(Landroid/view/View;)V

    return-void
.end method

.method public final B(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final C(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextBold$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextBold$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->B(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextItalic$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextItalic$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->B(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final E(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->B(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final F(I)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/TextAlignEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextAlignEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->z(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->J(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$triggerTextAlign$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$triggerTextAlign$1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final G(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->F(I)V

    return-void
.end method

.method public final H(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->F(I)V

    return-void
.end method

.method public final I(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->F(I)V

    return-void
.end method

.method public final J(I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "textAlignLeft"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->K(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignCenter:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "textAlignCenter"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->K(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignRight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "textAlignRight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->K(Landroid/view/View;II)V

    return-void
.end method

.method public final K(Landroid/view/View;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getHasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getTextColor()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorViewSelection(I)V

    return-void
.end method

.method public final M()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->N(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFontFace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$2;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$3;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->takeIf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$4;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateFontFaceView$text$4;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->ifEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->tvFontName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final O(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSpacing:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->line_space_format:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final P(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textBold:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textItalic:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textUnderline:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSizeInPt()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->J(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->O(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->L(Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getFontFamily()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateView$typeface$1;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$updateView$typeface$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->ifEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->N(Ljava/lang/String;)V

    return-void
.end method

.method public final active()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    if-nez p0, :cond_1

    const-string p0, "inputHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->destroy()V

    return-void
.end method

.method public final getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    if-nez p0, :cond_0

    const-string p0, "inputHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->n(I)V

    return-void
.end method

.method public final m(I)V
    .locals 3

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeColor$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeColor$1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    if-nez p0, :cond_0

    const-string p0, "inputHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->postChangeShapeAttributesEvent(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    return-void
.end method

.method public final n(I)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$integer;->font_size_min:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    sget v2, Lcom/onyx/android/sdk/note/R$integer;->font_size_max:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSizeInPt()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    add-int/2addr v2, p1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->y(I)V

    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$integer;->font_size_min:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/note/R$integer;->font_size_max:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSizeLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "textSizeLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSizeInPt()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setValueText(Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSize$1;-><init>(IILcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setProgressChangeListener(Lkotlin/jvm/functions/Function3;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSizeInPt()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setBound(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;->showLeftAbove()V

    return-void
.end method

.method public final onUpdateTextInputMenuEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateTextInputMenuEvent;->getStyleInfo()Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->P(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->O(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$fraction;->font_line_spacing_min:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    sget v1, Lcom/onyx/android/sdk/note/R$fraction;->font_line_spacing_max:I

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSpacing:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "textSpacing"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setValueText(Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;

    invoke-direct {v2, p0, v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$changeTextSpacing$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setProgressChangeListener(Lkotlin/jvm/functions/Function3;)V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;->setBound(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;->showLeftAbove()V

    return-void
.end method

.method public final q(Landroid/view/View;)Landroid/widget/ListPopupWindow;
    .locals 1

    new-instance p0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    return-object p0
.end method

.method public final r(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->n(I)V

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setTextInputHelper(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    return-void
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "14"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->tvFontName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/cli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textBold:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/fli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/fli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textItalic:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/gli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/gli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textUnderline:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/hli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/hli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignLeft:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/ili;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ili;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignRight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/jli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/jli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textAlignCenter:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/kli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/kli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSizeAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/lli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/lli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSizeDecrease:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/mli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/dli;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSpacing:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/eli;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eli;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->M()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->u()V

    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setShape(I)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getColor()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->i:I

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->updateColorViewSelection(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$initColorLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->setEditorFontInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->N(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->tvFontName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontModelsAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontModelsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final x(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;II)V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    sget-object v8, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->EDIT_TEXT:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;->getViewColors()Ljava/util/List;

    move-result-object v10

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v10}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;IILcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final y(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSizeInPt(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutInputTextToolBinding;->textSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    if-nez p1, :cond_1

    const-string p1, "inputHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextSizeEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSizeEvent;-><init>(F)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->postEvent(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputConfig()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$postAndSaveTextSize$1;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$postAndSaveTextSize$1;-><init>(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->g:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    if-nez p0, :cond_0

    const-string p0, "inputHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
