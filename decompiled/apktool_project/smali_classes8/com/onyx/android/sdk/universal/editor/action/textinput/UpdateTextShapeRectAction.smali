.class public final Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateTextShapeRectAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n766#2:264\n857#2,2:265\n1#3:267\n*S KotlinDebug\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n*L\n179#1:264\n179#1:265,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010b\u001a\u00020a\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010?\u001a\u00020<\u0012\u0006\u00101\u001a\u00020\u0005\u00a2\u0006\u0004\u0008c\u0010dJ\u0008\u0010\u0002\u001a\u00020\u0000H\u0002J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000bJ\u0010\u0010$\u001a\u00020\u00002\u0008\u0010#\u001a\u0004\u0018\u00010\"J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000bJ\u0010\u0010(\u001a\u00020\u00002\u0008\u0010\'\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010+\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)J\u0010\u0010-\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u0011J\u000e\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.J\u0010\u00102\u001a\u00020\u00002\u0008\u00101\u001a\u0004\u0018\u00010\u0005J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0003H\u0014R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u00101\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010BR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010BR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010CR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010CR\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010DR\u0016\u0010 \u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010ER\u0016\u0010F\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010GR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010LR\u0016\u0010N\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010BR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\"\u0010X\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010A\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\"\u0010`\u001a\u00020Y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "w",
        "Lio/reactivex/rxjava3/core/Observable;",
        "t",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "v",
        "",
        "u",
        "l",
        "m",
        "",
        "p",
        "q",
        "r",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "",
        "pageId",
        "o",
        "n",
        "Landroid/graphics/RectF;",
        "s",
        "renderRect",
        "setRenderRect",
        "editorRect",
        "setEditorRect",
        "",
        "textWidth",
        "setTextWidth",
        "textHeight",
        "setTextHeight",
        "saveShape",
        "setSaveShape",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "transformType",
        "setTransformType",
        "value",
        "setUpdateRectOnly",
        "boxInfo",
        "setVirtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "shapeTransformBean",
        "setShapeTransformBean",
        "richText",
        "setLastRichText",
        "Landroid/graphics/Matrix;",
        "mtx",
        "setLastShapeMatrix",
        "shape",
        "setOriginShape",
        "create",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "h",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "j",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "k",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Landroid/graphics/RectF;",
        "F",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "Z",
        "updateRectOnly",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "Ljava/lang/String;",
        "lastRichText",
        "Landroid/graphics/Matrix;",
        "lastShapeMatrix",
        "lastShapeRect",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "x",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "lastShapeStyle",
        "y",
        "getSavedShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setSavedShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "savedShape",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "z",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "getCompositeCommand",
        "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "setCompositeCommand",
        "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V",
        "compositeCommand",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nUpdateTextShapeRectAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n766#2:264\n857#2,2:265\n1#3:267\n*S KotlinDebug\n*F\n+ 1 UpdateTextShapeRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction\n*L\n179#1:264\n179#1:265,2\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:F

.field public o:F

.field public p:Lcom/onyx/android/sdk/textbox/data/TransformType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field public s:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textBoxView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->i:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->j:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->w:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->y:Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance p1, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method

.method public static final synthetic access$getShape$p(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public static final synthetic access$renderTextShapeByEditor(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->t()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveShape(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->u()V

    return-void
.end method

.method public static final synthetic access$transformShape(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->w()Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-object p0
.end method

.method public final getSavedShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->y:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->j:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->o(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/command/AddTextShapeRichTextCommandAction$Companion;->buildRichTextCommand(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    return-void
.end method

.method public final m()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;

    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->v:Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->x:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand$Infos;-><init>(Lkotlin/Pair;Lkotlin/Pair;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/note/common/command/TransformDirectlyCommand;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->s:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->s:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_4
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object v1
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->w:Landroid/graphics/RectF;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->approximatelyTheSame(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->u:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final s()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->m:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->n()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->normalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final setCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method

.method public final setEditorRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->m:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setLastRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final setLastShapeMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mtx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->v:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setOriginShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->w:Landroid/graphics/RectF;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->x:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public final setRenderRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setSaveShape(Z)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q:Z

    return-object p0
.end method

.method public final setSavedShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->y:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public final setShapeTransformBean(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeTransformBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-object p0
.end method

.method public final setTextHeight(F)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->o:F

    return-object p0
.end method

.method public final setTextWidth(F)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->n:F

    return-object p0
.end method

.method public final setTransformType(Lcom/onyx/android/sdk/textbox/data/TransformType;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->p:Lcom/onyx/android/sdk/textbox/data/TransformType;

    return-object p0
.end method

.method public final setUpdateRectOnly(Z)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->r:Z

    return-object p0
.end method

.method public final setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->s:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final t()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidthInt()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeightInt()I

    move-result v1

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->supportRenderCache()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v2, v3, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->isRenderCacheExists(Lcom/onyx/android/sdk/note/common/shape/Shape;II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->h:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->setTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->i:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;->setRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/textbox/action/RenderTextShapeByEditorAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final u()V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setVisible(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/HtmlUtils;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/HtmlUtils;->getHtmlTextContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->clearCache(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->m()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->l()V

    :cond_3
    return-void
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q:Z

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->t:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v7, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/note/extension/ShapeKt;->setVisible(Ljava/util/List;Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    :cond_5
    new-instance v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setUseAddTransformedMethod(Z)V

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->i:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->getRemovedShapes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->addRemoveShapeList(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->setAddToCmdStack(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->z:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->setQuitCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->i:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setRenderRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->s()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setEditorRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->n:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setTextWidth(F)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->o:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setTextHeight(F)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->q:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setSaveShape(Z)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->p:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setTransformType(Lcom/onyx/android/sdk/textbox/data/TransformType;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;->r:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->setUpdateRectOnly(Z)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-object p0
.end method
