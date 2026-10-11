.class public final Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u00a2\u0006\u0004\u00087\u00108J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u000c\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00103\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010-\u001a\u0004\u00083\u0010/\"\u0004\u00084\u00101\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;",
        "m",
        "request",
        "l",
        "n",
        "",
        "o",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "j",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTouchPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "getNotePage",
        "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "setNotePage",
        "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V",
        "",
        "k",
        "Z",
        "getCreateNew",
        "()Z",
        "setCreateNew",
        "(Z)V",
        "createNew",
        "isHitTestSelectedShapes",
        "setHitTestSelectedShapes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:Z

.field public notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

.field public shape:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static final synthetic access$afterHitTest(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->l(Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hitTestShape(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateNotePageInfo(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->o(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNotePageAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCreateNew()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->k:Z

    return p0
.end method

.method public final getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "notePage"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "shape"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isHitTestSelectedShapes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->l:Z

    return p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;->getHitTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->setShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->j:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTextInputConfigOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;->setInputConfig(Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;)Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->k:Z

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;->setCreateNew(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findVisibleBoxInfoByNotePageId(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$updateNotePageIfNeed$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$updateNotePageIfNeed$1;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$updateNotePageIfNeed$2;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$updateNotePageIfNeed$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->setNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    return-void
.end method

.method public final setCreateNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->k:Z

    return-void
.end method

.method public final setHitTestSelectedShapes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->l:Z

    return-void
.end method

.method public final setNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-void
.end method

.method public final setShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method
