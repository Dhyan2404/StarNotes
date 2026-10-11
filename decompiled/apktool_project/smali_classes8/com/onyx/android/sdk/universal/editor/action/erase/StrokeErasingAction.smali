.class public final Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B9\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0014\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\"\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001fR\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;",
        "m",
        "request",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "changedShapeBean",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "l",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "eraseContext",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "j",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "eraseArgs",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V",
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

.field public final i:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseArgs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->j:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p6, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->m:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    return-void
.end method

.method public static final synthetic access$deleteShapes(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->l(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$erasing(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$erasingReferenceShapes(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->n(Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEraseContext$p(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    return-object p0
.end method

.method public static final synthetic access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;->setRender(Z)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;-><init>(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->m:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->h:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->j:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->l:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->setNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "just(...)"

    if-eqz v2, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->getEraseRect()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2, p1, v4}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->isOutside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v1, "map(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$erasingReferenceShapes$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$erasingReferenceShapes$2;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$erasingReferenceShapes$3;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$erasingReferenceShapes$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-static {p1, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
